begin;

create or replace function aiworker.fn_log_restricted_privileged_smoke(
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
  insert into aiworker.restricted_privileged_smoke_log (
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
  returning restricted_privileged_smoke_log_id into v_id;

  return v_id;
end;
$$;

create or replace function aiworker.fn_prepare_privileged_smoke_reset()
returns void
language plpgsql
as $$
begin
  update aiworker.worker_privileged_profile
     set active_flag = false,
         updated_at = now()
   where worker_id = '71000000-0000-0000-0000-000000001002'::uuid;

  update aiworker.official_intake_request
     set intake_status = 'READY_TO_APPLY',
         applied_at = null,
         submitted_at = now()
   where intake_id = '72000000-0000-0000-0000-000000003104'::uuid;
end;
$$;

create or replace function aiworker.fn_run_privileged_context_smoke(
  p_executed_by text
)
returns table (
  flow_code text,
  result_code text,
  note_text text
)
language plpgsql
as $$
declare
  v_success boolean;
  v_result_code text;
  v_aiworker_status_code text;
  v_summary_code text;
  v_state_family_code text;
  v_old_state_code text;
  v_new_state_code text;
  v_related_entity_id uuid;
  v_event_id uuid;
  v_emitted_at timestamptz;
begin
  perform aiworker.fn_prepare_privileged_smoke_reset();

  select
    r.success_flag,
    r.result_code,
    r.aiworker_status_code,
    r.summary_code,
    r.state_family_code,
    r.old_state_code,
    r.new_state_code,
    r.related_entity_id,
    r.event_id,
    r.emitted_at
    into
    v_success,
    v_result_code,
    v_aiworker_status_code,
    v_summary_code,
    v_state_family_code,
    v_old_state_code,
    v_new_state_code,
    v_related_entity_id,
    v_event_id,
    v_emitted_at
  from aiworker.fn_apply_worker_privileged_context_change(
    '72000000-0000-0000-0000-000000003104'::uuid,
    'SYSTEM',
    coalesce(p_executed_by, 'SYSTEM'),
    '71000000-0000-0000-0000-000000001002'::uuid,
    '72000000-0000-0000-0000-000000003001'::uuid,
    'GATE_PRIVILEGED',
    'ACTIVATE',
    'aiworker.worker_privileged_profile',
    'SMOKE_PRIV_INTAKE_V1',
    null,
    false,
    'SMOKE_PRIVILEGED_CONTEXT',
    now()
  ) as r;

  perform aiworker.fn_log_restricted_privileged_smoke(
    'PRIVILEGED_CONTEXT_SMOKE',
    case when v_success then 'PASS' else 'FAIL' end,
    coalesce(v_result_code, 'UNKNOWN'),
    coalesce(p_executed_by, 'SYSTEM')
  );

  return query
  select
    'PRIVILEGED_CONTEXT_SMOKE',
    case when v_success then 'PASS' else 'FAIL' end,
    coalesce(v_result_code, 'UNKNOWN');
end;
$$;

create or replace function aiworker.fn_run_restricted_boundary_smoke(
  p_executed_by text
)
returns table (
  flow_code text,
  result_code text,
  note_text text
)
language plpgsql
as $$
declare
  v_policy_exists boolean;
  v_exception_exists boolean;
  v_restricted_has_policy_select boolean;
  v_privileged_has_policy_select boolean;
  v_restricted_has_privileged_select boolean;
  v_pass boolean;
begin
  select exists(
    select 1
      from aiworker.worker_restricted_handling_policy
     where worker_id = '71000000-0000-0000-0000-000000001002'::uuid
  ) into v_policy_exists;

  select exists(
    select 1
      from aiworker.worker_exception_control_state
     where worker_id = '71000000-0000-0000-0000-000000001002'::uuid
       and closed_at is null
  ) into v_exception_exists;

  select has_table_privilege('role_aiw_restricted_reviewer','aiworker.worker_restricted_handling_policy','select')
    into v_restricted_has_policy_select;

  select has_table_privilege('role_aiw_privileged_reviewer','aiworker.worker_restricted_handling_policy','select')
    into v_privileged_has_policy_select;

  select has_table_privilege('role_aiw_restricted_reviewer','aiworker.worker_privileged_profile','select')
    into v_restricted_has_privileged_select;

  v_pass := v_policy_exists
            and v_exception_exists
            and v_restricted_has_policy_select
            and (not v_privileged_has_policy_select)
            and (not v_restricted_has_privileged_select);

  perform aiworker.fn_log_restricted_privileged_smoke(
    'RESTRICTED_BOUNDARY_SMOKE',
    case when v_pass then 'PASS' else 'FAIL' end,
    case
      when v_pass then 'Restricted boundary checks passed'
      else 'Restricted boundary checks failed'
    end,
    coalesce(p_executed_by, 'SYSTEM')
  );

  return query
  select
    'RESTRICTED_BOUNDARY_SMOKE',
    case when v_pass then 'PASS' else 'FAIL' end,
    case
      when v_pass then 'Restricted boundary checks passed'
      else 'Restricted boundary checks failed'
    end;
end;
$$;

create or replace function aiworker.fn_run_restricted_privileged_smoke_suite(
  p_executed_by text
)
returns table (
  flow_code text,
  result_code text,
  note_text text
)
language plpgsql
as $$
declare
  v_priv_pass boolean;
  v_restricted_pass boolean;
  v_priv_result_code text;
  v_priv_note_text text;
  v_restricted_result_code text;
  v_restricted_note_text text;
begin
  select (r.result_code = 'PASS'), r.result_code, r.note_text
    into v_priv_pass, v_priv_result_code, v_priv_note_text
  from aiworker.fn_run_privileged_context_smoke(coalesce(p_executed_by, 'SYSTEM')) as r;

  return query
  select 'PRIVILEGED_CONTEXT_SMOKE', v_priv_result_code, v_priv_note_text;

  select (r.result_code = 'PASS'), r.result_code, r.note_text
    into v_restricted_pass, v_restricted_result_code, v_restricted_note_text
  from aiworker.fn_run_restricted_boundary_smoke(coalesce(p_executed_by, 'SYSTEM')) as r;

  return query
  select 'RESTRICTED_BOUNDARY_SMOKE', v_restricted_result_code, v_restricted_note_text;

  perform aiworker.fn_log_restricted_privileged_smoke(
    'RESTRICTED_PRIVILEGED_SMOKE_OVERALL',
    case when v_priv_pass and v_restricted_pass then 'PASS' else 'FAIL' end,
    case
      when v_priv_pass and v_restricted_pass then 'Restricted and privileged smoke suite passed'
      else 'Restricted and privileged smoke suite failed'
    end,
    coalesce(p_executed_by, 'SYSTEM')
  );

  return query
  select
    'RESTRICTED_PRIVILEGED_SMOKE_OVERALL',
    case when v_priv_pass and v_restricted_pass then 'PASS' else 'FAIL' end,
    case
      when v_priv_pass and v_restricted_pass then 'Restricted and privileged smoke suite passed'
      else 'Restricted and privileged smoke suite failed'
    end;
end;
$$;

commit;
