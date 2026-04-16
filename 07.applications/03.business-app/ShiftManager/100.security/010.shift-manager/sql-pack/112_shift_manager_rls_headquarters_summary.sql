-- ============================================================
-- SHIFT MANAGER RLS: HEADQUARTERS SUMMARY TABLES
-- ============================================================

alter table app_shift_manager.shift_site_dashboard_snapshot enable row level security;
alter table app_shift_manager.shift_site_analytics_snapshot enable row level security;

drop policy if exists p_shift_site_dashboard_snapshot_select on app_shift_manager.shift_site_dashboard_snapshot;
create policy p_shift_site_dashboard_snapshot_select
on app_shift_manager.shift_site_dashboard_snapshot
for select
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('headquarters_operator')
  )
);

drop policy if exists p_shift_site_analytics_snapshot_select on app_shift_manager.shift_site_analytics_snapshot;
create policy p_shift_site_analytics_snapshot_select
on app_shift_manager.shift_site_analytics_snapshot
for select
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('headquarters_operator')
  )
);
