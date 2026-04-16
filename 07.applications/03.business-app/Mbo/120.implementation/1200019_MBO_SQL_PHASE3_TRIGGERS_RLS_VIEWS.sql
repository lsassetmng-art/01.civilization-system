-- ============================================================
-- MBO SQL PHASE 3
-- UPDATED_AT TRIGGERS / RLS POLICY DIRECTION / API READ VIEWS
-- reviewer: Sato
-- ============================================================

create schema if not exists app_mbo;

-- ============================================================
-- 1. UPDATED_AT TRIGGER FUNCTION
-- ============================================================

create or replace function app_mbo.set_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at := now();
  return new;
end;
$$;

-- ============================================================
-- 2. UPDATED_AT TRIGGERS
-- ============================================================

drop trigger if exists trg_mbo_period_set_updated_at on app_mbo.mbo_period;
create trigger trg_mbo_period_set_updated_at
before update on app_mbo.mbo_period
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_objective_set_updated_at on app_mbo.mbo_objective;
create trigger trg_mbo_objective_set_updated_at
before update on app_mbo.mbo_objective
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_action_plan_set_updated_at on app_mbo.mbo_action_plan;
create trigger trg_mbo_action_plan_set_updated_at
before update on app_mbo.mbo_action_plan
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_review_schedule_set_updated_at on app_mbo.mbo_review_schedule;
create trigger trg_mbo_review_schedule_set_updated_at
before update on app_mbo.mbo_review_schedule
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_evaluation_set_updated_at on app_mbo.mbo_evaluation;
create trigger trg_mbo_evaluation_set_updated_at
before update on app_mbo.mbo_evaluation
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_objective_template_set_updated_at on app_mbo.mbo_objective_template;
create trigger trg_mbo_objective_template_set_updated_at
before update on app_mbo.mbo_objective_template
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_manager_comment_template_set_updated_at on app_mbo.mbo_manager_comment_template;
create trigger trg_mbo_manager_comment_template_set_updated_at
before update on app_mbo.mbo_manager_comment_template
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_review_cadence_preset_set_updated_at on app_mbo.mbo_review_cadence_preset;
create trigger trg_mbo_review_cadence_preset_set_updated_at
before update on app_mbo.mbo_review_cadence_preset
for each row
execute function app_mbo.set_updated_at();

drop trigger if exists trg_mbo_reopen_request_set_updated_at on app_mbo.mbo_reopen_request;
create trigger trg_mbo_reopen_request_set_updated_at
before update on app_mbo.mbo_reopen_request
for each row
execute function app_mbo.set_updated_at();

-- ============================================================
-- 3. RLS ENABLEMENT
-- ============================================================

alter table app_mbo.mbo_period enable row level security;
alter table app_mbo.mbo_objective enable row level security;
alter table app_mbo.mbo_action_plan enable row level security;
alter table app_mbo.mbo_progress_log enable row level security;
alter table app_mbo.mbo_review_schedule enable row level security;
alter table app_mbo.mbo_review_log enable row level security;
alter table app_mbo.mbo_evaluation enable row level security;
alter table app_mbo.mbo_objective_template enable row level security;
alter table app_mbo.mbo_manager_comment_template enable row level security;
alter table app_mbo.mbo_review_cadence_preset enable row level security;
alter table app_mbo.mbo_interview_memo enable row level security;
alter table app_mbo.mbo_evidence_reference enable row level security;
alter table app_mbo.mbo_objective_task_link enable row level security;
alter table app_mbo.mbo_objective_project_link enable row level security;
alter table app_mbo.mbo_evaluation_calibration_record enable row level security;
alter table app_mbo.mbo_aggregation_export_job enable row level security;
alter table app_mbo.mbo_reminder_batch_job enable row level security;
alter table app_mbo.mbo_erp_transmission_history enable row level security;
alter table app_mbo.mbo_erp_resend_job enable row level security;
alter table app_mbo.mbo_reopen_request enable row level security;
alter table app_mbo.mbo_reopen_approval_log enable row level security;
alter table app_mbo.mbo_reopen_execution_log enable row level security;
alter table app_mbo.mbo_erp_impact_note enable row level security;

-- ============================================================
-- 4. RLS HELPER FUNCTIONS
-- ============================================================

-- Assumption:
-- application sets request.jwt.claims with:
--   sub                user id
--   app_role           role code
--   company_id         scoped company id
-- The design below fixes direction and can be tightened later.

create or replace function app_mbo.current_user_id()
returns uuid
language sql
stable
as $$
  select nullif(current_setting('request.jwt.claims', true)::jsonb ->> 'sub', '')::uuid
