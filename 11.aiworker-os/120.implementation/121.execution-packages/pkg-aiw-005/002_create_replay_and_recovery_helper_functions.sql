begin;

create or replace function aiworker.fn_make_lineage_key(
  p_request_hash text,
  p_target_truth_surface text,
  p_controlled_function_code text,
  p_worker_id uuid,
  p_requested_transition_code text,
  p_payload_version text
)
returns text
language sql
immutable
as $$
  select md5(
    coalesce(p_request_hash, '') || '|' ||
    coalesce(p_target_truth_surface, '') || '|' ||
    coalesce(p_controlled_function_code, '') || '|' ||
    coalesce(p_worker_id::text, '') || '|' ||
    coalesce(p_requested_transition_code, '') || '|' ||
    coalesce(p_payload_version, '')
  )
$$;

create or replace function aiworker.fn_get_payload_hash(
  p_payload_ref text
)
returns text
language sql
stable
as $$
  select pd.payload_hash
    from aiworker.payload_document pd
   where pd.payload_ref = p_payload_ref
$$;

create or replace function aiworker.fn_log_replay_decision(
  p_request_hash text,
  p_business_request_id uuid,
  p_worker_id uuid,
  p_target_truth_surface text,
  p_controlled_function_code text,
  p_replay_decision_code text,
  p_prior_intake_id uuid,
  p_prior_event_id uuid,
  p_decision_reason_code text,
  p_decided_by text
)
returns void
language plpgsql
as $$
begin
  insert into aiworker.replay_decision_log (
    request_hash,
    business_request_id,
    worker_id,
    target_truth_surface,
    controlled_function_code,
    replay_decision_code,
    prior_intake_id,
    prior_event_id,
    decision_reason_code,
    decided_at,
    decided_by
  )
  values (
    p_request_hash,
    p_business_request_id,
    p_worker_id,
    p_target_truth_surface,
    p_controlled_function_code,
    p_replay_decision_code,
    p_prior_intake_id,
    p_prior_event_id,
    p_decision_reason_code,
    now(),
    coalesce(p_decided_by, 'SYSTEM')
  );
end;
$$;

create or replace function aiworker.fn_register_request_lineage(
  p_request_hash text,
  p_business_request_id uuid,
  p_worker_id uuid,
  p_target_truth_surface text,
  p_controlled_function_code text,
  p_requested_transition_code text,
  p_payload_version text,
  p_payload_ref text,
  p_intake_id uuid,
  p_replay_outcome_code text,
  p_canonical_applied_flag boolean,
  p_last_event_id uuid
)
returns text
language plpgsql
as $$
declare
  v_lineage_key text;
  v_payload_hash text;
begin
  v_lineage_key := aiworker.fn_make_lineage_key(
    p_request_hash,
    p_target_truth_surface,
    p_controlled_function_code,
    p_worker_id,
    p_requested_transition_code,
    p_payload_version
  );

  v_payload_hash := aiworker.fn_get_payload_hash(p_payload_ref);

  insert into aiworker.request_lineage_registry (
    lineage_key,
    request_hash,
    business_request_id,
    worker_id,
    target_truth_surface,
    controlled_function_code,
    requested_transition_code,
    payload_version,
    payload_ref,
    payload_hash,
    intake_id,
    replay_outcome_code,
    canonical_applied_flag,
    last_event_id,
    created_at,
    updated_at
  )
  values (
    v_lineage_key,
    p_request_hash,
    p_business_request_id,
    p_worker_id,
    p_target_truth_surface,
    p_controlled_function_code,
    p_requested_transition_code,
    p_payload_version,
    p_payload_ref,
    v_payload_hash,
    p_intake_id,
    p_replay_outcome_code,
    p_canonical_applied_flag,
    p_last_event_id,
    now(),
    now()
  )
  on conflict (lineage_key) do update
    set business_request_id = excluded.business_request_id,
        payload_ref = excluded.payload_ref,
        payload_hash = excluded.payload_hash,
        intake_id = excluded.intake_id,
        replay_outcome_code = excluded.replay_outcome_code,
        canonical_applied_flag = excluded.canonical_applied_flag,
        last_event_id = excluded.last_event_id,
        updated_at = now();

  return v_lineage_key;
end;
$$;

create or replace function aiworker.fn_clone_event_outbox_for_redelivery(
  p_existing_event_id uuid
)
returns uuid
language plpgsql
as $$
declare
  v_existing aiworker.event_outbox;
  v_new_event_id uuid;
begin
  select *
    into v_existing
    from aiworker.event_outbox
   where event_id = p_existing_event_id;

  if not found then
    raise exception 'ERR_REDELIVERY_NOT_ALLOWED';
  end if;

  v_new_event_id := aiworker.fn_generate_uuid();

  insert into aiworker.event_outbox (
    event_id,
    event_type,
    source_system,
    source_entity_type,
    source_entity_id,
    related_business_request_id,
    related_worker_id,
    summary_code,
    payload_ref,
    emitted_at,
    delivered_at
  )
  values (
    v_new_event_id,
    v_existing.event_type,
    v_existing.source_system,
    v_existing.source_entity_type,
    v_existing.source_entity_id,
    v_existing.related_business_request_id,
    v_existing.related_worker_id,
    v_existing.summary_code,
    v_existing.payload_ref,
    now(),
    null
  );

  return v_new_event_id;
end;
$$;

create or replace function aiworker.fn_open_recovery_incident(
  p_recovery_family_code text,
  p_note_text text,
  p_opened_by text
)
returns uuid
language plpgsql
as $$
declare
  v_recovery_incident_id uuid;
begin
  v_recovery_incident_id := aiworker.fn_generate_uuid();

  insert into aiworker.recovery_incident (
    recovery_incident_id,
    incident_code,
    recovery_family_code,
    incident_status_code,
    note_text,
    opened_at,
    opened_by
  )
  values (
    v_recovery_incident_id,
    'INC-' || replace(v_recovery_incident_id::text, '-', ''),
    p_recovery_family_code,
    'OPEN',
    p_note_text,
    now(),
    coalesce(p_opened_by, 'SYSTEM')
  );

  return v_recovery_incident_id;
end;
$$;

create or replace function aiworker.fn_log_recovery_execution(
  p_recovery_incident_id uuid,
  p_execution_phase_code text,
  p_dry_run_flag boolean,
  p_result_code text,
  p_affected_row_count integer,
  p_note_text text,
  p_executed_by text
)
returns void
language plpgsql
as $$
begin
  insert into aiworker.recovery_execution_log (
    recovery_incident_id,
    execution_phase_code,
    dry_run_flag,
    result_code,
    affected_row_count,
    note_text,
    executed_at,
    executed_by
  )
  values (
    p_recovery_incident_id,
    p_execution_phase_code,
    coalesce(p_dry_run_flag, true),
    p_result_code,
    p_affected_row_count,
    p_note_text,
    now(),
    coalesce(p_executed_by, 'SYSTEM')
  );
end;
$$;

commit;
