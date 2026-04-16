-- ============================================================
-- SHIFT MANAGER SUBSCRIPTION INDEXES
-- ============================================================

create index if not exists idx_shift_site_license_company_active
  on app_shift_manager.shift_site_license (company_id, active_flag);

create index if not exists idx_shift_site_subscription_status_license_changed
  on app_shift_manager.shift_site_subscription_status (site_license_id, status_changed_at desc);

create index if not exists idx_shift_site_subscription_status_status
  on app_shift_manager.shift_site_subscription_status (subscription_status);

create index if not exists idx_shift_site_feature_gate_log_license_evaluated
  on app_shift_manager.shift_site_feature_gate_log (site_license_id, evaluated_at desc);

create index if not exists idx_shift_site_feature_gate_log_feature_decision
  on app_shift_manager.shift_site_feature_gate_log (feature_code, decision);
