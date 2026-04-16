-- ============================================================
-- SHIFT MANAGER ENABLE RLS
-- ============================================================

alter table app_shift_manager.shift_schedule enable row level security;
alter table app_shift_manager.shift_assignment enable row level security;
alter table app_shift_manager.shift_publication enable row level security;
alter table app_shift_manager.shift_publication_assignment enable row level security;
alter table app_shift_manager.shift_share_rule enable row level security;
alter table app_shift_manager.shift_share_rule_target enable row level security;
alter table app_shift_manager.shift_view_scope enable row level security;
alter table app_shift_manager.shift_notification enable row level security;
alter table app_shift_manager.erp_linkage_state enable row level security;
alter table app_shift_manager.shift_publish_history enable row level security;
alter table app_shift_manager.shift_share_history enable row level security;
alter table app_shift_manager.shift_access_audit enable row level security;
alter table app_shift_manager.shift_generation_rule enable row level security;
alter table app_shift_manager.shift_generation_result enable row level security;
alter table app_shift_manager.shift_generation_warning enable row level security;
alter table app_shift_manager.shift_pdf_export_history enable row level security;
