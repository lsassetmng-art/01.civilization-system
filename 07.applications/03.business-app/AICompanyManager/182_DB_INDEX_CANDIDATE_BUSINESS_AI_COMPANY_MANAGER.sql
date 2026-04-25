-- ============================================================
-- AICompanyManager DB Index Candidate
-- ============================================================
-- Review candidate only. Do not apply in Phase C.
-- ============================================================

create index if not exists idx_aicm_company_owner_user_id
  on business.ai_company_manager_company(owner_user_id);

create index if not exists idx_aicm_company_status
  on business.ai_company_manager_company(status);

create index if not exists idx_aicm_project_company_id
  on business.ai_company_manager_project(company_id);

create index if not exists idx_aicm_project_owner_user_id
  on business.ai_company_manager_project(owner_user_id);

create index if not exists idx_aicm_project_status
  on business.ai_company_manager_project(project_status);

create index if not exists idx_aicm_project_created_at
  on business.ai_company_manager_project(created_at desc);

create index if not exists idx_aicm_policy_project_id
  on business.ai_company_manager_policy(project_id);

create index if not exists idx_aicm_policy_status
  on business.ai_company_manager_policy(policy_status);

create index if not exists idx_aicm_pipeline_project_id
  on business.ai_company_manager_pipeline_run(project_id);

create index if not exists idx_aicm_pipeline_policy_id
  on business.ai_company_manager_pipeline_run(policy_id);

create index if not exists idx_aicm_pipeline_aiworker_run_ref
  on business.ai_company_manager_pipeline_run(aiworker_run_ref);

create index if not exists idx_aicm_pipeline_status
  on business.ai_company_manager_pipeline_run(run_status);

create index if not exists idx_aicm_role_assignment_run_id
  on business.ai_company_manager_role_assignment(pipeline_run_id);

create index if not exists idx_aicm_role_assignment_role_code
  on business.ai_company_manager_role_assignment(role_code);

create index if not exists idx_aicm_stage_run_id
  on business.ai_company_manager_stage(pipeline_run_id);

create index if not exists idx_aicm_stage_stage_code
  on business.ai_company_manager_stage(stage_code);

create index if not exists idx_aicm_stage_status
  on business.ai_company_manager_stage(stage_status);

create index if not exists idx_aicm_deliverable_run_id
  on business.ai_company_manager_deliverable(pipeline_run_id);

create index if not exists idx_aicm_deliverable_parent_id
  on business.ai_company_manager_deliverable(parent_deliverable_id);

create index if not exists idx_aicm_deliverable_status
  on business.ai_company_manager_deliverable(deliverable_status);

create index if not exists idx_aicm_review_deliverable_id
  on business.ai_company_manager_review(deliverable_id);

create index if not exists idx_aicm_review_run_id
  on business.ai_company_manager_review(pipeline_run_id);

create index if not exists idx_aicm_review_status
  on business.ai_company_manager_review(review_status);

create index if not exists idx_aicm_return_review_id
  on business.ai_company_manager_return_request(review_id);

create index if not exists idx_aicm_return_deliverable_id
  on business.ai_company_manager_return_request(deliverable_id);

create index if not exists idx_aicm_return_run_id
  on business.ai_company_manager_return_request(pipeline_run_id);

create index if not exists idx_aicm_return_status
  on business.ai_company_manager_return_request(return_status);

create index if not exists idx_aicm_approval_project_id
  on business.ai_company_manager_approval(project_id);

create index if not exists idx_aicm_approval_run_id
  on business.ai_company_manager_approval(pipeline_run_id);

create index if not exists idx_aicm_approval_deliverable_id
  on business.ai_company_manager_approval(deliverable_id);

create index if not exists idx_aicm_approval_status
  on business.ai_company_manager_approval(approval_status);

create index if not exists idx_aicm_delivery_project_id
  on business.ai_company_manager_delivery(project_id);

create index if not exists idx_aicm_delivery_run_id
  on business.ai_company_manager_delivery(pipeline_run_id);

create index if not exists idx_aicm_delivery_approval_id
  on business.ai_company_manager_delivery(approval_id);

create index if not exists idx_aicm_delivery_status
  on business.ai_company_manager_delivery(delivery_status);

create index if not exists idx_aicm_queue_owner_user_id
  on business.ai_company_manager_queue_item(owner_user_id);

create index if not exists idx_aicm_queue_project_id
  on business.ai_company_manager_queue_item(project_id);

create index if not exists idx_aicm_queue_status
  on business.ai_company_manager_queue_item(queue_status);

create index if not exists idx_aicm_queue_type
  on business.ai_company_manager_queue_item(queue_type);

create index if not exists idx_aicm_audit_owner_user_id
  on business.ai_company_manager_audit_log(owner_user_id);

create index if not exists idx_aicm_audit_project_id
  on business.ai_company_manager_audit_log(project_id);

create index if not exists idx_aicm_audit_run_id
  on business.ai_company_manager_audit_log(pipeline_run_id);

create index if not exists idx_aicm_audit_action_code
  on business.ai_company_manager_audit_log(action_code);

create index if not exists idx_aicm_audit_created_at
  on business.ai_company_manager_audit_log(created_at desc);
