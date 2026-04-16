-- ============================================================
-- MBO SQL EXECUTABLE QUICKCHECK
-- reviewer: Sato
-- ============================================================

-- Purpose:
-- Run quick verification after applying integrated SQL and sample data.
-- This pack is read-only except the optional negative-test section at the end,
-- which is wrapped in a transaction and rolled back.

-- ============================================================
-- 1. TABLE EXISTENCE
-- ============================================================

select table_name
from information_schema.tables
where table_schema = 'app_mbo'
order by table_name;

-- ============================================================
-- 2. CORE ROW COUNTS
-- ============================================================

select 'mbo_period' as table_name, count(*) as row_count from app_mbo.mbo_period
union all
select 'mbo_objective', count(*) from app_mbo.mbo_objective
union all
select 'mbo_action_plan', count(*) from app_mbo.mbo_action_plan
union all
select 'mbo_progress_log', count(*) from app_mbo.mbo_progress_log
union all
select 'mbo_review_schedule', count(*) from app_mbo.mbo_review_schedule
union all
select 'mbo_review_log', count(*) from app_mbo.mbo_review_log
union all
select 'mbo_evaluation', count(*) from app_mbo.mbo_evaluation
union all
select 'mbo_erp_transmission_history', count(*) from app_mbo.mbo_erp_transmission_history
union all
select 'mbo_reopen_request', count(*) from app_mbo.mbo_reopen_request
order by table_name;

-- ============================================================
-- 3. CONSTRAINT / INDEX / TRIGGER PRESENCE
-- ============================================================

select
  tc.table_name,
  tc.constraint_name,
  tc.constraint_type
from information_schema.table_constraints tc
where tc.table_schema = 'app_mbo'
  and tc.table_name in (
    'mbo_period',
    'mbo_objective',
    'mbo_action_plan',
    'mbo_progress_log',
    'mbo_evaluation',
    'mbo_evidence_reference'
  )
order by tc.table_name, tc.constraint_type, tc.constraint_name;

select
  schemaname,
  tablename,
  indexname
from pg_indexes
where schemaname = 'app_mbo'
  and tablename in (
    'mbo_objective',
    'mbo_progress_log',
    'mbo_review_schedule',
    'mbo_evaluation',
    'mbo_erp_transmission_history',
    'mbo_reopen_request'
  )
order by tablename, indexname;

select
  event_object_table as table_name,
  trigger_name
from information_schema.triggers
where trigger_schema = 'app_mbo'
order by event_object_table, trigger_name;

-- ============================================================
-- 4. VIEW READ CHECKS
-- ============================================================

select * from app_mbo.v_mbo_dashboard_counts order by company_id, period_id;
select * from app_mbo.v_mbo_erp_failed_transmissions order by failed_at desc nulls last;
select * from app_mbo.v_mbo_reopen_queue_api order by requested_at desc;
select * from app_mbo.v_mbo_objective_work_queue order by work_attention_type, due_date nulls last;
select * from app_mbo.v_mbo_objective_list_api order by objective_id;
select * from app_mbo.v_mbo_objective_detail_api order by objective_id;
select * from app_mbo.v_mbo_review_schedule_api order by planned_review_at;

-- ============================================================
-- 5. VALIDATION VIEW CHECKS
-- ============================================================

select * from app_mbo.v_mbo_invalid_objective_status;
select * from app_mbo.v_mbo_invalid_review_schedule_status;
select * from app_mbo.v_mbo_invalid_priority;
select * from app_mbo.v_mbo_locked_objective_inconsistency;
select * from app_mbo.v_mbo_overdue_planned_reviews;
select * from app_mbo.v_mbo_reopen_approval_inconsistency;

-- ============================================================
-- 6. SAMPLE DATA EXPECTATION CHECKS
-- ============================================================

select
  objective_id,
  title,
  status,
  progress_percent,
  final_lock_flag
from app_mbo.mbo_objective
order by objective_id;

select
  evaluation_id,
  objective_id,
  evaluation_score,
  final_lock_flag,
  confirmed_at,
  erp_send_status
from app_mbo.mbo_evaluation
order by evaluation_id;

select
  transmission_history_id,
  transmission_id,
  erp_send_status,
  sent_at,
  failed_at
from app_mbo.mbo_erp_transmission_history
order by transmission_history_id;

select
  reopen_request_id,
  objective_id,
  evaluation_id,
  reopen_reason_code,
  reopen_status
from app_mbo.mbo_reopen_request
order by reopen_request_id;

-- ============================================================
-- 7. UPDATED_AT TRIGGER SMOKE TEST
-- ============================================================

with before_row as (
  select updated_at
  from app_mbo.mbo_period
  where period_id = 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa'
)
update app_mbo.mbo_period
set period_name = period_name
where period_id = 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa';

select
  period_id,
  period_name,
  updated_at
from app_mbo.mbo_period
where period_id = 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa';

-- ============================================================
-- 8. RLS HELPER FUNCTION SMOKE TEST
-- ============================================================

select
  app_mbo.current_user_id() as current_user_id,
  app_mbo.current_app_role() as current_app_role,
  app_mbo.current_company_id() as current_company_id;

-- ============================================================
-- 9. DASHBOARD / KPI BASE CHECKS
-- ============================================================

select
  company_id,
  period_id,
  total_objectives,
  draft_objectives,
  active_objectives,
  in_review_objectives,
  evaluation_drafted_objectives,
  finalized_objectives,
  transferred_objectives,
  stale_progress_count,
  erp_failure_count
from app_mbo.v_mbo_dashboard_counts
order by company_id, period_id;

-- ============================================================
-- 10. OPTIONAL NEGATIVE TESTS (ROLLBACK)
-- ============================================================
-- Run only if you want to confirm CHECK constraints fail as intended.

begin;

-- expect failure: progress_percent > 100
-- insert into app_mbo.mbo_progress_log (
--   progress_log_id,
--   objective_id,
--   logged_by_user_id,
--   logged_at,
--   progress_percent,
--   progress_comment,
--   blocker_note,
--   next_action_note,
--   language_code,
--   created_at
-- ) values (
--   '99999999-9999-9999-9999-999999999999',
--   'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee',
--   '11111111-1111-1111-1111-111111111111',
--   now(),
--   101,
--   'invalid',
--   'invalid',
--   'invalid',
--   'ja',
--   now()
-- );

-- expect failure: end_date < start_date
-- insert into app_mbo.mbo_period (
--   period_id,
--   company_id,
--   period_code,
--   period_name,
--   start_date,
--   end_date,
--   status,
--   language_code,
--   created_at,
--   updated_at
-- ) values (
--   '98989898-9898-9898-9898-989898989898',
--   '8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12',
--   'BAD-1',
--   'Bad Period',
--   date '2026-12-31',
--   date '2026-01-01',
--   'open',
--   'ja',
--   now(),
--   now()
-- );

rollback;
