-- ============================================================
-- MBO SQL PHASE 2
-- CHECK CONSTRAINTS / INDEXES / HELPER VIEWS
-- reviewer: Sato
-- ============================================================

-- ============================================================
-- 1. CHECK CONSTRAINTS
-- ============================================================

alter table app_mbo.mbo_period
  add constraint ck_mbo_period_date_range
  check (start_date <= end_date);

alter table app_mbo.mbo_objective
  add constraint ck_mbo_objective_weight_nonnegative
  check (weight >= 0);

alter table app_mbo.mbo_objective
  add constraint ck_mbo_objective_progress_range
  check (progress_percent >= 0 and progress_percent <= 100);

alter table app_mbo.mbo_objective
  add constraint ck_mbo_objective_due_after_start
  check (
    start_date is null
    or due_date is null
    or start_date <= due_date
  );

alter table app_mbo.mbo_objective
  add constraint ck_mbo_objective_final_lock_timestamp
  check (
    (final_lock_flag = false)
    or (final_lock_flag = true and final_locked_at is not null)
  );

alter table app_mbo.mbo_action_plan
  add constraint ck_mbo_action_plan_completion_range
  check (completion_percent >= 0 and completion_percent <= 100);

alter table app_mbo.mbo_action_plan
  add constraint ck_mbo_action_plan_end_after_start
  check (
    planned_start_at is null
    or planned_end_at is null
    or planned_start_at <= planned_end_at
  );

alter table app_mbo.mbo_progress_log
  add constraint ck_mbo_progress_log_progress_range
  check (progress_percent >= 0 and progress_percent <= 100);

alter table app_mbo.mbo_evaluation
  add constraint ck_mbo_evaluation_confirmed_when_locked
  check (
    (final_lock_flag = false)
    or (final_lock_flag = true and confirmed_at is not null)
  );

alter table app_mbo.mbo_evidence_reference
  add constraint ck_mbo_evidence_reference_parent_exists
  check (
    progress_log_id is not null
    or review_log_id is not null
  );

-- ============================================================
-- 2. FOREIGN KEYS ADDED AFTER BASE TABLE CREATION
-- ============================================================

alter table app_mbo.mbo_objective
  add constraint fk_mbo_objective_source_objective
  foreign key (source_objective_id)
  references app_mbo.mbo_objective(objective_id);

alter table app_mbo.mbo_objective
  add constraint fk_mbo_objective_source_template
  foreign key (source_template_id)
  references app_mbo.mbo_objective_template(objective_template_id);

alter table app_mbo.mbo_review_log
  add constraint fk_mbo_review_log_comment_template
  foreign key (manager_comment_template_id)
  references app_mbo.mbo_manager_comment_template(manager_comment_template_id);

alter table app_mbo.mbo_evidence_reference
  add constraint fk_mbo_evidence_reference_progress_log
  foreign key (progress_log_id)
  references app_mbo.mbo_progress_log(progress_log_id);

alter table app_mbo.mbo_evidence_reference
  add constraint fk_mbo_evidence_reference_review_log
  foreign key (review_log_id)
  references app_mbo.mbo_review_log(review_log_id);

-- ============================================================
-- 3. INDEXES
-- ============================================================

create index if not exists idx_mbo_period_company_status
  on app_mbo.mbo_period(company_id, status);

create index if not exists idx_mbo_objective_period
  on app_mbo.mbo_objective(period_id);

create index if not exists idx_mbo_objective_owner
  on app_mbo.mbo_objective(owner_user_id);

create index if not exists idx_mbo_objective_manager
  on app_mbo.mbo_objective(manager_user_id);

create index if not exists idx_mbo_objective_status
  on app_mbo.mbo_objective(status);

create index if not exists idx_mbo_objective_period_status
  on app_mbo.mbo_objective(period_id, status);

create index if not exists idx_mbo_objective_company_period_owner
  on app_mbo.mbo_objective(company_id, period_id, owner_user_id);

