# ============================================================
# AIWORKER BUSINESSOS INTERFACE EXACT DESIGN
# ============================================================

status: exact-integration
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact canonical interface between business and aiworker.

business_to_aiworker_events:
- AIWORKER_DISPATCH_REQUEST_CREATED
- AIWORKER_WORK_ORDER_UPDATED
- AIWORKER_APPROVAL_CONTEXT_UPDATED
- AIWORKER_CONTRACT_CONTEXT_ATTACHED
- AIWORKER_CANCEL_REQUESTED

required_business_fields:
- business_request_id
- tenant_company_id
- requested_domain
- requested_role
- requested_lane
- requested_app_scope
- priority_band
- approval_requirement_code
- billing_context_id
- erp_context_id
- request_created_at

aiworker_to_business_events:
- AIWORKER_ASSIGNMENT_DECIDED
- AIWORKER_ASSIGNMENT_REJECTED
- AIWORKER_EXECUTION_STATE_CHANGED
- AIWORKER_RESULT_SUMMARY_READY
- AIWORKER_ESCALATION_REQUIRED
- AIWORKER_REPAIR_STATE_CHANGED

required_aiworker_fields:
- worker_id
- worker_assignment_id
- business_request_id
- aiworker_status_code
- result_summary_code
- escalation_code
- repair_state_code
- emitted_at

hard_rule:
Business receives business-facing result truth and must not infer worker-side raw internals as canonical.
