begin;

create or replace function aiworker.fn_generate_uuid()
returns uuid
language sql
volatile
as $$
  with s as (
    select md5(random()::text || clock_timestamp()::text || random()::text) as h
  )
  select (
    substr(h,1,8) || '-' ||
    substr(h,9,4) || '-' ||
    substr(h,13,4) || '-' ||
    substr(h,17,4) || '-' ||
    substr(h,21,12)
  )::uuid
  from s
$$;

create or replace function aiworker.fn_mark_intake_status(
  p_intake_id uuid,
  p_new_status text
)
returns void
language plpgsql
as $$
begin
  update aiworker.official_intake_request
     set intake_status = p_new_status
   where intake_id = p_intake_id;
end;
$$;

create or replace function aiworker.fn_failure_intake_status_from_error(
  p_error_code text
)
returns text
language sql
immutable
as $$
  select case
    when p_error_code = 'ERR_GATE_DENIED' then 'GATE_DENIED'
    when p_error_code = 'ERR_APPROVAL_REQUIRED' then 'APPROVAL_PENDING'
    when p_error_code = 'ERR_AUDIT_REQUIRED' then 'AUDIT_PENDING'
    when p_error_code = 'ERR_ILLEGAL_TRANSITION' then 'REJECTED'
    when p_error_code = 'ERR_INTAKE_NOT_FOUND' then 'FAILED'
    when p_error_code = 'ERR_FUNCTION_CODE_MISMATCH' then 'REJECTED'
    when p_error_code = 'ERR_INVALID_TARGET_SURFACE' then 'REJECTED'
    when p_error_code = 'ERR_WORKER_NOT_FOUND' then 'FAILED'
    when p_error_code = 'ERR_WORKER_SUSPENDED' then 'FAILED'
    when p_error_code = 'ERR_WORKER_RETIRED' then 'FAILED'
    when p_error_code = 'ERR_PAYLOAD_INVALID' then 'FAILED'
    when p_error_code = 'ERR_CORRELATION_MISSING' then 'FAILED'
    else 'FAILED'
  end
$$;

create or replace function aiworker.fn_summary_code_from_error(
  p_error_code text
)
returns text
language sql
immutable
as $$
  select case
    when p_error_code = 'ERR_GATE_DENIED' then 'SUM_GATE_DENIED'
    when p_error_code = 'ERR_APPROVAL_REQUIRED' then 'SUM_APPROVAL_REQUIRED'
    when p_error_code = 'ERR_AUDIT_REQUIRED' then 'SUM_AUDIT_REQUIRED'
    when p_error_code = 'ERR_ILLEGAL_TRANSITION' then 'SUM_ILLEGAL_TRANSITION'
    when p_error_code = 'ERR_WORKER_NOT_FOUND' then 'SUM_WORKER_NOT_ELIGIBLE'
    when p_error_code = 'ERR_WORKER_SUSPENDED' then 'SUM_WORKER_NOT_ELIGIBLE'
    when p_error_code = 'ERR_WORKER_RETIRED' then 'SUM_WORKER_NOT_ELIGIBLE'
    when p_error_code = 'ERR_PAYLOAD_INVALID' then 'SUM_VALIDATION_FAILED'
    when p_error_code = 'ERR_CORRELATION_MISSING' then 'SUM_VALIDATION_FAILED'
    when p_error_code = 'ERR_FUNCTION_CODE_MISMATCH' then 'SUM_VALIDATION_FAILED'
    when p_error_code = 'ERR_INVALID_TARGET_SURFACE' then 'SUM_VALIDATION_FAILED'
    when p_error_code = 'ERR_INTAKE_NOT_FOUND' then 'SUM_INTERNAL_ERROR'
    else 'SUM_INTERNAL_ERROR'
  end
$$;

create or replace function aiworker.fn_prepare_intake_for_apply(
  p_intake_id uuid,
  p_controlled_function_code text,
  p_target_truth_surface text
)
returns aiworker.official_intake_request
language plpgsql
as $$
declare
  v_intake aiworker.official_intake_request;