create index if not exists idx_mbo_action_plan_objective
  on app_mbo.mbo_action_plan(objective_id);

create index if not exists idx_mbo_progress_log_objective_logged_at
  on app_mbo.mbo_progress_log(objective_id, logged_at desc);

create index if not exists idx_mbo_review_schedule_objective
  on app_mbo.mbo_review_schedule(objective_id);

create index if not exists idx_mbo_review_schedule_reviewer_time
  on app_mbo.mbo_review_schedule(reviewer_user_id, planned_review_at);

create index if not exists idx_mbo_review_schedule_status_time
  on app_mbo.mbo_review_schedule(status, planned_review_at);

create index if not exists idx_mbo_review_log_objective_reviewed_at
  on app_mbo.mbo_review_log(objective_id, reviewed_at desc);

create index if not exists idx_mbo_evaluation_objective
  on app_mbo.mbo_evaluation(objective_id);

create index if not exists idx_mbo_evaluation_confirmed_at
  on app_mbo.mbo_evaluation(confirmed_at);

create index if not exists idx_mbo_evaluation_erp_send_status
  on app_mbo.mbo_evaluation(erp_send_status);

create index if not exists idx_mbo_objective_template_company_scope_active
  on app_mbo.mbo_objective_template(company_id, template_scope, active_flag);

create index if not exists idx_mbo_manager_comment_template_company_dept_active
  on app_mbo.mbo_manager_comment_template(company_id, department_id, active_flag);

create index if not exists idx_mbo_review_cadence_preset_company_active
  on app_mbo.mbo_review_cadence_preset(company_id, active_flag);

create index if not exists idx_mbo_interview_memo_objective_memo_at
  on app_mbo.mbo_interview_memo(objective_id, memo_at desc);

create index if not exists idx_mbo_evidence_reference_objective
  on app_mbo.mbo_evidence_reference(objective_id);

create index if not exists idx_mbo_objective_task_link_objective
  on app_mbo.mbo_objective_task_link(objective_id);

create index if not exists idx_mbo_objective_project_link_objective
  on app_mbo.mbo_objective_project_link(objective_id);

create index if not exists idx_mbo_evaluation_calibration_period
  on app_mbo.mbo_evaluation_calibration_record(period_id);

create index if not exists idx_mbo_aggregation_export_job_requester_status
  on app_mbo.mbo_aggregation_export_job(requested_by_user_id, job_status);

create index if not exists idx_mbo_reminder_batch_job_requester_status
  on app_mbo.mbo_reminder_batch_job(requested_by_user_id, job_status);

create index if not exists idx_mbo_erp_transmission_history_objective
  on app_mbo.mbo_erp_transmission_history(objective_id);

create index if not exists idx_mbo_erp_transmission_history_evaluation
  on app_mbo.mbo_erp_transmission_history(evaluation_id);

create index if not exists idx_mbo_erp_transmission_history_status
  on app_mbo.mbo_erp_transmission_history(erp_send_status);

create index if not exists idx_mbo_erp_resend_job_transmission
  on app_mbo.mbo_erp_resend_job(transmission_history_id);

create index if not exists idx_mbo_reopen_request_objective_status
  on app_mbo.mbo_reopen_request(objective_id, reopen_status);

create index if not exists idx_mbo_reopen_request_evaluation
  on app_mbo.mbo_reopen_request(evaluation_id);

create index if not exists idx_mbo_reopen_approval_log_request
  on app_mbo.mbo_reopen_approval_log(reopen_request_id);

create index if not exists idx_mbo_reopen_execution_log_request
  on app_mbo.mbo_reopen_execution_log(reopen_request_id);

create index if not exists idx_mbo_erp_impact_note_request
  on app_mbo.mbo_erp_impact_note(reopen_request_id);

-- ============================================================
-- 4. HELPER VIEWS FOR DASHBOARD / API READS
-- ============================================================