$$;

create or replace function app_mbo.current_app_role()
returns text
language sql
stable
as $$
  select current_setting('request.jwt.claims', true)::jsonb ->> 'app_role'
$$;

create or replace function app_mbo.current_company_id()
returns uuid
language sql
stable
as $$
  select nullif(current_setting('request.jwt.claims', true)::jsonb ->> 'company_id', '')::uuid
$$;

create or replace function app_mbo.is_role(p_role text)
returns boolean
language sql
stable
as $$
  select app_mbo.current_app_role() = p_role
$$;

create or replace function app_mbo.is_any_role(p_roles text[])
returns boolean
language sql
stable
as $$
  select app_mbo.current_app_role() = any(p_roles)
$$;

-- ============================================================
-- 5. RLS POLICIES
-- ============================================================

-- mbo_period
drop policy if exists p_mbo_period_select on app_mbo.mbo_period;
create policy p_mbo_period_select
on app_mbo.mbo_period
for select
using (
  company_id = app_mbo.current_company_id()
);

-- mbo_objective
drop policy if exists p_mbo_objective_select on app_mbo.mbo_objective;
create policy p_mbo_objective_select
on app_mbo.mbo_objective
for select
using (
  company_id = app_mbo.current_company_id()
  and (
    owner_user_id = app_mbo.current_user_id()
    or manager_user_id = app_mbo.current_user_id()
    or app_mbo.is_any_role(array[
      'evaluator',
      'HR_operator',
      'executive_viewer',
      'system_auditor'
    ])
  )
);

drop policy if exists p_mbo_objective_insert on app_mbo.mbo_objective;
create policy p_mbo_objective_insert
on app_mbo.mbo_objective
for insert
with check (
  company_id = app_mbo.current_company_id()
  and owner_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('objective_owner')
);

drop policy if exists p_mbo_objective_update on app_mbo.mbo_objective;
create policy p_mbo_objective_update
on app_mbo.mbo_objective
for update
using (
  company_id = app_mbo.current_company_id()
  and owner_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('objective_owner')
  and final_lock_flag = false
)
with check (
  company_id = app_mbo.current_company_id()
  and owner_user_id = app_mbo.current_user_id()
  and final_lock_flag = false
);

-- mbo_action_plan
drop policy if exists p_mbo_action_plan_select on app_mbo.mbo_action_plan;
create policy p_mbo_action_plan_select
on app_mbo.mbo_action_plan
for select
using (
  exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_action_plan.objective_id
      and o.company_id = app_mbo.current_company_id()
      and (
        o.owner_user_id = app_mbo.current_user_id()
        or o.manager_user_id = app_mbo.current_user_id()
        or app_mbo.is_any_role(array[
          'evaluator',
          'HR_operator',
          'executive_viewer',
          'system_auditor'
        ])
      )
  )
);

drop policy if exists p_mbo_action_plan_write on app_mbo.mbo_action_plan;
create policy p_mbo_action_plan_write
on app_mbo.mbo_action_plan
for all
using (
  exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_action_plan.objective_id
      and o.company_id = app_mbo.current_company_id()
      and o.owner_user_id = app_mbo.current_user_id()
      and app_mbo.is_role('objective_owner')
      and o.final_lock_flag = false
  )
)
with check (
  exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_action_plan.objective_id
      and o.company_id = app_mbo.current_company_id()
      and o.owner_user_id = app_mbo.current_user_id()
      and app_mbo.is_role('objective_owner')
      and o.final_lock_flag = false
  )
);

-- mbo_progress_log
drop policy if exists p_mbo_progress_log_select on app_mbo.mbo_progress_log;
create policy p_mbo_progress_log_select
on app_mbo.mbo_progress_log
for select
using (
  exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_progress_log.objective_id
      and o.company_id = app_mbo.current_company_id()
      and (
        o.owner_user_id = app_mbo.current_user_id()
        or o.manager_user_id = app_mbo.current_user_id()
        or app_mbo.is_any_role(array[
          'evaluator',
          'HR_operator',
          'executive_viewer',
          'system_auditor'
        ])
      )
  )
);

drop policy if exists p_mbo_progress_log_insert on app_mbo.mbo_progress_log;
create policy p_mbo_progress_log_insert
on app_mbo.mbo_progress_log
for insert
with check (
  logged_by_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('objective_owner')
  and exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_progress_log.objective_id
      and o.company_id = app_mbo.current_company_id()
      and o.owner_user_id = app_mbo.current_user_id()
      and o.final_lock_flag = false
  )
);

