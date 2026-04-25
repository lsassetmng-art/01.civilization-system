begin;

create or replace function aiworker.fn_count_missing_critical_verification_items(
  p_acceptance_execution_batch_id uuid
)
returns integer
language sql
stable
as $$
  with latest_result as (
    select distinct on (avr.acceptance_verification_item_code)
           avr.acceptance_verification_item_code
      from aiworker.acceptance_verification_result avr
     where avr.acceptance_execution_batch_id = p_acceptance_execution_batch_id
     order by avr.acceptance_verification_item_code, avr.executed_at desc, avr.acceptance_verification_result_id desc
  )
  select count(*)
    from aiworker.acceptance_verification_item avi
   where avi.active_flag = true
     and avi.critical_flag = true
     and not exists (
       select 1
         from latest_result lr
        where lr.acceptance_verification_item_code = avi.acceptance_verification_item_code
     )
$$;

create or replace function aiworker.fn_count_failed_critical_verification_items(
  p_acceptance_execution_batch_id uuid
)
returns integer
language sql
stable
as $$
  with latest_result as (
    select distinct on (avr.acceptance_verification_item_code)
           avr.acceptance_verification_item_code,
           avr.pass_flag
      from aiworker.acceptance_verification_result avr
     where avr.acceptance_execution_batch_id = p_acceptance_execution_batch_id
     order by avr.acceptance_verification_item_code, avr.executed_at desc, avr.acceptance_verification_result_id desc
  )
  select count(*)
    from aiworker.acceptance_verification_item avi
    join latest_result lr
      on lr.acceptance_verification_item_code = avi.acceptance_verification_item_code
   where avi.active_flag = true
     and avi.critical_flag = true
     and lr.pass_flag = false
$$;

create or replace function aiworker.fn_start_acceptance_verification_runbook(
  p_acceptance_execution_batch_id uuid,
  p_executed_by text
)
returns void
language plpgsql
as $$
begin
  perform aiworker.fn_log_acceptance_verification_runbook(
    p_acceptance_execution_batch_id,
    'START',
    'OPEN',
    'Acceptance verification runbook started',
    coalesce(p_executed_by, 'SYSTEM')
  );
end;
$$;

create or replace function aiworker.fn_mark_acceptance_runbook_phase(
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
  perform aiworker.fn_log_acceptance_verification_runbook(
    p_acceptance_execution_batch_id,
    p_phase_code,
    p_result_code,
    p_note_text,
    coalesce(p_executed_by, 'SYSTEM')
  );
end;
$$;

create or replace function aiworker.fn_finalize_acceptance_execution_batch(
  p_acceptance_execution_batch_id uuid,
  p_approved_by text,
  p_executed_by text
)
returns table (
  batch_status_code text,
  missing_critical_count integer,
  failed_critical_count integer,
  completed_at timestamptz
)
language plpgsql
as $$
declare
  v_now timestamptz := now();
  v_missing integer;
  v_failed integer;
  v_status text;
begin
  v_missing := aiworker.fn_count_missing_critical_verification_items(
    p_acceptance_execution_batch_id
  );

  v_failed := aiworker.fn_count_failed_critical_verification_items(
    p_acceptance_execution_batch_id
  );

  if v_missing > 0 then
    v_status := 'INCOMPLETE';
  elsif v_failed > 0 then
    v_status := 'FAILED';
  else
    v_status := 'PASSED';
  end if;

  update aiworker.acceptance_execution_batch
     set batch_status_code = v_status,
         completed_at = v_now,
         approved_by = p_approved_by
   where acceptance_execution_batch_id = p_acceptance_execution_batch_id;

  perform aiworker.fn_log_acceptance_verification_runbook(
    p_acceptance_execution_batch_id,
    'FINALIZE',
    v_status,
    'Acceptance verification batch finalized',
    coalesce(p_executed_by, 'SYSTEM')
  );

  return query
  select
    v_status,
    v_missing,
    v_failed,
    v_now;
end;
$$;

commit;
