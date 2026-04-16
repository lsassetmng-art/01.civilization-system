-- ============================================================
-- SHIFT MANAGER RLS: PUBLICATION DIFFERENCE / CONFIRMATION
-- ============================================================

alter table app_shift_manager.shift_publication_difference enable row level security;
alter table app_shift_manager.shift_change_confirmation enable row level security;

drop policy if exists p_shift_publication_difference_select on app_shift_manager.shift_publication_difference;
create policy p_shift_publication_difference_select
on app_shift_manager.shift_publication_difference
for select
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    affected_person_id = app_shift_manager.fn_current_person_id()
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
    or app_shift_manager.fn_has_role('enterprise_admin')
  )
);

drop policy if exists p_shift_change_confirmation_select on app_shift_manager.shift_change_confirmation;
create policy p_shift_change_confirmation_select
on app_shift_manager.shift_change_confirmation
for select
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    target_person_id = app_shift_manager.fn_current_person_id()
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
    or app_shift_manager.fn_has_role('enterprise_admin')
  )
);

drop policy if exists p_shift_change_confirmation_insert on app_shift_manager.shift_change_confirmation;
create policy p_shift_change_confirmation_insert
on app_shift_manager.shift_change_confirmation
for insert
with check (
  company_id = app_shift_manager.fn_current_company_id()
  and target_person_id = app_shift_manager.fn_current_person_id()
);

drop policy if exists p_shift_change_confirmation_update on app_shift_manager.shift_change_confirmation;
create policy p_shift_change_confirmation_update
on app_shift_manager.shift_change_confirmation
for update
using (
  company_id = app_shift_manager.fn_current_company_id()
  and target_person_id = app_shift_manager.fn_current_person_id()
)
with check (
  company_id = app_shift_manager.fn_current_company_id()
  and target_person_id = app_shift_manager.fn_current_person_id()
);
