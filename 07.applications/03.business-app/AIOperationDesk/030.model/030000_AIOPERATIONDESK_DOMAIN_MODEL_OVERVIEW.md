# ============================================================
# AI OPERATION DESK DOMAIN MODEL OVERVIEW
# ============================================================

status: draft-fixed
app: AIOperationDesk
layer: model
owner: Boss
prepared_by: Zero

core_models:
- supported_app
- supported_app_scope
- operation_request
- work_order
- execution_job
- execution_step
- target_binding
- output_binding
- resident_context
- review_request
- approval_request
- audit_trace
- retry_plan
- failure_record
- notification_rule
- summary_batch
- connector_type
- write_surface_policy

erp_models:
- erp_consult_request
- erp_draft_request
- erp_execution_request
- provisional_voucher_draft

ai_worker_relation_models:
- domain_role_expectation
- view_family_requirement
- governed_execution_route