begin
  select *
    into v_intake
    from aiworker.official_intake_request
   where intake_id = p_intake_id
   for update;

  if not found then
    raise exception 'ERR_INTAKE_NOT_FOUND';
  end if;

  if v_intake.controlled_function_code <> p_controlled_function_code then
    raise exception 'ERR_FUNCTION_CODE_MISMATCH';
  end if;

  if v_intake.target_truth_surface <> p_target_truth_surface then
    raise exception 'ERR_INVALID_TARGET_SURFACE';
  end if;

  if v_intake.intake_status not in (
    'RECEIVED',
    'VALIDATING',
    'APPROVAL_PENDING',
    'AUDIT_PENDING',
    'READY_TO_APPLY'
  ) then
    raise exception 'ERR_INTERNAL_WRITE_FAILED';
  end if;

  update aiworker.official_intake_request
     set intake_status = 'VALIDATING'
   where intake_id = p_intake_id;

  select *
    into v_intake
    from aiworker.official_intake_request
   where intake_id = p_intake_id;

  return v_intake;
end;
$$;

create or replace function aiworker.fn_assert_worker_mutable(
  p_worker_id uuid,
  p_allow_recovery boolean default false
)
returns aiworker.worker_master
language plpgsql
as $$
declare
  v_worker aiworker.worker_master;
begin
  select *
    into v_worker
    from aiworker.worker_master
   where worker_id = p_worker_id;

  if not found then
    raise exception 'ERR_WORKER_NOT_FOUND';
  end if;

  if v_worker.retired_flag then
    raise exception 'ERR_WORKER_RETIRED';
  end if;

  if v_worker.suspended_flag and not p_allow_recovery then
    raise exception 'ERR_WORKER_SUSPENDED';
  end if;

  return v_worker;
end;
$$;

create or replace function aiworker.fn_transition_allowed(
  p_state_family_code text,
  p_old_state_code text,
  p_new_state_code text
)
returns boolean
language sql
stable
as $$
  select exists (
    select 1
      from aiworker.state_transition_rule str
     where str.state_family_code = p_state_family_code
       and (
         (str.old_state_code is null and p_old_state_code is null)
         or str.old_state_code = p_old_state_code
       )
       and str.new_state_code = p_new_state_code
       and str.active_flag = true
  )
$$;

create or replace function aiworker.fn_insert_state_change_log(
  p_worker_id uuid,
  p_state_family_code text,
  p_old_state_code text,
  p_new_state_code text,
  p_change_reason_code text,
  p_changed_by text,
  p_changed_at timestamptz
)
returns void
language plpgsql
as $$
begin
  insert into aiworker.worker_state_change_log (
    worker_state_change_log_id,
    worker_id,
    state_family_code,
    old_state_code,
    new_state_code,
    change_reason_code,
    changed_at,
    changed_by
  )
  values (
    aiworker.fn_generate_uuid(),
    p_worker_id,
    p_state_family_code,
    p_old_state_code,
    p_new_state_code,
    p_change_reason_code,
    p_changed_at,
    p_changed_by
  );
end;
$$;

create or replace function aiworker.fn_insert_event_outbox(
  p_event_type text,
  p_source_system text,
  p_source_entity_type text,
  p_source_entity_id text,
  p_related_business_request_id uuid,
  p_related_worker_id uuid,
  p_summary_code text,
  p_payload_ref text
)
returns uuid
language plpgsql
as $$
declare
  v_event_id uuid;
begin
  v_event_id := aiworker.fn_generate_uuid();

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
    emitted_at
  )
  values (
    v_event_id,
    p_event_type,
    p_source_system,
    p_source_entity_type,
    p_source_entity_id,
    p_related_business_request_id,
    p_related_worker_id,
    p_summary_code,
    p_payload_ref,
    now()
  );

  return v_event_id;
end;
$$;

create or replace function aiworker.fn_insert_result_correlation(
  p_intake_id uuid,
  p_business_request_id uuid,
  p_worker_id uuid,
  p_related_entity_id uuid,
  p_event_id uuid,
  p_controlled_function_code text,
  p_result_code text,
  p_summary_code text
)
returns void
language plpgsql
as $$
begin
  insert into aiworker.result_correlation (
    intake_id,
    business_request_id,
    worker_id,
    related_entity_id,
    event_id,
    controlled_function_code,
    result_code,
    summary_code
  )
  values (
    p_intake_id,
    p_business_request_id,
    p_worker_id,
    p_related_entity_id,
    p_event_id,
    p_controlled_function_code,
    p_result_code,
    p_summary_code
  )
  on conflict (intake_id) do update
    set business_request_id = excluded.business_request_id,
        worker_id = excluded.worker_id,
        related_entity_id = excluded.related_entity_id,
        event_id = excluded.event_id,
        controlled_function_code = excluded.controlled_function_code,
        result_code = excluded.result_code,
        summary_code = excluded.summary_code;
end;
$$;

commit;