-- mbo_review_schedule
drop policy if exists p_mbo_review_schedule_select on app_mbo.mbo_review_schedule;
create policy p_mbo_review_schedule_select
on app_mbo.mbo_review_schedule
for select
using (
  exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_review_schedule.objective_id
      and o.company_id = app_mbo.current_company_id()
      and (
        o.owner_user_id = app_mbo.current_user_id()
        or o.manager_user_id = app_mbo.current_user_id()
        or mbo_review_schedule.reviewer_user_id = app_mbo.current_user_id()
        or app_mbo.is_any_role(array[
          'HR_operator',
          'executive_viewer',
          'system_auditor'
        ])
      )
  )
);

drop policy if exists p_mbo_review_schedule_write on app_mbo.mbo_review_schedule;
create policy p_mbo_review_schedule_write
on app_mbo.mbo_review_schedule
for all
using (
  reviewer_user_id is not null
  and app_mbo.is_any_role(array['manager', 'HR_operator'])
  and exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_review_schedule.objective_id
      and o.company_id = app_mbo.current_company_id()
  )
)
with check (
  reviewer_user_id is not null
  and app_mbo.is_any_role(array['manager', 'HR_operator'])
  and exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_review_schedule.objective_id
      and o.company_id = app_mbo.current_company_id()
  )
);

-- mbo_review_log
drop policy if exists p_mbo_review_log_select on app_mbo.mbo_review_log;
create policy p_mbo_review_log_select
on app_mbo.mbo_review_log
for select
using (
  exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_review_log.objective_id
      and o.company_id = app_mbo.current_company_id()
      and (
        o.owner_user_id = app_mbo.current_user_id()
        or o.manager_user_id = app_mbo.current_user_id()
        or app_mbo.is_any_role(array[
          'evaluator',
          'HR_operator',
          'executive_viewer',
          'system_auditor'
        ])
      )
  )
);

drop policy if exists p_mbo_review_log_insert on app_mbo.mbo_review_log;
create policy p_mbo_review_log_insert
on app_mbo.mbo_review_log
for insert
with check (
  reviewer_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('manager')
  and exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_review_log.objective_id
      and o.company_id = app_mbo.current_company_id()
  )
);

-- mbo_evaluation
drop policy if exists p_mbo_evaluation_select on app_mbo.mbo_evaluation;
create policy p_mbo_evaluation_select
on app_mbo.mbo_evaluation
for select
using (
  exists (
    select 1
    from app_mbo.mbo_objective o
    where o.objective_id = mbo_evaluation.objective_id
      and o.company_id = app_mbo.current_company_id()
      and (
        o.owner_user_id = app_mbo.current_user_id()
        or o.manager_user_id = app_mbo.current_user_id()
        or mbo_evaluation.evaluator_user_id = app_mbo.current_user_id()
        or app_mbo.is_any_role(array[
          'HR_operator',
          'executive_viewer',
          'system_auditor'
        ])
      )
  )
);

drop policy if exists p_mbo_evaluation_write on app_mbo.mbo_evaluation;
create policy p_mbo_evaluation_write
on app_mbo.mbo_evaluation
for all
using (
  evaluator_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('evaluator')
  and final_lock_flag = false
)
with check (
  evaluator_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('evaluator')
);

-- mbo templates and presets
drop policy if exists p_mbo_objective_template_select on app_mbo.mbo_objective_template;
create policy p_mbo_objective_template_select
on app_mbo.mbo_objective_template
for select
using (company_id = app_mbo.current_company_id());

drop policy if exists p_mbo_objective_template_write on app_mbo.mbo_objective_template;
create policy p_mbo_objective_template_write
on app_mbo.mbo_objective_template
for all
using (
  company_id = app_mbo.current_company_id()
  and app_mbo.is_role('department_template_admin')
)
with check (
  company_id = app_mbo.current_company_id()
  and app_mbo.is_role('department_template_admin')
);

drop policy if exists p_mbo_manager_comment_template_select on app_mbo.mbo_manager_comment_template;
create policy p_mbo_manager_comment_template_select
on app_mbo.mbo_manager_comment_template
for select
using (company_id = app_mbo.current_company_id());

drop policy if exists p_mbo_manager_comment_template_write on app_mbo.mbo_manager_comment_template;
create policy p_mbo_manager_comment_template_write
on app_mbo.mbo_manager_comment_template
for all
using (
  company_id = app_mbo.current_company_id()
  and app_mbo.is_role('department_template_admin')
)
with check (
  company_id = app_mbo.current_company_id()
  and app_mbo.is_role('department_template_admin')
);

