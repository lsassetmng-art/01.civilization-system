begin;

create or replace view aiworker.v_acceptance_batch_latest as
with latest_batch as (
  select aeb.acceptance_execution_batch_id,
         aeb.batch_code,
         aeb.batch_status_code,
         aeb.started_at,
         aeb.completed_at,
         aeb.started_by,
         aeb.approved_by,
         aeb.note_text
  from aiworker.acceptance_execution_batch aeb
  order by aeb.started_at desc, aeb.acceptance_execution_batch_id desc
  limit 1
),
per_item_latest as (
  select distinct on (avr.acceptance_verification_item_code)
         avr.acceptance_execution_batch_id,
         avr.acceptance_verification_item_code,
         avr.actual_result_code,
         avr.pass_flag,
         avr.executed_at
  from aiworker.acceptance_verification_result avr
  join latest_batch lb
    on lb.acceptance_execution_batch_id = avr.acceptance_execution_batch_id
  order by avr.acceptance_verification_item_code, avr.executed_at desc, avr.acceptance_verification_result_id desc
)
select
  lb.acceptance_execution_batch_id,
  lb.batch_code,
  lb.batch_status_code,
  lb.started_at,
  lb.completed_at,
  lb.started_by,
  lb.approved_by,
  lb.note_text,
  coalesce((select count(*) from per_item_latest), 0) as latest_item_count,
  coalesce((select count(*) from per_item_latest where pass_flag = true), 0) as latest_pass_count,
  coalesce((select count(*) from per_item_latest where pass_flag = false), 0) as latest_fail_count
from latest_batch lb;

create or replace view aiworker.v_acceptance_batch_latest_item_results as
with latest_batch as (
  select aeb.acceptance_execution_batch_id
  from aiworker.acceptance_execution_batch aeb
  order by aeb.started_at desc, aeb.acceptance_execution_batch_id desc
  limit 1
),
latest_item as (
  select distinct on (avi.acceptance_verification_item_code)
         avi.acceptance_verification_item_code,
         avi.title,
         avi.critical_flag,
         avr.actual_result_code,
         avr.pass_flag,
         avr.note_text,
         avr.executed_at,
         avr.executed_by
  from aiworker.acceptance_verification_item avi
  join aiworker.acceptance_verification_result avr
    on avr.acceptance_verification_item_code = avi.acceptance_verification_item_code
  join latest_batch lb
    on lb.acceptance_execution_batch_id = avr.acceptance_execution_batch_id
  order by avi.acceptance_verification_item_code, avr.executed_at desc, avr.acceptance_verification_result_id desc
)
select *
from latest_item
order by acceptance_verification_item_code;

commit;
