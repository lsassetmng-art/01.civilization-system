begin;

create or replace function aiworker.fn_apply_worker_growth_event(
  p_intake_id uuid,
  p_actor_type text,
  p_actor_id text,
  p_worker_id uuid,
  p_business_request_id uuid,
  p_gate_code text,
  p_requested_transition_code text,
  p_target_truth_surface text,
  p_payload_ref text,
  p_approval_ticket_id text,
  p_audit_required_flag boolean,
  p_reason_code text,
  p_requested_at timestamptz
)
returns table (
  success_flag boolean,
  result_code text,
  aiworker_status_code text,
  summary_code text,
  state_family_code text,
  old_state_code text,
  new_state_code text,
  related_entity_id uuid,
  event_id uuid,
  emitted_at timestamptz
)
language plpgsql
as $$
declare
  v_now timestamptz := now();
  v_intake aiworker.official_intake_request;
  v_profile aiworker.worker_growth_profile;
  v_growth_event_id uuid := null;
  v_profile_id uuid := null;
  v_event_id uuid := null;
  v_err text := null;
begin
  v_intake := aiworker.fn_prepare_intake_for_apply(
    p_intake_id,
    'aiworker.fn_apply_worker_growth_event',
    'aiworker.worker_growth_event'
  );

  if p_gate_code is null then
    raise exception 'ERR_GATE_REQUIRED';
  end if;

  perform aiworker.fn_assert_worker_mutable(p_worker_id, false);

  select *
    into v_profile
    from aiworker.worker_growth_profile
   where worker_id = p_worker_id;

  if not found then
    v_profile_id := aiworker.fn_generate_uuid();
    insert into aiworker.worker_growth_profile (
      worker_growth_profile_id,
      worker_id,
      growth_level,
      stability_score,
      recovery_learning_score,
      suggestion_effectiveness_score,
      escalation_accuracy_score,
      updated_at
    )
    values (
      v_profile_id,
      p_worker_id,
      0,
      0,
      0,
      0,
      0,
      v_now
    );
  else
    v_profile_id := v_profile.worker_growth_profile_id;
    update aiworker.worker_growth_profile
       set updated_at = v_now
     where worker_growth_profile_id = v_profile_id;
  end if;

  v_growth_event_id := aiworker.fn_generate_uuid();

  insert into aiworker.worker_growth_event (
    worker_growth_event_id,
    worker_id,
    growth_event_type,
    event_score_delta,
    summary_code,
    occurred_at,
    recorded_at
  )
  values (
    v_growth_event_id,
    p_worker_id,
    coalesce(p_requested_transition_code, 'GENERIC'),
    0,
    coalesce(p_reason_code, 'SUM_APPLIED'),
    v_now,
    v_now
  );

  v_event_id := aiworker.fn_insert_event_outbox(
    'AIWORKER_RESULT_SUMMARY_READY',
    'aiworker',
    'worker_growth_event',
    v_growth_event_id::text,
    p_business_request_id,
    p_worker_id,
    'SUM_APPLIED',
    p_payload_ref
  );

  perform aiworker.fn_insert_result_correlation(
    p_intake_id,
    p_business_request_id,
    p_worker_id,
    v_growth_event_id,
    v_event_id,
    'aiworker.fn_apply_worker_growth_event',
    'OK_APPLIED',
    'SUM_APPLIED'
  );

  update aiworker.official_intake_request
     set intake_status = 'APPLIED',
         applied_at = v_now
   where intake_id = p_intake_id;

  return query
  select
    true,
    'OK_APPLIED',
    'APPLIED',
    'SUM_APPLIED',
    'GROWTH',
    null::text,
    coalesce(p_requested_transition_code, 'GENERIC'),
    v_growth_event_id,
    v_event_id,
    v_now;

exception
  when others then
    get stacked diagnostics v_err = message_text;
    perform aiworker.fn_mark_intake_status(
      p_intake_id,
      aiworker.fn_failure_intake_status_from_error(v_err)
    );

    return query
    select
      false,
      case when v_err like 'ERR_%' then v_err else 'ERR_INTERNAL_WRITE_FAILED' end,
      aiworker.fn_failure_intake_status_from_error(case when v_err like 'ERR_%' then v_err else 'ERR_INTERNAL_WRITE_FAILED' end),
      aiworker.fn_summary_code_from_error(case when v_err like 'ERR_%' then v_err else 'ERR_INTERNAL_WRITE_FAILED' end),
      'GROWTH',
      null::text,
      coalesce(p_requested_transition_code, 'GENERIC'),
      null::uuid,
      null::uuid,
      null::timestamptz;
