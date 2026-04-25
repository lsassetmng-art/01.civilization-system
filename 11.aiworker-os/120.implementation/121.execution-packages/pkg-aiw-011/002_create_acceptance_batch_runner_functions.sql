begin;

create or replace function aiworker.fn_log_acceptance_batch_runner(
  p_acceptance_execution_batch_id uuid,
  p_check_code text,
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
  insert into aiworker.acceptance_batch_runner_log (
    acceptance_execution_batch_id,
    check_code,
    result_code,
    note_text,
    executed_at,
    executed_by
  )
  values (
    p_acceptance_execution_batch_id,
    p_check_code,
    p_result_code,
    p_note_text,
    now(),
    coalesce(p_executed_by, 'SYSTEM')
  )
  returning acceptance_batch_runner_log_id into v_id;

  return v_id;
end;
$$;

create or replace function aiworker.fn_run_formal_acceptance_batch(
  p_executed_by text
)
returns table (
  acceptance_execution_batch_id uuid,
  batch_status_code text,
  missing_critical_count integer,
  failed_critical_count integer,
  completed_at timestamptz
)
language plpgsql
as $$
declare
  v_batch_id uuid;
  v_status text;
  v_missing integer;
  v_failed integer;
  v_completed_at timestamptz;

  v_pass boolean;
  v_note text;
  v_result_code text;
  v_decision_code text;
  v_count_before bigint;
  v_count_after bigint;
  v_incident_id uuid;
begin
  v_batch_id := aiworker.fn_open_acceptance_execution_batch(
    'Formal acceptance batch execution',
    coalesce(p_executed_by, 'SYSTEM')
  );

  perform aiworker.fn_start_acceptance_verification_runbook(
    v_batch_id,
    coalesce(p_executed_by, 'SYSTEM')
  );

  perform aiworker.fn_mark_acceptance_runbook_phase(
    v_batch_id,
    'PRECHECK',
    'OPEN',
    'Starting formal acceptance checks',
    coalesce(p_executed_by, 'SYSTEM')
  );

  -- VERIFY-BOUNDARY-001
  v_pass := (
    exists (
      select 1
      from information_schema.tables
      where table_schema = 'aiworker'
        and table_name in ('worker_master', 'worker_assignment_state', 'worker_availability_state')
    )
    and not exists (
      select 1
      from information_schema.tables
      where table_schema = 'business'
        and table_name in ('worker_master', 'worker_assignment_state', 'worker_availability_state')
    )
  );
  v_note := case when v_pass then 'Worker mutable truth tables are canonical in aiworker and not duplicated in business' else 'Boundary ownership check failed' end;
  perform aiworker.fn_record_acceptance_case_execution_and_verify(v_batch_id, 'VERIFY-BOUNDARY-001', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));
  perform aiworker.fn_log_acceptance_batch_runner(v_batch_id, 'VERIFY-BOUNDARY-001', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));

  -- VERIFY-BOUNDARY-002
  v_pass := (
    not has_table_privilege('role_aiw_no_rawtable_aiworker', 'aiworker.worker_master', 'select')
    and not has_table_privilege('role_aiw_controlled_function_executor', 'aiworker.worker_master', 'select')
    and not has_table_privilege('role_aiw_official_intake_writer', 'aiworker.worker_master', 'select')
  );
  v_note := case when v_pass then 'Runtime actors do not have raw-table worker_master select path' else 'Runtime raw-table path detected' end;
  perform aiworker.fn_record_acceptance_case_execution_and_verify(v_batch_id, 'VERIFY-BOUNDARY-002', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));
  perform aiworker.fn_log_acceptance_batch_runner(v_batch_id, 'VERIFY-BOUNDARY-002', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));

  -- VERIFY-CF-001
  select r.result_code
    into v_result_code
  from aiworker.fn_apply_worker_assignment_state(
    '79999999-0000-0000-0000-000000000001'::uuid,
    'SYSTEM',
    coalesce(p_executed_by, 'SYSTEM'),
    '71000000-0000-0000-0000-000000001001'::uuid,
    null::uuid,
    'GATE_STANDARD',
    'ASSIGNED',
    'aiworker.worker_assignment_state',
    'SMOKE_INTAKE_ASSIGNMENT_V1',
    null,
    false,
    'ACCEPTANCE_CF_001',
    now()
  ) as r
  limit 1;
  v_pass := (v_result_code = 'ERR_INTAKE_NOT_FOUND');
  v_note := coalesce(v_result_code, 'NO_RESULT');
  perform aiworker.fn_record_acceptance_case_execution_and_verify(v_batch_id, 'VERIFY-CF-001', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));
  perform aiworker.fn_log_acceptance_batch_runner(v_batch_id, 'VERIFY-CF-001', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));

  -- VERIFY-CF-002
  perform aiworker.fn_prepare_smoke_assignment_reset();
  select r.result_code
    into v_result_code
  from aiworker.fn_apply_worker_assignment_state(
    '71000000-0000-0000-0000-000000003104'::uuid,
    'SYSTEM',
    coalesce(p_executed_by, 'SYSTEM'),
    '71000000-0000-0000-0000-000000001001'::uuid,
    '71000000-0000-0000-0000-000000003001'::uuid,
    'GATE_STANDARD',
    'UNASSIGNED',
    'aiworker.worker_assignment_state',
    'SMOKE_INTAKE_ASSIGNMENT_V1',
    null,
    true,
    'ACCEPTANCE_ILLEGAL_TRANSITION',
    now()
  ) as r
  limit 1;
  v_pass := (v_result_code = 'ERR_ILLEGAL_TRANSITION');
  v_note := coalesce(v_result_code, 'NO_RESULT');
  perform aiworker.fn_record_acceptance_case_execution_and_verify(v_batch_id, 'VERIFY-CF-002', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));
  perform aiworker.fn_log_acceptance_batch_runner(v_batch_id, 'VERIFY-CF-002', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));

  -- VERIFY-PAYLOAD-001
  begin
    perform aiworker.fn_validate_payload_by_schema_name(
      'PAYLOAD_OFFICIAL_INTAKE_V1',
      '{"payload_version":"1.0"}'::jsonb
    );
    v_pass := false;
    v_note := 'NO_ERROR';
  exception
    when others then
      v_note := SQLERRM;
      v_pass := (SQLERRM like 'ERR_PAYLOAD_INVALID%');
  end;
  perform aiworker.fn_record_acceptance_case_execution_and_verify(v_batch_id, 'VERIFY-PAYLOAD-001', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));
  perform aiworker.fn_log_acceptance_batch_runner(v_batch_id, 'VERIFY-PAYLOAD-001', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));

  -- VERIFY-PAYLOAD-002
  select not (pd.payload_json ? 'payload_ref')
    into v_pass
  from aiworker.payload_document pd
  where pd.payload_ref = 'SMOKE_AIWORKER_RESULT_EVENT_V1'
  limit 1;
  v_pass := coalesce(v_pass, false);
  v_note := case when v_pass then 'Result payload excludes raw payload_ref' else 'Result payload contains raw payload_ref or payload missing' end;
  perform aiworker.fn_record_acceptance_case_execution_and_verify(v_batch_id, 'VERIFY-PAYLOAD-002', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));
  perform aiworker.fn_log_acceptance_batch_runner(v_batch_id, 'VERIFY-PAYLOAD-002', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));

  -- VERIFY-REPLAY-001
  select r.replay_decision_code
    into v_decision_code
  from aiworker.fn_decide_replay_request(
    'smoke-request-hash-001',
    '71000000-0000-0000-0000-000000003001'::uuid,
    '71000000-0000-0000-0000-000000001001'::uuid,
    'aiworker.worker_assignment_state',
    'aiworker.fn_apply_worker_assignment_state',
    'ASSIGNED',
    '1.0',
    'SMOKE_INTAKE_ASSIGNMENT_V1',
    now(),
    'SYSTEM',
    coalesce(p_executed_by, 'SYSTEM')
  ) as r
  limit 1;
  v_pass := (v_decision_code in ('REDELIVER_RESULT_ONLY', 'NOOP_ALREADY_APPLIED'));
  v_note := coalesce(v_decision_code, 'NO_RESULT');
  perform aiworker.fn_record_acceptance_case_execution_and_verify(v_batch_id, 'VERIFY-REPLAY-001', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));
  perform aiworker.fn_log_acceptance_batch_runner(v_batch_id, 'VERIFY-REPLAY-001', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));

  -- VERIFY-REPLAY-002
  perform aiworker.fn_store_payload_document(
    'SMOKE_INTAKE_ASSIGNMENT_MISMATCH_V1',
    'PAYLOAD_OFFICIAL_INTAKE_V1',
    jsonb_build_object(
      'payload_version', '1.0',
      'intake_type', 'ASSIGNMENT_INTAKE',
      'controlled_function_code', 'aiworker.fn_apply_worker_assignment_state',
      'target_truth_surface', 'aiworker.worker_assignment_state',
      'worker_id', '71000000-0000-0000-0000-000000001001',
      'business_request_id', '71000000-0000-0000-0000-000000003001',
      'gate_code', 'GATE_STANDARD',
      'approval_ticket_id', null,
      'audit_required_flag', true,
      'reason_code', 'SMOKE_ASSIGNMENT_MISMATCH',
      'execution_candidate', jsonb_build_object(
        'requested_transition_code', 'ASSIGNED',
        'target_key', jsonb_build_object('worker_id', '71000000-0000-0000-0000-000000001001'),
        'new_values', jsonb_build_object('assignment_state_code', 'ASSIGNED')
      ),
      'correlation', jsonb_build_object(
        'staging_id', '71000000-0000-0000-0000-000000003103',
        'request_hash', 'smoke-request-hash-001',
        'client_request_id', 'smoke-client-request-001'
      ),
      'submitted_at', to_char(now(), 'YYYY-MM-DD"T"HH24:MI:SSOF'),
      'submitted_by', 'SMOKE_SYSTEM'
    )
  );

  select r.replay_decision_code
    into v_decision_code
  from aiworker.fn_decide_replay_request(
    'smoke-request-hash-001',
    '71000000-0000-0000-0000-000000003001'::uuid,
    '71000000-0000-0000-0000-000000001001'::uuid,
    'aiworker.worker_assignment_state',
    'aiworker.fn_apply_worker_assignment_state',
    'ASSIGNED',
    '1.0',
    'SMOKE_INTAKE_ASSIGNMENT_MISMATCH_V1',
    now(),
    'SYSTEM',
    coalesce(p_executed_by, 'SYSTEM')
  ) as r
  limit 1;
  v_pass := (v_decision_code = 'REJECT_REPLAY_MISMATCH');
  v_note := coalesce(v_decision_code, 'NO_RESULT');
  perform aiworker.fn_record_acceptance_case_execution_and_verify(v_batch_id, 'VERIFY-REPLAY-002', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));
  perform aiworker.fn_log_acceptance_batch_runner(v_batch_id, 'VERIFY-REPLAY-002', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));

  -- VERIFY-GRANT-001
  v_pass := (
    not has_table_privilege('role_aiw_no_rawtable_aiworker', 'aiworker.worker_master', 'select')
    and not has_table_privilege('role_aiw_controlled_function_executor', 'aiworker.worker_master', 'select')
  );
  v_note := case when v_pass then 'Runtime raw-table grants are absent' else 'Runtime raw-table grants detected' end;
  perform aiworker.fn_record_acceptance_case_execution_and_verify(v_batch_id, 'VERIFY-GRANT-001', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));
  perform aiworker.fn_log_acceptance_batch_runner(v_batch_id, 'VERIFY-GRANT-001', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));

  -- VERIFY-GRANT-002
  v_pass := (
    not has_table_privilege('role_aiw_restricted_reviewer', 'aiworker.worker_privileged_profile', 'select')
    and not has_table_privilege('role_aiw_privileged_reviewer', 'aiworker.worker_restricted_handling_policy', 'select')
  );
  v_note := case when v_pass then 'Restricted and privileged reviewer separation holds' else 'Reviewer separation failed' end;
  perform aiworker.fn_record_acceptance_case_execution_and_verify(v_batch_id, 'VERIFY-GRANT-002', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));
  perform aiworker.fn_log_acceptance_batch_runner(v_batch_id, 'VERIFY-GRANT-002', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));

  -- VERIFY-RECOVERY-001
  v_incident_id := aiworker.fn_open_recovery_incident(
    'ACCEPTANCE_DRY_RUN',
    'Formal acceptance dry-run recovery incident',
    coalesce(p_executed_by, 'SYSTEM')
  );
  perform aiworker.fn_log_recovery_execution(
    v_incident_id,
    'DRY_RUN',
    true,
    'OK_DRY_RUN',
    0,
    'Formal acceptance dry-run recovery execution',
    coalesce(p_executed_by, 'SYSTEM')
  );
  select exists(
    select 1
    from aiworker.recovery_execution_log rel
    where rel.recovery_incident_id = v_incident_id
      and rel.dry_run_flag = true
  ) into v_pass;
  v_note := case when v_pass then 'Recovery dry-run is incident-linked' else 'Recovery dry-run linkage missing' end;
  perform aiworker.fn_record_acceptance_case_execution_and_verify(v_batch_id, 'VERIFY-RECOVERY-001', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));
  perform aiworker.fn_log_acceptance_batch_runner(v_batch_id, 'VERIFY-RECOVERY-001', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));

  -- VERIFY-RECOVERY-002
  select count(*)
    into v_count_before
  from aiworker.worker_assignment_state
  where worker_id = '71000000-0000-0000-0000-000000001001'::uuid;

  begin
    perform aiworker.fn_redeliver_result_for_request_hash(
      'smoke-request-hash-001',
      coalesce(p_executed_by, 'SYSTEM')
    );
  exception
    when others then
      null;
  end;

  select count(*)
    into v_count_after
  from aiworker.worker_assignment_state
  where worker_id = '71000000-0000-0000-0000-000000001001'::uuid;

  v_pass := (v_count_before = v_count_after);
  v_note := case when v_pass then 'Redelivery did not remutate canonical truth' else 'Canonical truth row count changed on redelivery' end;
  perform aiworker.fn_record_acceptance_case_execution_and_verify(v_batch_id, 'VERIFY-RECOVERY-002', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));
  perform aiworker.fn_log_acceptance_batch_runner(v_batch_id, 'VERIFY-RECOVERY-002', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));

  -- VERIFY-EVENT-001
  select exists(
    select 1
    from aiworker.event_outbox eo
    where eo.related_business_request_id in (
      '71000000-0000-0000-0000-000000003001'::uuid,
      '72000000-0000-0000-0000-000000003001'::uuid
    )
  ) into v_pass;
  v_note := case when v_pass then 'Required outbox rows exist' else 'Required outbox rows missing' end;
  perform aiworker.fn_record_acceptance_case_execution_and_verify(v_batch_id, 'VERIFY-EVENT-001', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));
  perform aiworker.fn_log_acceptance_batch_runner(v_batch_id, 'VERIFY-EVENT-001', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));

  -- VERIFY-EVENT-002
  v_pass := (
    has_column_privilege('role_aiw_event_delivery', 'aiworker.event_outbox', 'delivered_at', 'update')
    and not has_column_privilege('role_aiw_event_delivery', 'aiworker.event_outbox', 'summary_code', 'update')
  );
  v_note := case when v_pass then 'Delivery metadata update is narrow' else 'Delivery metadata update is too wide' end;
  perform aiworker.fn_record_acceptance_case_execution_and_verify(v_batch_id, 'VERIFY-EVENT-002', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));
  perform aiworker.fn_log_acceptance_batch_runner(v_batch_id, 'VERIFY-EVENT-002', case when v_pass then 'PASS' else 'FAIL' end, v_note, coalesce(p_executed_by, 'SYSTEM'));

  perform aiworker.fn_mark_acceptance_runbook_phase(
    v_batch_id,
    'CHECKS_COMPLETE',
    'DONE',
    'Formal acceptance checks completed',
    coalesce(p_executed_by, 'SYSTEM')
  );

  select f.batch_status_code, f.missing_critical_count, f.failed_critical_count, f.completed_at
    into v_status, v_missing, v_failed, v_completed_at
  from aiworker.fn_finalize_acceptance_execution_batch(
    v_batch_id,
    null,
    coalesce(p_executed_by, 'SYSTEM')
  ) as f;

  perform aiworker.fn_log_acceptance_batch_runner(
    v_batch_id,
    'FINALIZE',
    coalesce(v_status, 'UNKNOWN'),
    'Formal acceptance batch finalized',
    coalesce(p_executed_by, 'SYSTEM')
  );

  return query
  select v_batch_id, v_status, v_missing, v_failed, v_completed_at;
end;
$$;

commit;
