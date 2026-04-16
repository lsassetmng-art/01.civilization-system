-- ============================================================
-- SHIFT MANAGER ADDITIONAL FEATURE INDEXES
-- ============================================================

create index if not exists idx_shift_requested_day_off_company_person_date
  on app_shift_manager.shift_requested_day_off (company_id, person_id, requested_date);

create index if not exists idx_shift_requested_day_off_company_site_status
  on app_shift_manager.shift_requested_day_off (company_id, site_id, requested_status);

create index if not exists idx_shift_publication_difference_new_publication
  on app_shift_manager.shift_publication_difference (new_publication_id, affected_person_id);

create index if not exists idx_shift_change_confirmation_publication_target
  on app_shift_manager.shift_change_confirmation (publication_id, target_person_id, confirmation_status);

create index if not exists idx_shift_auto_generation_schedule_license_active
  on app_shift_manager.shift_auto_generation_schedule (site_license_id, active_flag);

create index if not exists idx_shift_auto_generation_execution_schedule_executed
  on app_shift_manager.shift_auto_generation_execution (auto_generation_schedule_id, executed_at desc);

create index if not exists idx_shift_site_dashboard_snapshot_site_snapshot
  on app_shift_manager.shift_site_dashboard_snapshot (site_id, snapshot_at desc);

create index if not exists idx_shift_site_analytics_snapshot_site_period
  on app_shift_manager.shift_site_analytics_snapshot (site_id, period_start_date, period_end_date);
