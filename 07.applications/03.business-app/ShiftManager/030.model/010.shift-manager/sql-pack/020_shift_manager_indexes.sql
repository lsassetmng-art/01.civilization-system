-- ============================================================
-- SHIFT MANAGER INDEXES
-- ============================================================

create index if not exists idx_shift_schedule_company_period
  on app_shift_manager.shift_schedule (company_id, period_start_date, period_end_date);

create index if not exists idx_shift_schedule_status
  on app_shift_manager.shift_schedule (status);

create index if not exists idx_shift_schedule_scope
  on app_shift_manager.shift_schedule (target_scope_type, target_scope_id);

create index if not exists idx_shift_schedule_generation_mode
  on app_shift_manager.shift_schedule (generation_mode);

create index if not exists idx_shift_schedule_auto_flags
  on app_shift_manager.shift_schedule (auto_generated_flag, has_generation_warnings);

create index if not exists idx_shift_assignment_schedule_date
  on app_shift_manager.shift_assignment (schedule_id, shift_date);

create index if not exists idx_shift_assignment_person_date
  on app_shift_manager.shift_assignment (person_id, shift_date);

create index if not exists idx_shift_assignment_department_date
  on app_shift_manager.shift_assignment (department_id, shift_date);

create index if not exists idx_shift_assignment_team_date
  on app_shift_manager.shift_assignment (team_id, shift_date);

create index if not exists idx_shift_publication_schedule_version
  on app_shift_manager.shift_publication (schedule_id, publication_version_no desc);

create index if not exists idx_shift_publication_status_published_at
  on app_shift_manager.shift_publication (publication_status, published_at desc);

create index if not exists idx_shift_publication_assignment_publication_date
  on app_shift_manager.shift_publication_assignment (publication_id, shift_date);

create index if not exists idx_shift_publication_assignment_person_date
  on app_shift_manager.shift_publication_assignment (person_id, shift_date);

create index if not exists idx_shift_view_scope_viewer_publication
  on app_shift_manager.shift_view_scope (viewer_person_id, publication_id);

create index if not exists idx_shift_view_scope_viewer_visible
  on app_shift_manager.shift_view_scope (viewer_person_id, visible_person_id);

create index if not exists idx_shift_view_scope_publication_active
  on app_shift_manager.shift_view_scope (publication_id, active_flag);

create index if not exists idx_shift_notification_target_status_queue
  on app_shift_manager.shift_notification (target_person_id, delivery_status, queued_at desc);

create index if not exists idx_shift_notification_channel_type
  on app_shift_manager.shift_notification (channel_type);

create index if not exists idx_erp_linkage_state_status_updated
  on app_shift_manager.erp_linkage_state (export_status, updated_at desc);

create index if not exists idx_shift_generation_rule_company_active
  on app_shift_manager.shift_generation_rule (company_id, active_flag);

create index if not exists idx_shift_generation_rule_scope
  on app_shift_manager.shift_generation_rule (target_scope_type, target_scope_id);

create index if not exists idx_shift_generation_result_schedule_generated
  on app_shift_manager.shift_generation_result (schedule_id, generated_at desc);

create index if not exists idx_shift_generation_result_rule_generated
  on app_shift_manager.shift_generation_result (generation_rule_id, generated_at desc);

create index if not exists idx_shift_generation_warning_result
  on app_shift_manager.shift_generation_warning (generation_result_id);

create index if not exists idx_shift_generation_warning_level_date
  on app_shift_manager.shift_generation_warning (warning_level, target_date);

create index if not exists idx_shift_pdf_export_generated
  on app_shift_manager.shift_pdf_export_history (generated_at desc);

create index if not exists idx_shift_pdf_export_publication
  on app_shift_manager.shift_pdf_export_history (publication_id);

create index if not exists idx_shift_pdf_export_schedule
  on app_shift_manager.shift_pdf_export_history (schedule_id);
