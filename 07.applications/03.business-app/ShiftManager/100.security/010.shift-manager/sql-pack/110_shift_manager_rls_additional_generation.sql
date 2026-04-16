-- ============================================================
-- SHIFT MANAGER RLS: ADDITIONAL GENERATION TABLES
-- ============================================================

alter table app_shift_manager.shift_auto_generation_schedule enable row level security;
alter table app_shift_manager.shift_auto_generation_execution enable row level security;

drop policy if exists p_shift_auto_generation_schedule_select on app_shift_manager.shift_auto_generation_schedule;
create policy p_shift_auto_generation_schedule_select
on app_shift_manager.shift_auto_generation_schedule
for select
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
    or app_shift_manager.fn_has_role('enterprise_admin')
  )
);

drop policy if exists p_shift_auto_generation_schedule_insert on app_shift_manager.shift_auto_generation_schedule;
create policy p_shift_auto_generation_schedule_insert
on app_shift_manager.shift_auto_generation_schedule
for insert
with check (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
    or app_shift_manager.fn_has_role('enterprise_admin')
  )
);

drop policy if exists p_shift_auto_generation_schedule_update on app_shift_manager.shift_auto_generation_schedule;
create policy p_shift_auto_generation_schedule_update
on app_shift_manager.shift_auto_generation_schedule
for update
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
    or app_shift_manager.fn_has_role('enterprise_admin')
  )
)
with check (
  company_id = app_shift_manager.fn_current_company_id()
);

drop policy if exists p_shift_auto_generation_execution_select on app_shift_manager.shift_auto_generation_execution;
create policy p_shift_auto_generation_execution_select
on app_shift_manager.shift_auto_generation_execution
for select
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
    or app_shift_manager.fn_has_role('enterprise_admin')
  )
);