create or replace view app_mbo.v_mbo_objective_latest_progress as
select
  o.objective_id,
  p.progress_log_id,
  p.logged_by_user_id,
  p.logged_at,
  p.progress_percent,
  p.progress_comment,
  p.blocker_note,
  p.next_action_note
from app_mbo.mbo_objective o
left join lateral (
  select pl.*
  from app_mbo.mbo_progress_log pl
  where pl.objective_id = o.objective_id
  order by pl.logged_at desc, pl.created_at desc
  limit 1
) p on true;

create or replace view app_mbo.v_mbo_objective_latest_review as
select
  o.objective_id,
  r.review_log_id,
  r.review_type,
  r.reviewer_user_id,
  r.reviewed_at,
  r.review_result,
  r.review_comment
from app_mbo.mbo_objective o
left join lateral (
  select rl.*
  from app_mbo.mbo_review_log rl
  where rl.objective_id = o.objective_id
  order by rl.reviewed_at desc, rl.created_at desc
  limit 1
) r on true;

create or replace view app_mbo.v_mbo_objective_linkage_summary as
select
  o.objective_id,
  coalesce(t.task_count, 0) as linked_task_count,
  coalesce(p.project_count, 0) as linked_project_count,
  coalesce(e.evidence_count, 0) as evidence_reference_count,
  coalesce(m.memo_count, 0) as interview_memo_count
from app_mbo.mbo_objective o
left join (
  select objective_id, count(*) as task_count
  from app_mbo.mbo_objective_task_link
  group by objective_id
) t on t.objective_id = o.objective_id
left join (
  select objective_id, count(*) as project_count
  from app_mbo.mbo_objective_project_link
  group by objective_id
) p on p.objective_id = o.objective_id
left join (
  select objective_id, count(*) as evidence_count
  from app_mbo.mbo_evidence_reference
  group by objective_id
) e on e.objective_id = o.objective_id
left join (
  select objective_id, count(*) as memo_count
  from app_mbo.mbo_interview_memo
  group by objective_id
) m on m.objective_id = o.objective_id;

create or replace view app_mbo.v_mbo_review_schedule_status as
select
  rs.review_schedule_id,
  rs.objective_id,
  rs.review_type,
  rs.planned_review_at,
  rs.reviewer_user_id,
  rs.status as stored_status,
  case
    when rs.status = 'cancelled' then 'cancelled'
    when rs.status = 'completed' then 'completed'
    when rs.status = 'planned' and rs.planned_review_at < now() then 'overdue'
    else rs.status
  end as effective_status
from app_mbo.mbo_review_schedule rs;

create or replace view app_mbo.v_mbo_dashboard_objective_core as
select
  o.objective_id,
  o.company_id,
  o.period_id,
  o.owner_user_id,
  o.manager_user_id,
  o.title,
  o.objective_category,
  o.objective_type,
  o.priority,
  o.weight,
  o.progress_percent,
  o.status,
  o.start_date,
  o.due_date,
  o.final_lock_flag,
  o.final_locked_at,
  o.language_code,
  o.currency_code,
  lp.logged_at as latest_progress_logged_at,
  lr.reviewed_at as latest_reviewed_at,
  lr.review_result as latest_review_result,
  ls.linked_task_count,
  ls.linked_project_count,
  ls.evidence_reference_count,
  ls.interview_memo_count,
  ev.evaluation_id,
  ev.evaluator_user_id,
  ev.evaluation_score,
  ev.confirmed_at,
  ev.erp_send_status
from app_mbo.mbo_objective o
left join app_mbo.v_mbo_objective_latest_progress lp
  on lp.objective_id = o.objective_id
left join app_mbo.v_mbo_objective_latest_review lr
  on lr.objective_id = o.objective_id
left join app_mbo.v_mbo_objective_linkage_summary ls
  on ls.objective_id = o.objective_id
left join app_mbo.mbo_evaluation ev
  on ev.objective_id = o.objective_id;