end;
$$;

create or replace function aiworker.fn_apply_worker_privileged_context_change(
  p_intake_id uuid,
  p_actor_type text,
  p_actor_id text,
  p_worker_id uuid,
  p_business_request_id uuid,
  p_gate_code text,
  p_requested_transition_code text,
  p_target_truth_surface text,
  p_payload_ref text,
  p_approval_ticket_id text,
  p_audit_required_flag boolean,
  p_reason_code text,
  p_requested_at timestamptz
)
returns table (
  success_flag boolean,
  result_code text,
  aiworker_status_code text,
  summary_code text,
  state_family_code text,
  old_state_code text,
  new_state_code text,
  related_entity_id uuid,
  event_id uuid,
  emitted_at timestamptz
)
language plpgsql
as $$
declare
  v_now timestamptz := now();
  v_intake aiworker.official_intake_request;
  v_old_state text := 'INACTIVE';
  v_new_state text := 'ACTIVE';
  v_profile_id uuid := null;
  v_event_id uuid := null;
  v_existing aiworker.worker_privileged_profile;
  v_err text := null;
begin
  v_intake := aiworker.fn_prepare_intake_for_apply(
    p_intake_id,
    'aiworker.fn_apply_worker_privileged_context_change',
    'aiworker.worker_privileged_profile'
  );

  if p_gate_code <> 'GATE_PRIVILEGED' then
    raise exception 'ERR_GATE_DENIED';
  end if;

  perform aiworker.fn_assert_worker_mutable(p_worker_id, false);

  select *
    into v_existing
    from aiworker.worker_privileged_profile
   where worker_id = p_worker_id
   order by updated_at desc
   limit 1;

  if found and v_existing.active_flag then
    v_old_state := 'ACTIVE';
  else
    v_old_state := 'INACTIVE';
  end if;

  if coalesce(p_requested_transition_code, 'ACTIVATE') in ('DEACTIVATE', 'DISABLE', 'REVOKE', 'INACTIVE') then
    v_new_state := 'INACTIVE';
  else
    v_new_state := 'ACTIVE';
  end if;

  if not aiworker.fn_transition_allowed('PRIVILEGED_CONTEXT', v_old_state, v_new_state) then
    raise exception 'ERR_ILLEGAL_TRANSITION';
  end if;

  if found then
    v_profile_id := v_existing.worker_privileged_profile_id;

    update aiworker.worker_privileged_profile
       set privileged_context_code = coalesce(v_existing.privileged_context_code, coalesce(p_reason_code, 'DEFAULT_CONTEXT')),
           privileged_gate_code = p_gate_code,
           active_flag = (v_new_state = 'ACTIVE'),
           updated_at = v_now
     where worker_privileged_profile_id = v_profile_id;
  else
    v_profile_id := aiworker.fn_generate_uuid();

    insert into aiworker.worker_privileged_profile (
      worker_privileged_profile_id,
      worker_id,
      privileged_context_code,
      privileged_gate_code,
      active_flag,
      updated_at
    )
    values (
      v_profile_id,
      p_worker_id,
      coalesce(p_reason_code, 'DEFAULT_CONTEXT'),
      p_gate_code,
      (v_new_state = 'ACTIVE'),
      v_now
    );
  end if;

  perform aiworker.fn_insert_state_change_log(
    p_worker_id,
    'PRIVILEGED_CONTEXT',
    v_old_state,
    v_new_state,
    coalesce(p_reason_code, 'PRIVILEGED_CONTEXT_CHANGE'),
    coalesce(p_actor_id, p_actor_type, 'SYSTEM'),
    v_now
  );

  v_event_id := aiworker.fn_insert_event_outbox(
    'AIWORKER_ESCALATION_REQUIRED',
    'aiworker',
    'worker_privileged_profile',
    v_profile_id::text,
    p_business_request_id,
    p_worker_id,
    'SUM_APPLIED',
    p_payload_ref
  );

  perform aiworker.fn_insert_result_correlation(
    p_intake_id,
    p_business_request_id,
    p_worker_id,
    v_profile_id,
    v_event_id,
    'aiworker.fn_apply_worker_privileged_context_change',
    'OK_APPLIED',
    'SUM_APPLIED'
  );

  update aiworker.official_intake_request
     set intake_status = 'APPLIED',
         applied_at = v_now
   where intake_id = p_intake_id;

  return query
  select
    true,
    'OK_APPLIED',
    'APPLIED',
    'SUM_APPLIED',
    'PRIVILEGED_CONTEXT',
    v_old_state,
    v_new_state,
    v_profile_id,
    v_event_id,
    v_now;

