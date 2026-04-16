-- ============================================================
-- SHIFT MANAGER RLS: SHARE / VIEW SCOPE
-- ============================================================

drop policy if exists p_shift_share_rule_select_manager on app_shift_manager.shift_share_rule;
create policy p_shift_share_rule_select_manager
on app_shift_manager.shift_share_rule
for select
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
  )
);

drop policy if exists p_shift_share_rule_insert_manager on app_shift_manager.shift_share_rule;
create policy p_shift_share_rule_insert_manager
on app_shift_manager.shift_share_rule
for insert
with check (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
  )
);

drop policy if exists p_shift_share_rule_update_manager on app_shift_manager.shift_share_rule;
create policy p_shift_share_rule_update_manager
on app_shift_manager.shift_share_rule
for update
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
  )
)
with check (
  company_id = app_shift_manager.fn_current_company_id()
);

drop policy if exists p_shift_share_rule_target_select_manager on app_shift_manager.shift_share_rule_target;
create policy p_shift_share_rule_target_select_manager
on app_shift_manager.shift_share_rule_target
for select
using (
  exists (
    select 1
    from app_shift_manager.shift_share_rule sr
    where sr.share_rule_id = shift_share_rule_target.share_rule_id
      and sr.company_id = app_shift_manager.fn_current_company_id()
      and (
        app_shift_manager.fn_has_role('enterprise_admin')
        or app_shift_manager.fn_has_role('shift_admin')
        or app_shift_manager.fn_has_role('department_manager')
      )
  )
);

drop policy if exists p_shift_view_scope_select on app_shift_manager.shift_view_scope;
create policy p_shift_view_scope_select
on app_shift_manager.shift_view_scope
for select
using (
  viewer_person_id = app_shift_manager.fn_current_person_id()
  or app_shift_manager.fn_has_role('enterprise_admin')
  or app_shift_manager.fn_has_role('shift_admin')
);

drop policy if exists p_shift_share_history_select_manager on app_shift_manager.shift_share_history;
create policy p_shift_share_history_select_manager
on app_shift_manager.shift_share_history
for select
using (
  app_shift_manager.fn_has_role('enterprise_admin')
  or app_shift_manager.fn_has_role('shift_admin')
  or app_shift_manager.fn_has_role('department_manager')
);
