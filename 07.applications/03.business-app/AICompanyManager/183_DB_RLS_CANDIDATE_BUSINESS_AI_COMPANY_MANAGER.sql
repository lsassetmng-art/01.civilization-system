-- ============================================================
-- AICompanyManager RLS Candidate
-- ============================================================
-- Review candidate only. Do not apply in Phase C.
--
-- Principle:
-- - owner_user_id based access for top-level owner records.
-- - child records should be accessed through project ownership.
-- - Exact implementation may require existing auth.uid() convention review.
-- ============================================================

alter table business.ai_company_manager_company enable row level security;
alter table business.ai_company_manager_project enable row level security;
alter table business.ai_company_manager_policy enable row level security;
alter table business.ai_company_manager_pipeline_run enable row level security;
alter table business.ai_company_manager_role_assignment enable row level security;
alter table business.ai_company_manager_stage enable row level security;
alter table business.ai_company_manager_deliverable enable row level security;
alter table business.ai_company_manager_review enable row level security;
alter table business.ai_company_manager_return_request enable row level security;
alter table business.ai_company_manager_approval enable row level security;
alter table business.ai_company_manager_delivery enable row level security;
alter table business.ai_company_manager_queue_item enable row level security;
alter table business.ai_company_manager_audit_log enable row level security;

-- Candidate policy names:
-- aicm_company_owner_select
-- aicm_company_owner_insert
-- aicm_company_owner_update
-- aicm_project_owner_select
-- aicm_project_owner_insert
-- aicm_project_owner_update
-- aicm_child_by_project_owner_select
-- aicm_child_by_project_owner_insert
-- aicm_child_by_project_owner_update
-- aicm_queue_owner_select
-- aicm_queue_owner_insert
-- aicm_queue_owner_update
-- aicm_audit_owner_select
-- aicm_audit_insert_system_or_owner

-- Exact CREATE POLICY statements are intentionally left as candidate design.
-- Sato review must confirm the project-wide auth.uid() convention before apply.