exception
  when others then
    get stacked diagnostics v_err = message_text;
    perform aiworker.fn_mark_intake_status(
      p_intake_id,
      aiworker.fn_failure_intake_status_from_error(v_err)
    );

    return query
    select
      false,
      case when v_err like 'ERR_%' then v_err else 'ERR_INTERNAL_WRITE_FAILED' end,
      aiworker.fn_failure_intake_status_from_error(case when v_err like 'ERR_%' then v_err else 'ERR_INTERNAL_WRITE_FAILED' end),
      aiworker.fn_summary_code_from_error(case when v_err like 'ERR_%' then v_err else 'ERR_INTERNAL_WRITE_FAILED' end),
      'PRIVILEGED_CONTEXT',
      v_old_state,
      v_new_state,
      null::uuid,
      null::uuid,
      null::timestamptz;
end;
$$;

create or replace function aiworker.fn_apply_worker_tendency_update(
  p_intake_id uuid,
  p_actor_type text,
  p_actor_id text,
  p_worker_id uuid,
  p_business_request_id uuid,
  p_gate_code text,
  p_requested_transition_code text,
  p_target_truth_surface text,
  p_payload_ref text,
  p_approval_ticket_id text,
  p_audit_required_flag boolean,
  p_reason_code text,
  p_requested_at timestamptz
)
returns table (
  success_flag boolean,
  result_code text,
  aiworker_status_code text,
  summary_code text,
  state_family_code text,
  old_state_code text,
  new_state_code text,
  related_entity_id uuid,
  event_id uuid,
  emitted_at timestamptz
)
language plpgsql
as $$
begin
  perform aiworker.fn_mark_intake_status(p_intake_id, 'FAILED');

  return query
  select
    false,
    'ERR_PAYLOAD_INVALID',
    'FAILED',
    'SUM_VALIDATION_FAILED',
    'TENDENCY',
    null::text,
    null::text,
    null::uuid,
    null::uuid,
    null::timestamptz;
end;
$$;

create or replace function aiworker.fn_record_business_result_correlation(
  p_intake_id uuid,
  p_actor_type text,
  p_actor_id text,
  p_worker_id uuid,
  p_business_request_id uuid,
  p_gate_code text,
  p_requested_transition_code text,
  p_target_truth_surface text,
  p_payload_ref text,
  p_approval_ticket_id text,
  p_audit_required_flag boolean,
  p_reason_code text,
  p_requested_at timestamptz
)
returns table (
  success_flag boolean,
  result_code text,
  aiworker_status_code text,
  summary_code text,
  state_family_code text,
  old_state_code text,
  new_state_code text,
  related_entity_id uuid,
  event_id uuid,
  emitted_at timestamptz
)
language plpgsql
as $$
declare
  v_now timestamptz := now();
begin
  if p_business_request_id is null then
    return query
    select
      false,
      'ERR_CORRELATION_MISSING',
      'FAILED',
      'SUM_VALIDATION_FAILED',
      'CORRELATION',
      null::text,
      null::text,
      null::uuid,
      null::uuid,
      null::timestamptz;
    return;
  end if;

  perform aiworker.fn_insert_result_correlation(
    p_intake_id,
    p_business_request_id,
    p_worker_id,
    null::uuid,
    null::uuid,
    'aiworker.fn_record_business_result_correlation',
    'OK_APPLIED',
    'SUM_APPLIED'
  );

  return query
  select
    true,
    'OK_APPLIED',
    'APPLIED',
    'SUM_APPLIED',
    'CORRELATION',
    null::text,
    null::text,
    null::uuid,
    null::uuid,
    v_now;
end;
$$;

commit;
