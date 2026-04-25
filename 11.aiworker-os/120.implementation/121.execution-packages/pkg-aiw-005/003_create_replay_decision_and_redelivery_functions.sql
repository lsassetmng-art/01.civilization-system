begin;

create or replace function aiworker.fn_decide_replay_request(
  p_request_hash text,
  p_business_request_id uuid,
  p_worker_id uuid,
  p_target_truth_surface text,
  p_controlled_function_code text,
  p_requested_transition_code text,
  p_payload_version text,
  p_payload_ref text,
  p_requested_at timestamptz,
  p_actor_type text,
  p_actor_id text
)
returns table (
  replay_decision_code text,
  result_code text,
  existing_intake_id uuid,
  existing_related_entity_id uuid,
  existing_event_id uuid,
  redelivery_allowed_flag boolean,
  review_required_flag boolean,
  decided_at timestamptz
)
language plpgsql
as $$
declare
  v_now timestamptz := now();
  v_lineage_key text;
  v_existing aiworker.request_lineage_registry;
  v_existing_payload_hash text;
  v_new_payload_hash text;
  v_existing_related_entity_id uuid := null;
  v_existing_intake_status text := null;
  v_decision_code text := null;
  v_result_code text := null;
  v_redelivery_allowed boolean := false;
  v_review_required boolean := false;
begin
  if coalesce(p_request_hash, '') = '' then
    raise exception 'ERR_REPLAY_LINEAGE_NOT_FOUND';
  end if;

  v_lineage_key := aiworker.fn_make_lineage_key(
    p_request_hash,
    p_target_truth_surface,
    p_controlled_function_code,
    p_worker_id,
    p_requested_transition_code,
    p_payload_version
  );

  v_new_payload_hash := aiworker.fn_get_payload_hash(p_payload_ref);

  select *
    into v_existing
    from aiworker.request_lineage_registry
   where lineage_key = v_lineage_key;

  if not found then
    perform aiworker.fn_log_replay_decision(
      p_request_hash,
      p_business_request_id,
      p_worker_id,
      p_target_truth_surface,
      p_controlled_function_code,
      'APPLY_NEW',
      null::uuid,
      null::uuid,
      'NO_PRIOR_LINEAGE',
      coalesce(p_actor_id, p_actor_type, 'SYSTEM')
    );

    return query
    select
      'APPLY_NEW',
      'OK_APPLY_NEW',
      null::uuid,
      null::uuid,
      null::uuid,
      false,
      false,
      v_now;
    return;
  end if;

  v_existing_payload_hash := v_existing.payload_hash;

  if coalesce(v_existing_payload_hash, '') <> coalesce(v_new_payload_hash, '') then
    perform aiworker.fn_log_replay_decision(
      p_request_hash,
      p_business_request_id,
      p_worker_id,
      p_target_truth_surface,
      p_controlled_function_code,
      'REJECT_REPLAY_MISMATCH',
      v_existing.intake_id,
      v_existing.last_event_id,
      'PAYLOAD_HASH_MISMATCH',
      coalesce(p_actor_id, p_actor_type, 'SYSTEM')
    );

    return query
    select
      'REJECT_REPLAY_MISMATCH',
      'ERR_REPLAY_MISMATCH',
      v_existing.intake_id,
      null::uuid,
      v_existing.last_event_id,
      false,
      false,
      v_now;
    return;
  end if;

  if v_existing.intake_id is not null then
    select oir.intake_status
      into v_existing_intake_status
      from aiworker.official_intake_request oir
     where oir.intake_id = v_existing.intake_id;
  end if;

  if coalesce(v_existing_intake_status, '') in (
    'RECEIVED',
    'VALIDATING',
    'APPROVAL_PENDING',
    'AUDIT_PENDING',
    'READY_TO_APPLY',
    'APPLYING'
  ) then
    perform aiworker.fn_log_replay_decision(
      p_request_hash,
      p_business_request_id,
      p_worker_id,
      p_target_truth_surface,
      p_controlled_function_code,
      'BLOCK_NONTERMINAL_INTAKE',
      v_existing.intake_id,
      v_existing.last_event_id,
      'NONTERMINAL_INTAKE_EXISTS',
      coalesce(p_actor_id, p_actor_type, 'SYSTEM')
    );

    return query
    select
      'BLOCK_NONTERMINAL_INTAKE',
      'ERR_NONTERMINAL_INTAKE_EXISTS',
      v_existing.intake_id,
      null::uuid,
      v_existing.last_event_id,
      false,
      false,
      v_now;
    return;
  end if;

  if v_existing.canonical_applied_flag then
    if v_existing.last_event_id is not null then
      v_decision_code := 'REDELIVER_RESULT_ONLY';
      v_result_code := 'OK_REDELIVER_RESULT_ONLY';
      v_redelivery_allowed := true;
    else
      v_decision_code := 'NOOP_ALREADY_APPLIED';
      v_result_code := 'OK_NOOP_ALREADY_APPLIED';
      v_redelivery_allowed := false;
    end if;

    select rc.related_entity_id
      into v_existing_related_entity_id
      from aiworker.result_correlation rc
     where rc.intake_id = v_existing.intake_id;

    perform aiworker.fn_log_replay_decision(
      p_request_hash,
      p_business_request_id,
      p_worker_id,
      p_target_truth_surface,
      p_controlled_function_code,
      v_decision_code,
      v_existing.intake_id,
      v_existing.last_event_id,
      'PRIOR_APPLY_EXISTS',
      coalesce(p_actor_id, p_actor_type, 'SYSTEM')
    );

    return query
    select
      v_decision_code,
      v_result_code,
      v_existing.intake_id,
      v_existing_related_entity_id,
      v_existing.last_event_id,
      v_redelivery_allowed,
      false,
      v_now;
    return;
  end if;

  if coalesce(v_existing.replay_outcome_code, '') in ('REJECT_REPLAY_MISMATCH', 'REQUIRE_REVIEW') then
    v_decision_code := 'REQUIRE_REVIEW';
    v_result_code := 'ERR_REPLAY_EQUIVALENCE_UNCLEAR';
    v_review_required := true;
  else
    v_decision_code := 'APPLY_NEW';
    v_result_code := 'OK_APPLY_NEW';
  end if;

  perform aiworker.fn_log_replay_decision(
    p_request_hash,
    p_business_request_id,
    p_worker_id,
    p_target_truth_surface,
    p_controlled_function_code,
    v_decision_code,
    v_existing.intake_id,
    v_existing.last_event_id,
    'TERMINAL_NONAPPLIED_PRIOR_EXISTS',
    coalesce(p_actor_id, p_actor_type, 'SYSTEM')
  );

  return query
  select
    v_decision_code,
    v_result_code,
    v_existing.intake_id,
    null::uuid,
    v_existing.last_event_id,
    false,
    v_review_required,
    v_now;