drop policy if exists p_mbo_review_cadence_preset_select on app_mbo.mbo_review_cadence_preset;
create policy p_mbo_review_cadence_preset_select
on app_mbo.mbo_review_cadence_preset
for select
using (company_id = app_mbo.current_company_id());

drop policy if exists p_mbo_review_cadence_preset_write on app_mbo.mbo_review_cadence_preset;
create policy p_mbo_review_cadence_preset_write
on app_mbo.mbo_review_cadence_preset
for all
using (
  company_id = app_mbo.current_company_id()
  and app_mbo.is_role('department_template_admin')
)
with check (
  company_id = app_mbo.current_company_id()
  and app_mbo.is_role('department_template_admin')
);

-- governance / ERP ops / jobs
drop policy if exists p_mbo_hr_operator_jobs_select on app_mbo.mbo_aggregation_export_job;
create policy p_mbo_hr_operator_jobs_select
on app_mbo.mbo_aggregation_export_job
for select
using (
  requested_by_user_id = app_mbo.current_user_id()
  or app_mbo.is_any_role(array['HR_operator', 'system_auditor'])
);

drop policy if exists p_mbo_hr_operator_jobs_insert on app_mbo.mbo_aggregation_export_job;
create policy p_mbo_hr_operator_jobs_insert
on app_mbo.mbo_aggregation_export_job
for insert
with check (
  requested_by_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('HR_operator')
);

drop policy if exists p_mbo_reminder_batch_job_select on app_mbo.mbo_reminder_batch_job;
create policy p_mbo_reminder_batch_job_select
on app_mbo.mbo_reminder_batch_job
for select
using (
  requested_by_user_id = app_mbo.current_user_id()
  or app_mbo.is_any_role(array['HR_operator', 'system_auditor'])
);

drop policy if exists p_mbo_reminder_batch_job_insert on app_mbo.mbo_reminder_batch_job;
create policy p_mbo_reminder_batch_job_insert
on app_mbo.mbo_reminder_batch_job
for insert
with check (
  requested_by_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('HR_operator')
);

drop policy if exists p_mbo_erp_transmission_history_select on app_mbo.mbo_erp_transmission_history;
create policy p_mbo_erp_transmission_history_select
on app_mbo.mbo_erp_transmission_history
for select
using (
  company_id = app_mbo.current_company_id()
  and app_mbo.is_any_role(array['HR_operator', 'system_auditor'])
);

drop policy if exists p_mbo_erp_resend_job_select on app_mbo.mbo_erp_resend_job;
create policy p_mbo_erp_resend_job_select
on app_mbo.mbo_erp_resend_job
for select
using (
  requested_by_user_id = app_mbo.current_user_id()
  or app_mbo.is_any_role(array['HR_operator', 'system_auditor'])
);

drop policy if exists p_mbo_erp_resend_job_insert on app_mbo.mbo_erp_resend_job;
create policy p_mbo_erp_resend_job_insert
on app_mbo.mbo_erp_resend_job
for insert
with check (
  requested_by_user_id = app_mbo.current_user_id()
  and app_mbo.is_role('HR_operator')
);

drop policy if exists p_mbo_reopen_request_select on app_mbo.mbo_reopen_request;
create policy p_mbo_reopen_request_select
on app_mbo.mbo_reopen_request
for select
using (
  app_mbo.is_any_role(array[
    'HR_operator',
    'system_auditor',
    'manager',
    'evaluator'
  ])
  or requested_by_user_id = app_mbo.current_user_id()
);

drop policy if exists p_mbo_reopen_request_insert on app_mbo.mbo_reopen_request;
create policy p_mbo_reopen_request_insert
on app_mbo.mbo_reopen_request
for insert
with check (
  requested_by_user_id = app_mbo.current_user_id()
);

drop policy if exists p_mbo_reopen_approval_log_select on app_mbo.mbo_reopen_approval_log;
create policy p_mbo_reopen_approval_log_select
on app_mbo.mbo_reopen_approval_log
for select
using (
  app_mbo.is_any_role(array['HR_operator', 'system_auditor', 'manager', 'evaluator'])
);

drop policy if exists p_mbo_reopen_approval_log_insert on app_mbo.mbo_reopen_approval_log;
create policy p_mbo_reopen_approval_log_insert
on app_mbo.mbo_reopen_approval_log
for insert
with check (
  app_mbo.is_any_role(array['HR_operator', 'manager'])
);

