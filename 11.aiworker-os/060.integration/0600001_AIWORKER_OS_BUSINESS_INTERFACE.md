# ============================================================
# AIWORKER OS BUSINESS INTERFACE
# ============================================================

status: canonical
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

business_to_aiworker_interfaces:
- approved_dispatch_request
- approved_work_order_reference
- contract_scope_reference
- business_approval_reference
- billing_visibility_reference
- ERP linkage reference when required

aiworker_to_business_interfaces:
- assignment_decision_summary
- worker_reservation_summary
- escalation_summary
- execution_result_summary
- completion_summary
- failure_summary
- repair_or_rebuild_notice_summary

boundary_rule:
BusinessOS is not allowed to receive unrestricted worker raw growth,
raw restricted state internals,
or unrestricted worker private internals.

final_rule:
Business interfaces are summary-safe and business-facing by design.
