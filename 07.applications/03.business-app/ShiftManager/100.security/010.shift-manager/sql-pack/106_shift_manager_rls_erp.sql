-- ============================================================
-- SHIFT MANAGER RLS: ERP LINKAGE / AUDIT
-- ============================================================

drop policy if exists p_erp_linkage_state_select_operator on app_shift_manager.erp_linkage_state;
create policy p_erp_linkage_state_select_operator
on app_shift_manager.erp_linkage_state
for select
using (
  app_shift_manager.fn_has_role('enterprise_admin')
  or app_shift_manager.fn_has_role('integration_operator')
  or app_shift_manager.fn_has_role('shift_admin')
  or app_shift_manager.fn_has_role('department_manager')
);

drop policy if exists p_erp_linkage_state_update_operator on app_shift_manager.erp_linkage_state;
create policy p_erp_linkage_state_update_operator
on app_shift_manager.erp_linkage_state
for update
using (
  app_shift_manager.fn_has_role('enterprise_admin')
  or app_shift_manager.fn_has_role('integration_operator')
  or app_shift_manager.fn_has_role('shift_admin')
)
with check (
  app_shift_manager.fn_has_role('enterprise_admin')
  or app_shift_manager.fn_has_role('integration_operator')
  or app_shift_manager.fn_has_role('shift_admin')
);

drop policy if exists p_shift_access_audit_select_manager on app_shift_manager.shift_access_audit;
create policy p_shift_access_audit_select_manager
on app_shift_manager.shift_access_audit
for select
using (
  app_shift_manager.fn_has_role('enterprise_admin')
  or app_shift_manager.fn_has_role('shift_admin')
);
