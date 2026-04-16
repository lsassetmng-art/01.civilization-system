# ============================================================
# PHASE 07 TASK BREAKDOWN
# ERP Reflection
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-07

backend_tasks:
- implement ERP payment reflection request API
- implement ERP reflection result retrieval API
- implement retry path for failed reflection
- enforce FRONT_LOCAL rejection for ERP-master reflection path
- write reflection request, retry, fail, and success audit events

frontend_tasks:
- surface reflection status in invoice detail
- provide reflection request action where allowed
- provide retry action where allowed
- display reflection failure reason clearly

data_tasks:
- create erp_reflection_request table
- create erp_reflection_result table
- index reflection request by invoice and status
- index reflection result by request and status

test_tasks:
- test ERP_MASTER reflection request success path
- test FRONT_LOCAL reflection denial
- test failed reflection retrieval
- test retry visibility and audit path
- test permission limits for reflection actions

review_tasks:
- review BusinessOS boundary compliance
- review operator understanding of reflection failure
- review ERP authority consistency

phase_completion_focus:
- ERP coexistence works without authority leakage
