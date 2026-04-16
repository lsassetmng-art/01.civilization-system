-- ============================================================
-- SHIFT MANAGER RLS: GENERATION
-- ============================================================

drop policy if exists p_shift_generation_rule_select_manager on app_shift_manager.shift_generation_rule;
create policy p_shift_generation_rule_select_manager
on app_shift_manager.shift_generation_rule
for select
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
    or app_shift_manager.fn_has_role('team_leader')
  )
);

drop policy if exists p_shift_generation_rule_write_manager on app_shift_manager.shift_generation_rule;
create policy p_shift_generation_rule_write_manager
on app_shift_manager.shift_generation_rule
for all
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
    or app_shift_manager.fn_has_role('team_leader')
  )
)
with check (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
    or app_shift_manager.fn_has_role('team_leader')
  )
);

drop policy if exists p_shift_generation_result_select_manager on app_shift_manager.shift_generation_result;
create policy p_shift_generation_result_select_manager
on app_shift_manager.shift_generation_result
for select
using (
  generated_by_person_id = app_shift_manager.fn_current_person_id()
  or app_shift_manager.fn_has_role('enterprise_admin')
  or app_shift_manager.fn_has_role('shift_admin')
  or app_shift_manager.fn_has_role('department_manager')
  or app_shift_manager.fn_has_role('team_leader')
);

drop policy if exists p_shift_generation_result_insert_manager on app_shift_manager.shift_generation_result;
create policy p_shift_generation_result_insert_manager
on app_shift_manager.shift_generation_result
for insert
with check (
  generated_by_person_id = app_shift_manager.fn_current_person_id()
  or app_shift_manager.fn_has_role('enterprise_admin')
  or app_shift_manager.fn_has_role('shift_admin')
  or app_shift_manager.fn_has_role('department_manager')
  or app_shift_manager.fn_has_role('team_leader')
);

drop policy if exists p_shift_generation_warning_select_manager on app_shift_manager.shift_generation_warning;
create policy p_shift_generation_warning_select_manager
on app_shift_manager.shift_generation_warning
for select
using (
  exists (
    select 1
    from app_shift_manager.shift_generation_result gr
    where gr.generation_result_id = shift_generation_warning.generation_result_id
      and (
        gr.generated_by_person_id = app_shift_manager.fn_current_person_id()
        or app_shift_manager.fn_has_role('enterprise_admin')
        or app_shift_manager.fn_has_role('shift_admin')
        or app_shift_manager.fn_has_role('department_manager')
        or app_shift_manager.fn_has_role('team_leader')
      )
  )
);
