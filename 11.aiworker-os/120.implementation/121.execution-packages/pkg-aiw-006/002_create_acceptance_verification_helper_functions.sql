begin;

create or replace function aiworker.fn_generate_acceptance_batch_code()
returns text
language plpgsql
as $$
declare
  v_id uuid;
begin
  v_id := aiworker.fn_generate_uuid();
  return 'AEB-' || replace(v_id::text, '-', '');
end;
$$;

create or replace function aiworker.fn_open_acceptance_execution_batch(
  p_note_text text,
  p_started_by text
)
returns uuid
language plpgsql
as $$
declare
  v_batch_id uuid;
  v_batch_code text;
begin
  v_batch_id := aiworker.fn_generate_uuid();
  v_batch_code := aiworker.fn_generate_acceptance_batch_code();

  insert into aiworker.acceptance_execution_batch (
    acceptance_execution_batch_id,
    batch_code,
    batch_status_code,
    started_at,
    started_by,
    note_text
  )
  values (
    v_batch_id,
    v_batch_code,
    'OPEN',
    now(),
    coalesce(p_started_by, 'SYSTEM'),
    p_note_text
  );

  return v_batch_id;
end;
$$;

create or replace function aiworker.fn_log_acceptance_verification_runbook(
  p_acceptance_execution_batch_id uuid,
  p_phase_code text,
  p_result_code text,
  p_note_text text,
  p_executed_by text
)
returns void
language plpgsql
as $$
begin
  insert into aiworker.acceptance_verification_runbook_log (
    acceptance_execution_batch_id,
    phase_code,
    result_code,
    note_text,
    executed_at,
    executed_by
  )
  values (
    p_acceptance_execution_batch_id,
    p_phase_code,
    p_result_code,
    p_note_text,
    now(),
    coalesce(p_executed_by, 'SYSTEM')
  );
end;
$$;

create or replace function aiworker.fn_record_acceptance_verification_result(
  p_acceptance_execution_batch_id uuid,
  p_acceptance_verification_item_code text,
  p_acceptance_test_execution_id bigint,
  p_actual_result_code text,
  p_note_text text,
  p_executed_by text
)
returns bigint
language plpgsql
as $$
declare
  v_id bigint;
begin
  insert into aiworker.acceptance_verification_result (
    acceptance_execution_batch_id,
    acceptance_verification_item_code,
    acceptance_test_execution_id,
    actual_result_code,
    pass_flag,
    note_text,
    executed_at,
    executed_by
  )
  values (
    p_acceptance_execution_batch_id,
    p_acceptance_verification_item_code,
    p_acceptance_test_execution_id,
    p_actual_result_code,
    (p_actual_result_code = 'PASS'),
    p_note_text,
    now(),
    coalesce(p_executed_by, 'SYSTEM')
  )
  returning acceptance_verification_result_id into v_id;

  return v_id;
end;
$$;

create or replace function aiworker.fn_record_acceptance_case_execution_and_verify(
  p_acceptance_execution_batch_id uuid,
  p_acceptance_verification_item_code text,
  p_execution_result_code text,
  p_note_text text,
  p_executed_by text
)
returns bigint
language plpgsql
as $$
declare
  v_acceptance_test_case_code text;
  v_acceptance_test_execution_id bigint;
  v_verification_result_id bigint;
begin
  select avi.acceptance_test_case_code
    into v_acceptance_test_case_code
    from aiworker.acceptance_verification_item avi
   where avi.acceptance_verification_item_code = p_acceptance_verification_item_code
     and avi.active_flag = true;

  if v_acceptance_test_case_code is null then
    raise exception 'ERR_PAYLOAD_INVALID';
  end if;

  v_acceptance_test_execution_id := aiworker.fn_record_acceptance_test_execution(
    v_acceptance_test_case_code,
    p_execution_result_code,
    p_note_text,
    coalesce(p_executed_by, 'SYSTEM')
  );

  v_verification_result_id := aiworker.fn_record_acceptance_verification_result(
    p_acceptance_execution_batch_id,
    p_acceptance_verification_item_code,
    v_acceptance_test_execution_id,
    p_execution_result_code,
    p_note_text,
    coalesce(p_executed_by, 'SYSTEM')
  );

  return v_verification_result_id;
end;
$$;

commit;