end;
$$;

create or replace function aiworker.fn_redeliver_result_for_request_hash(
  p_request_hash text,
  p_actor_id text
)
returns uuid
language plpgsql
as $$
declare
  v_existing aiworker.request_lineage_registry;
  v_new_event_id uuid;
begin
  select *
    into v_existing
    from aiworker.request_lineage_registry rlr
   where rlr.request_hash = p_request_hash
   order by rlr.updated_at desc
   limit 1;

  if not found then
    raise exception 'ERR_REPLAY_LINEAGE_NOT_FOUND';
  end if;

  if not v_existing.canonical_applied_flag or v_existing.last_event_id is null then
    raise exception 'ERR_REDELIVERY_NOT_ALLOWED';
  end if;

  v_new_event_id := aiworker.fn_clone_event_outbox_for_redelivery(v_existing.last_event_id);

  update aiworker.request_lineage_registry
     set last_event_id = v_new_event_id,
         replay_outcome_code = 'REDELIVER_RESULT_ONLY',
         updated_at = now()
   where lineage_key = v_existing.lineage_key;

  perform aiworker.fn_log_replay_decision(
    v_existing.request_hash,
    v_existing.business_request_id,
    v_existing.worker_id,
    v_existing.target_truth_surface,
    v_existing.controlled_function_code,
    'REDELIVER_RESULT_ONLY',
    v_existing.intake_id,
    v_new_event_id,
    'MANUAL_REDELIVERY',
    coalesce(p_actor_id, 'SYSTEM')
  );

  return v_new_event_id;
end;
$$;

commit;
