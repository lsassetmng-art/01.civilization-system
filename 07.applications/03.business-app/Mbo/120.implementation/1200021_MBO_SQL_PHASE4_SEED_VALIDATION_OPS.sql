-- ============================================================
-- MBO SQL PHASE 4
-- SEED / MASTER INITIAL DATA / VALIDATION / OPERATIONS PACK
-- reviewer: Sato
-- ============================================================

create schema if not exists app_mbo;

-- ============================================================
-- 1. MASTER / SEED TABLES
-- ============================================================

create table if not exists app_mbo.mbo_master_objective_status (
  status_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_review_schedule_status (
  status_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_review_type (
  review_type_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_review_result (
  review_result_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_priority (
  priority_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_template_scope (
  template_scope_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_job_status (
  job_status_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_erp_send_status (
  erp_send_status_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_reopen_status (
  reopen_status_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_reopen_reason (
  reopen_reason_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_reopen_scope (
  reopen_scope_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_reminder_type (
  reminder_type_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_export_format (
  export_format_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

create table if not exists app_mbo.mbo_master_link_role (
  link_role_code text primary key,
  sort_order integer not null,
  active_flag boolean not null default true
);

-- ============================================================
-- 2. MASTER / SEED DATA
-- ============================================================

insert into app_mbo.mbo_master_objective_status (status_code, sort_order, active_flag) values
  ('draft', 10, true),
  ('active', 20, true),
  ('in_review', 30, true),
  ('evaluation_drafted', 40, true),
  ('finalized', 50, true),
  ('transferred', 60, true)
on conflict (status_code) do nothing;

insert into app_mbo.mbo_master_review_schedule_status (status_code, sort_order, active_flag) values
  ('planned', 10, true),
  ('completed', 20, true),
  ('cancelled', 30, true),
  ('overdue', 40, true)
on conflict (status_code) do nothing;

insert into app_mbo.mbo_master_review_type (review_type_code, sort_order, active_flag) values
  ('weekly', 10, true),
  ('monthly', 20, true),
  ('midterm', 30, true),
  ('final', 40, true)
on conflict (review_type_code) do nothing;

insert into app_mbo.mbo_master_review_result (review_result_code, sort_order, active_flag) values
  ('continue', 10, true),
  ('adjust', 20, true),
  ('escalate', 30, true),
  ('complete', 40, true)
on conflict (review_result_code) do nothing;

insert into app_mbo.mbo_master_priority (priority_code, sort_order, active_flag) values
  ('low', 10, true),
  ('medium', 20, true),
  ('high', 30, true),
  ('critical', 40, true)
on conflict (priority_code) do nothing;

insert into app_mbo.mbo_master_template_scope (template_scope_code, sort_order, active_flag) values
  ('personal', 10, true),
  ('department', 20, true),
  ('company', 30, true)
on conflict (template_scope_code) do nothing;

insert into app_mbo.mbo_master_job_status (job_status_code, sort_order, active_flag) values
  ('queued', 10, true),
  ('running', 20, true),
  ('completed', 30, true),
  ('failed', 40, true)
on conflict (job_status_code) do nothing;

insert into app_mbo.mbo_master_erp_send_status (erp_send_status_code, sort_order, active_flag) values
  ('not_started', 10, true),
  ('ERP_sent', 20, true),
  ('ERP_failed', 30, true)
on conflict (erp_send_status_code) do nothing;

insert into app_mbo.mbo_master_reopen_status (reopen_status_code, sort_order, active_flag) values
  ('requested', 10, true),
  ('under_review', 20, true),
  ('approved', 30, true),
  ('rejected', 40, true),
  ('executed', 50, true),
  ('closed', 60, true)
on conflict (reopen_status_code) do nothing;

insert into app_mbo.mbo_master_reopen_reason (reopen_reason_code, sort_order, active_flag) values
  ('material_input_error', 10, true),
  ('evaluator_error', 20, true),
  ('governance_correction', 30, true),
  ('ERP_rejection_requires_fix', 40, true),
  ('compliance_required_correction', 50, true)
on conflict (reopen_reason_code) do nothing;

insert into app_mbo.mbo_master_reopen_scope (reopen_scope_code, sort_order, active_flag) values
  ('evaluation_only', 10, true),
  ('evaluation_and_objective', 20, true),
  ('evaluation_and_action_plan', 30, true),
  ('full_record_scope', 40, true)
on conflict (reopen_scope_code) do nothing;

insert into app_mbo.mbo_master_reminder_type (reminder_type_code, sort_order, active_flag) values
  ('progress_update_reminder', 10, true),
  ('scheduled_review_reminder', 20, true),
  ('evaluation_confirmation_reminder', 30, true),
  ('batch_review_reminder', 40, true),
  ('batch_progress_reminder', 50, true)
on conflict (reminder_type_code) do nothing;

insert into app_mbo.mbo_master_export_format (export_format_code, sort_order, active_flag) values
  ('csv', 10, true),
  ('xlsx', 20, true),
  ('pdf', 30, true)
on conflict (export_format_code) do nothing;

insert into app_mbo.mbo_master_link_role (link_role_code, sort_order, active_flag) values
  ('primary', 10, true),
  ('supporting', 20, true),
  ('reference', 30, true)
on conflict (link_role_code) do nothing;

-- ============================================================
-- 3. VALIDATION QUERIES
-- ============================================================

-- 3-1. invalid objective status
create or replace view app_mbo.v_mbo_invalid_objective_status as
select o.*
from app_mbo.mbo_objective o
left join app_mbo.mbo_master_objective_status m
  on m.status_code = o.status
where m.status_code is null;

-- 3-2. invalid review schedule status
create or replace view app_mbo.v_mbo_invalid_review_schedule_status as
select rs.*
from app_mbo.mbo_review_schedule rs
left join app_mbo.mbo_master_review_schedule_status m
  on m.status_code = rs.status
where m.status_code is null;

-- 3-3. invalid priority
create or replace view app_mbo.v_mbo_invalid_priority as
select o.*
from app_mbo.mbo_objective o
left join app_mbo.mbo_master_priority m
  on m.priority_code = o.priority
where m.priority_code is null;

-- 3-4. locked objective inconsistency
create or replace view app_mbo.v_mbo_locked_objective_inconsistency as
select
  o.objective_id,
  o.final_lock_flag as objective_final_lock_flag,
  o.final_locked_at,
  e.evaluation_id,
  e.final_lock_flag as evaluation_final_lock_flag,
  e.confirmed_at
from app_mbo.mbo_objective o
left join app_mbo.mbo_evaluation e
  on e.objective_id = o.objective_id
where
  (o.final_lock_flag = true and o.final_locked_at is null)
  or (e.final_lock_flag = true and e.confirmed_at is null)
  or (o.final_lock_flag <> coalesce(e.final_lock_flag, false));

-- 3-5. overdue planned review schedules
create or replace view app_mbo.v_mbo_overdue_planned_reviews as
select *
from app_mbo.v_mbo_review_schedule_status
where effective_status = 'overdue';

-- 3-6. erp failed transmissions
create or replace view app_mbo.v_mbo_erp_failed_transmissions as
select *
from app_mbo.mbo_erp_transmission_history
where erp_send_status = 'ERP_failed';

-- 3-7. reopen requests without approval after approval status
create or replace view app_mbo.v_mbo_reopen_approval_inconsistency as
select rr.*
from app_mbo.mbo_reopen_request rr
where rr.reopen_status = 'approved'
  and not exists (
    select 1
    from app_mbo.mbo_reopen_approval_log al
    where al.reopen_request_id = rr.reopen_request_id
  );

-- ============================================================
-- 4. OPERATIONAL SQL VIEWS
-- ============================================================

create or replace view app_mbo.v_mbo_current_period_objectives as
select o.*
from app_mbo.mbo_objective o
join app_mbo.mbo_period p
  on p.period_id = o.period_id
where p.status = 'open';

create or replace view app_mbo.v_mbo_objective_work_queue as
select
  dc.objective_id,
  dc.company_id,
  dc.period_id,
  dc.owner_user_id,
  dc.manager_user_id,
  dc.title,
  dc.status,
  dc.progress_percent,
  dc.latest_progress_logged_at,
  dc.latest_reviewed_at,
  dc.confirmed_at,
  dc.erp_send_status,
  case
    when dc.erp_send_status = 'ERP_failed' then 'erp_failure'
    when dc.status = 'evaluation_drafted' then 'pending_evaluation_confirmation'
    when dc.status in ('active', 'in_review')
         and (dc.latest_progress_logged_at is null or dc.latest_progress_logged_at < now() - interval '7 days')
      then 'stale_progress'
    else 'normal'
  end as work_attention_type
from app_mbo.v_mbo_dashboard_objective_core dc;

create or replace view app_mbo.v_mbo_dashboard_counts as
select
  company_id,
  period_id,
  count(*) as total_objectives,
  count(*) filter (where status = 'draft') as draft_objectives,
  count(*) filter (where status = 'active') as active_objectives,
  count(*) filter (where status = 'in_review') as in_review_objectives,
  count(*) filter (where status = 'evaluation_drafted') as evaluation_drafted_objectives,
  count(*) filter (where status = 'finalized') as finalized_objectives,
  count(*) filter (where status = 'transferred') as transferred_objectives,
  count(*) filter (
    where status in ('active', 'in_review')
      and (latest_progress_logged_at is null or latest_progress_logged_at < now() - interval '7 days')
  ) as stale_progress_count,
  count(*) filter (where erp_send_status = 'ERP_failed') as erp_failure_count
from app_mbo.v_mbo_dashboard_objective_core
group by company_id, period_id;

-- ============================================================
-- 5. OPERATIONAL QUERY PACK
-- ============================================================

-- recent failed ERP sends
-- select * from app_mbo.v_mbo_erp_failed_transmissions order by failed_at desc nulls last;

-- reopen queue
-- select * from app_mbo.v_mbo_reopen_queue_api order by requested_at desc;

-- current work queue
-- select * from app_mbo.v_mbo_objective_work_queue order by work_attention_type, due_date nulls last;

-- dashboard counts by company/period
-- select * from app_mbo.v_mbo_dashboard_counts where company_id = :company_id and period_id = :period_id;