drop policy if exists p_mbo_reopen_execution_log_select on app_mbo.mbo_reopen_execution_log;
create policy p_mbo_reopen_execution_log_select
on app_mbo.mbo_reopen_execution_log
for select
using (
  app_mbo.is_any_role(array['HR_operator', 'system_auditor'])
);

drop policy if exists p_mbo_reopen_execution_log_insert on app_mbo.mbo_reopen_execution_log;
create policy p_mbo_reopen_execution_log_insert
on app_mbo.mbo_reopen_execution_log
for insert
with check (
  app_mbo.is_role('HR_operator')
);

drop policy if exists p_mbo_erp_impact_note_select on app_mbo.mbo_erp_impact_note;
create policy p_mbo_erp_impact_note_select
on app_mbo.mbo_erp_impact_note
for select
using (
  app_mbo.is_any_role(array['HR_operator', 'system_auditor'])
);

drop policy if exists p_mbo_erp_impact_note_insert on app_mbo.mbo_erp_impact_note;
create policy p_mbo_erp_impact_note_insert
on app_mbo.mbo_erp_impact_note
for insert
with check (
  app_mbo.is_role('HR_operator')
);

-- ============================================================
-- 6. API READ VIEWS
-- ============================================================

create or replace view app_mbo.v_mbo_objective_detail_api as
select
  dc.objective_id,
  dc.company_id,
  dc.period_id,
  dc.owner_user_id,
  dc.manager_user_id,
  dc.title,
  dc.objective_category,
  dc.objective_type,
  dc.priority,
  dc.weight,
  dc.progress_percent,
  dc.status,
  dc.start_date,
  dc.due_date,
  dc.final_lock_flag,
  dc.final_locked_at,
  dc.language_code,
  dc.currency_code,
  dc.latest_progress_logged_at,
  dc.latest_reviewed_at,
  dc.latest_review_result,
  dc.linked_task_count,
  dc.linked_project_count,
  dc.evidence_reference_count,
  dc.interview_memo_count,
  dc.evaluation_id,
  dc.evaluator_user_id,
  dc.evaluation_score,
  dc.confirmed_at,
  dc.erp_send_status,
  e.evaluation_comment
from app_mbo.v_mbo_dashboard_objective_core dc
left join app_mbo.mbo_evaluation e
  on e.evaluation_id = dc.evaluation_id;

create or replace view app_mbo.v_mbo_objective_list_api as
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
  o.due_date,
  o.final_lock_flag,
  o.language_code,
  o.currency_code,
  lp.logged_at as latest_progress_logged_at,
  lr.reviewed_at as latest_reviewed_at,
  ev.confirmed_at,
  ev.erp_send_status
from app_mbo.mbo_objective o
left join app_mbo.v_mbo_objective_latest_progress lp
  on lp.objective_id = o.objective_id
left join app_mbo.v_mbo_objective_latest_review lr
  on lr.objective_id = o.objective_id
left join app_mbo.mbo_evaluation ev
  on ev.objective_id = o.objective_id;

create or replace view app_mbo.v_mbo_review_schedule_api as
select
  rs.review_schedule_id,
  rs.objective_id,
  rs.review_type,
  rs.planned_review_at,
  rs.reviewer_user_id,
  rs.stored_status,
  rs.effective_status
from app_mbo.v_mbo_review_schedule_status rs;

create or replace view app_mbo.v_mbo_erp_failure_api as
select
  th.transmission_history_id,
  th.transmission_id,
  th.objective_id,
  th.evaluation_id,
  th.sender_user_id,
  th.erp_send_status,
  th.request_id,
  th.sent_at,
  th.failed_at,
  o.title,
  o.period_id,
  e.confirmed_at
from app_mbo.mbo_erp_transmission_history th
join app_mbo.mbo_objective o
  on o.objective_id = th.objective_id
join app_mbo.mbo_evaluation e
  on e.evaluation_id = th.evaluation_id
where th.erp_send_status = 'ERP_failed';

create or replace view app_mbo.v_mbo_reopen_queue_api as
select
  rr.reopen_request_id,
  rr.objective_id,
  rr.evaluation_id,
  rr.requested_by_user_id,
  rr.requested_at,
  rr.reopen_reason_code,
  rr.current_state,
  rr.target_state,
  rr.reopen_scope,
  rr.reopen_status,
  o.title,
  o.company_id,
  o.period_id
from app_mbo.mbo_reopen_request rr
join app_mbo.mbo_objective o
  on o.objective_id = rr.objective_id;
