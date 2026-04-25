begin;

create or replace function aiworker.fn_apply_worker_assignment_state(
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
  v_worker aiworker.worker_master;
  v_current aiworker.worker_assignment_state;
  v_old_state text := null;
  v_new_assignment_id uuid := null;
  v_event_id uuid := null;
  v_err text := null;
begin
  v_intake := aiworker.fn_prepare_intake_for_apply(
    p_intake_id,
    'aiworker.fn_apply_worker_assignment_state',
    'aiworker.worker_assignment_state'
  );

  if p_gate_code is null then
    raise exception 'ERR_GATE_REQUIRED';
  end if;

  if p_gate_code not in ('GATE_STANDARD', 'GATE_APPROVAL_REQUIRED', 'GATE_AUDIT_REQUIRED') then
    raise exception 'ERR_GATE_DENIED';
  end if;

  if v_intake.approval_ticket_id is not null and coalesce(p_approval_ticket_id, v_intake.approval_ticket_id) is null then
    raise exception 'ERR_APPROVAL_REQUIRED';
  end if;

  if coalesce(v_intake.audit_required_flag, false) and not coalesce(p_audit_required_flag, false) then
    raise exception 'ERR_AUDIT_REQUIRED';
  end if;

  v_worker := aiworker.fn_assert_worker_mutable(p_worker_id, false);

  select *
    into v_current
    from aiworker.worker_assignment_state
   where worker_id = p_worker_id
     and effective_to is null
   order by effective_from desc
   limit 1;

  v_old_state := v_current.assignment_state_code;

  if not aiworker.fn_transition_allowed('ASSIGNMENT', v_old_state, p_requested_transition_code) then
    raise exception 'ERR_ILLEGAL_TRANSITION';
  end if;

  update aiworker.worker_assignment_state
     set effective_to = v_now,
         updated_at = v_now
   where worker_id = p_worker_id
     and effective_to is null;

  v_new_assignment_id := aiworker.fn_generate_uuid();

  insert into aiworker.worker_assignment_state (
    worker_assignment_state_id,
    worker_id,
    tenant_company_id,
    tenant_user_id,
    assigned_app_scope_code,
    assigned_project_id,
    assignment_state_code,
    assignment_lane_scope_code,
    effective_from,
    effective_to,
    updated_at
  )
  values (
    v_new_assignment_id,
    p_worker_id,
    v_current.tenant_company_id,
    v_current.tenant_user_id,
    v_current.assigned_app_scope_code,
    v_current.assigned_project_id,
    p_requested_transition_code,
    coalesce(v_current.assignment_lane_scope_code, 'OFFICIAL_REQUEST'),
    v_now,
    null,
    v_now
  );

  insert into aiworker.worker_assignment_history (
    worker_assignment_history_id,
    worker_id,
    tenant_company_id,
    tenant_user_id,
    app_scope_code,
    assignment_state_code,
    started_at,
    ended_at,
    recorded_at
  )
  values (
    aiworker.fn_generate_uuid(),
    p_worker_id,
    v_current.tenant_company_id,
    v_current.tenant_user_id,
    v_current.assigned_app_scope_code,
    p_requested_transition_code,
    v_now,
    null,
    v_now
  );

  perform aiworker.fn_insert_state_change_log(
    p_worker_id,
    'ASSIGNMENT',
    v_old_state,
    p_requested_transition_code,
    coalesce(p_reason_code, 'ASSIGNMENT_STATE_CHANGE'),
    coalesce(p_actor_id, p_actor_type, 'SYSTEM'),
    v_now
  );

  v_event_id := aiworker.fn_insert_event_outbox(
    'AIWORKER_ASSIGNMENT_DECIDED',
    'aiworker',
    'worker_assignment_state',
    v_new_assignment_id::text,
    p_business_request_id,
    p_worker_id,
    'SUM_APPLIED',
    p_payload_ref
  );

  perform aiworker.fn_insert_result_correlation(
    p_intake_id,
    p_business_request_id,
    p_worker_id,
    v_new_assignment_id,
    v_event_id,
    'aiworker.fn_apply_worker_assignment_state',
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
    'ASSIGNMENT',
    v_old_state,
    p_requested_transition_code,
    v_new_assignment_id,
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
      'ASSIGNMENT',
      v_old_state,
      p_requested_transition_code,
      null::uuid,
      null::uuid,
      null::timestamptz;
end;
$$;

create or replace function aiworker.fn_apply_worker_availability_state(
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
  v_worker aiworker.worker_master;
  v_current aiworker.worker_availability_state;
  v_old_state text := null;
  v_new_availability_id uuid := null;
  v_event_id uuid := null;
  v_err text := null;
begin
  v_intake := aiworker.fn_prepare_intake_for_apply(
    p_intake_id,
    'aiworker.fn_apply_worker_availability_state',
    'aiworker.worker_availability_state'
  );

  if p_gate_code is null then
    raise exception 'ERR_GATE_REQUIRED';
  end if;

  if p_gate_code not in ('GATE_STANDARD', 'GATE_APPROVAL_REQUIRED', 'GATE_AUDIT_REQUIRED') then
    raise exception 'ERR_GATE_DENIED';
  end if;

  if v_intake.approval_ticket_id is not null and coalesce(p_approval_ticket_id, v_intake.approval_ticket_id) is null then
    raise exception 'ERR_APPROVAL_REQUIRED';
  end if;

  if coalesce(v_intake.audit_required_flag, false) and not coalesce(p_audit_required_flag, false) then
    raise exception 'ERR_AUDIT_REQUIRED';
  end if;

  v_worker := aiworker.fn_assert_worker_mutable(p_worker_id, false);

  select *
    into v_current
    from aiworker.worker_availability_state
   where worker_id = p_worker_id
     and effective_to is null
   order by effective_from desc
   limit 1;

  v_old_state := v_current.availability_state_code;

  if not aiworker.fn_transition_allowed('AVAILABILITY', v_old_state, p_requested_transition_code) then
    raise exception 'ERR_ILLEGAL_TRANSITION';
  end if;

  update aiworker.worker_availability_state
     set effective_to = v_now,
         updated_at = v_now
   where worker_id = p_worker_id
     and effective_to is null;

  v_new_availability_id := aiworker.fn_generate_uuid();

  insert into aiworker.worker_availability_state (
    worker_availability_state_id,
    worker_id,
    availability_state_code,
    concurrent_capacity,
    current_load_band_code,
    effective_from,
    effective_to,
    updated_at
  )
  values (
    v_new_availability_id,
    p_worker_id,
    p_requested_transition_code,
    coalesce(v_current.concurrent_capacity, 1),
    coalesce(v_current.current_load_band_code, 'UNSPECIFIED'),
    v_now,
    null,
    v_now
  );

  perform aiworker.fn_insert_state_change_log(
    p_worker_id,
    'AVAILABILITY',
    v_old_state,
    p_requested_transition_code,
    coalesce(p_reason_code, 'AVAILABILITY_STATE_CHANGE'),
    coalesce(p_actor_id, p_actor_type, 'SYSTEM'),
    v_now
  );

  v_event_id := aiworker.fn_insert_event_outbox(
    'AIWORKER_EXECUTION_STATE_CHANGED',
    'aiworker',
    'worker_availability_state',
    v_new_availability_id::text,
    p_business_request_id,
    p_worker_id,
    'SUM_APPLIED',
    p_payload_ref
  );

  perform aiworker.fn_insert_result_correlation(
    p_intake_id,
    p_business_request_id,
    p_worker_id,
    v_new_availability_id,
    v_event_id,
    'aiworker.fn_apply_worker_availability_state',
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
    'AVAILABILITY',
    v_old_state,
    p_requested_transition_code,
    v_new_availability_id,
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
      'AVAILABILITY',
      v_old_state,
      p_requested_transition_code,
      null::uuid,
      null::uuid,
      null::timestamptz;
end;
$$;

create or replace function aiworker.fn_apply_worker_repair_transition(
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
  v_old_state text := null;
  v_new_repair_id uuid := null;
  v_event_id uuid := null;
  v_err text := null;
begin
  v_intake := aiworker.fn_prepare_intake_for_apply(
    p_intake_id,
    'aiworker.fn_apply_worker_repair_transition',
    'aiworker.worker_repair_history'
  );

  if p_gate_code <> 'GATE_REPAIR' then
    raise exception 'ERR_GATE_DENIED';
  end if;

  perform aiworker.fn_assert_worker_mutable(p_worker_id, true);

  select wrh.repair_state_code
    into v_old_state
    from aiworker.worker_repair_history wrh
   where wrh.worker_id = p_worker_id
   order by wrh.recorded_at desc
   limit 1;

  if not aiworker.fn_transition_allowed('REPAIR', v_old_state, p_requested_transition_code) then
    raise exception 'ERR_ILLEGAL_TRANSITION';
  end if;

  v_new_repair_id := aiworker.fn_generate_uuid();

  insert into aiworker.worker_repair_history (
    worker_repair_history_id,
    worker_id,
    repair_ticket_code,
    repair_state_code,
    repair_reason_code,
    opened_at,
    closed_at,
    recorded_at
  )
  values (
    v_new_repair_id,
    p_worker_id,
    coalesce(p_reason_code, 'REPAIR_TICKET'),
    p_requested_transition_code,
    coalesce(p_reason_code, 'REPAIR_REASON'),
    v_now,
    case when p_requested_transition_code in ('COMPLETED', 'CANCELLED') then v_now else null end,
    v_now
  );

  if p_requested_transition_code in ('OPENED', 'IN_PROGRESS') then
    update aiworker.worker_availability_state
       set effective_to = v_now,
           updated_at = v_now
     where worker_id = p_worker_id
       and effective_to is null;

    insert into aiworker.worker_availability_state (
      worker_availability_state_id,
      worker_id,
      availability_state_code,
      concurrent_capacity,
      current_load_band_code,
      effective_from,
      effective_to,
      updated_at
    )
    values (
      aiworker.fn_generate_uuid(),
      p_worker_id,
      'REPAIR',
      1,
      'UNSPECIFIED',
      v_now,
      null,
      v_now
    );
  end if;

  perform aiworker.fn_insert_state_change_log(
    p_worker_id,
    'REPAIR',
    v_old_state,
    p_requested_transition_code,
    coalesce(p_reason_code, 'REPAIR_STATE_CHANGE'),
    coalesce(p_actor_id, p_actor_type, 'SYSTEM'),
    v_now
  );

  v_event_id := aiworker.fn_insert_event_outbox(
    'AIWORKER_REPAIR_STATE_CHANGED',
    'aiworker',
    'worker_repair_history',
    v_new_repair_id::text,
    p_business_request_id,
    p_worker_id,
    'SUM_APPLIED',
    p_payload_ref
  );

  perform aiworker.fn_insert_result_correlation(
    p_intake_id,
    p_business_request_id,
    p_worker_id,
    v_new_repair_id,
    v_event_id,
    'aiworker.fn_apply_worker_repair_transition',
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
    'REPAIR',
    v_old_state,
    p_requested_transition_code,
    v_new_repair_id,
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
      'REPAIR',
      v_old_state,
      p_requested_transition_code,
      null::uuid,
      null::uuid,
      null::timestamptz;
end;
$$;

create or replace function aiworker.fn_apply_worker_rebuild_transition(
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
  v_old_state text := null;
  v_new_rebuild_id uuid := null;
  v_event_id uuid := null;
  v_err text := null;
begin
  v_intake := aiworker.fn_prepare_intake_for_apply(
    p_intake_id,
    'aiworker.fn_apply_worker_rebuild_transition',
    'aiworker.worker_rebuild_history'
  );

  if p_gate_code <> 'GATE_REBUILD' then
    raise exception 'ERR_GATE_DENIED';
  end if;

  perform aiworker.fn_assert_worker_mutable(p_worker_id, true);

  select wrh.rebuild_state_code
    into v_old_state
    from aiworker.worker_rebuild_history wrh
   where wrh.worker_id = p_worker_id
   order by wrh.recorded_at desc
   limit 1;

  if not aiworker.fn_transition_allowed('REBUILD', v_old_state, p_requested_transition_code) then
    raise exception 'ERR_ILLEGAL_TRANSITION';
  end if;

  v_new_rebuild_id := aiworker.fn_generate_uuid();

  insert into aiworker.worker_rebuild_history (
    worker_rebuild_history_id,
    worker_id,
    rebuild_ticket_code,
    rebuild_state_code,
    rebuild_reason_code,
    opened_at,
    closed_at,
    recorded_at
  )
  values (
    v_new_rebuild_id,
    p_worker_id,
    coalesce(p_reason_code, 'REBUILD_TICKET'),
    p_requested_transition_code,
    coalesce(p_reason_code, 'REBUILD_REASON'),
    v_now,
    case when p_requested_transition_code in ('COMPLETED', 'CANCELLED') then v_now else null end,
    v_now
  );

  if p_requested_transition_code in ('OPENED', 'IN_PROGRESS') then
    update aiworker.worker_availability_state
       set effective_to = v_now,
           updated_at = v_now
     where worker_id = p_worker_id
       and effective_to is null;

    insert into aiworker.worker_availability_state (
      worker_availability_state_id,
      worker_id,
      availability_state_code,
      concurrent_capacity,
      current_load_band_code,
      effective_from,
      effective_to,
      updated_at
    )
    values (
      aiworker.fn_generate_uuid(),
      p_worker_id,
      'REBUILD',
      1,
      'UNSPECIFIED',
      v_now,
      null,
      v_now
    );
  end if;

  perform aiworker.fn_insert_state_change_log(
    p_worker_id,
    'REBUILD',
    v_old_state,
    p_requested_transition_code,
    coalesce(p_reason_code, 'REBUILD_STATE_CHANGE'),
    coalesce(p_actor_id, p_actor_type, 'SYSTEM'),
    v_now
  );

  v_event_id := aiworker.fn_insert_event_outbox(
    'AIWORKER_REBUILD_STATE_CHANGED',
    'aiworker',
    'worker_rebuild_history',
    v_new_rebuild_id::text,
    p_business_request_id,
    p_worker_id,
    'SUM_APPLIED',
    p_payload_ref
  );

  perform aiworker.fn_insert_result_correlation(
    p_intake_id,
    p_business_request_id,
    p_worker_id,
    v_new_rebuild_id,
    v_event_id,
    'aiworker.fn_apply_worker_rebuild_transition',
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
    'REBUILD',
    v_old_state,
    p_requested_transition_code,
    v_new_rebuild_id,
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
      'REBUILD',
      v_old_state,
      p_requested_transition_code,
      null::uuid,
      null::uuid,
      null::timestamptz;
end;
$$;

commit;
