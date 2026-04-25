begin;

create or replace function aiworker.fn_log_smoke_flow_execution(
  p_flow_code text,
  p_result_code text,
  p_note_text text,
  p_executed_by text
)
returns bigint
language plpgsql
as $$
declare
  v_id bigint;
begin
  insert into aiworker.smoke_flow_execution_log (
    flow_code,
    result_code,
    note_text,
    executed_at,
    executed_by
  )
  values (
    p_flow_code,
    p_result_code,
    p_note_text,
    now(),
    coalesce(p_executed_by, 'SYSTEM')
  )
  returning smoke_flow_execution_log_id into v_id;

  return v_id;
end;
$$;

create or replace function aiworker.fn_prepare_smoke_assignment_reset()
returns void
language plpgsql
as $$
declare
  v_now timestamptz := now();
begin
  update aiworker.worker_assignment_state
     set effective_to = v_now,
         updated_at = v_now
   where worker_id = '71000000-0000-0000-0000-000000001001'::uuid
     and effective_to is null;

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
    aiworker.fn_generate_uuid(),
    '71000000-0000-0000-0000-000000001001'::uuid,
    '71000000-0000-0000-0000-000000000101'::uuid,
    '71000000-0000-0000-0000-000000000201'::uuid,
    'aiworker_smoke_scope',
    null,
    'UNASSIGNED',
    'OFFICIAL_REQUEST',
    v_now,
    null,
    v_now
  );

  update aiworker.worker_availability_state
     set effective_to = v_now,
         updated_at = v_now
   where worker_id = '71000000-0000-0000-0000-000000001001'::uuid
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
    '71000000-0000-0000-0000-000000001001'::uuid,
    'AVAILABLE',
    1,
    'LOW',
    v_now,
    null,
    v_now
  );

  update aiworker.official_intake_request
     set intake_status = 'READY_TO_APPLY',
         applied_at = null,
         submitted_at = v_now
   where intake_id = '71000000-0000-0000-0000-000000003104'::uuid;
end;
$$;

commit;
