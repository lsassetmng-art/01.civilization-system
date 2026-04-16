-- ============================================================
-- SHIFT MANAGER RLS: REQUESTED DAY OFF
-- ============================================================

alter table app_shift_manager.shift_requested_day_off enable row level security;

drop policy if exists p_shift_requested_day_off_select on app_shift_manager.shift_requested_day_off;
create policy p_shift_requested_day_off_select
on app_shift_manager.shift_requested_day_off
for select
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    person_id = app_shift_manager.fn_current_person_id()
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
    or app_shift_manager.fn_has_role('enterprise_admin')
  )
);

drop policy if exists p_shift_requested_day_off_insert on app_shift_manager.shift_requested_day_off;
create policy p_shift_requested_day_off_insert
on app_shift_manager.shift_requested_day_off
for insert
with check (
  company_id = app_shift_manager.fn_current_company_id()
  and person_id = app_shift_manager.fn_current_person_id()
);

drop policy if exists p_shift_requested_day_off_update on app_shift_manager.shift_requested_day_off;
create policy p_shift_requested_day_off_update
on app_shift_manager.shift_requested_day_off
for update
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    person_id = app_shift_manager.fn_current_person_id()
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
    or app_shift_manager.fn_has_role('enterprise_admin')
  )
)
with check (
  company_id = app_shift_manager.fn_current_company_id()
);
