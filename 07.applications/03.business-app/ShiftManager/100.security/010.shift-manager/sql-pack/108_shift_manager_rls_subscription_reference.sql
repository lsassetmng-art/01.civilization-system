-- ============================================================
-- SHIFT MANAGER RLS: SUBSCRIPTION REFERENCE TABLES
-- ============================================================

alter table app_shift_manager.shift_site_license enable row level security;
alter table app_shift_manager.shift_site_subscription_status enable row level security;
alter table app_shift_manager.shift_site_feature_gate_log enable row level security;

drop policy if exists p_shift_site_license_select_manager on app_shift_manager.shift_site_license;
create policy p_shift_site_license_select_manager
on app_shift_manager.shift_site_license
for select
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
  )
);

drop policy if exists p_shift_site_subscription_status_select_manager on app_shift_manager.shift_site_subscription_status;
create policy p_shift_site_subscription_status_select_manager
on app_shift_manager.shift_site_subscription_status
for select
using (
  exists (
    select 1
    from app_shift_manager.shift_site_license sl
    where sl.site_license_id = shift_site_subscription_status.site_license_id
      and sl.company_id = app_shift_manager.fn_current_company_id()
      and (
        app_shift_manager.fn_has_role('enterprise_admin')
        or app_shift_manager.fn_has_role('shift_admin')
        or app_shift_manager.fn_has_role('department_manager')
      )
  )
);

drop policy if exists p_shift_site_feature_gate_log_select_manager on app_shift_manager.shift_site_feature_gate_log;
create policy p_shift_site_feature_gate_log_select_manager
on app_shift_manager.shift_site_feature_gate_log
for select
using (
  exists (
    select 1
    from app_shift_manager.shift_site_license sl
    where sl.site_license_id = shift_site_feature_gate_log.site_license_id
      and sl.company_id = app_shift_manager.fn_current_company_id()
      and (
        app_shift_manager.fn_has_role('enterprise_admin')
        or app_shift_manager.fn_has_role('shift_admin')
      )
  )
);
