# ============================================================
# BUSINESS OS AIWORKER DISPATCH AND RESULT INTERFACE
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-20

purpose:
- Fix the high-level interface between BusinessOS and AiworkerOS.

business_to_aiworker_requests:
- contract_activated
- dispatch_requested
- assignment_requested
- work_order_opened
- suspend_requested
- terminate_requested
- privileged_usage_requested when applicable

aiworker_to_business_results:
- worker_assigned
- worker_started
- worker_status_changed
- worker_result_summary_posted
- worker_exception_reported
- worker_repair_or_rebuild_status_changed when relevant
- worker_usage_summary_posted

interface_rule:
- BusinessOS sends business-origin commercial and dispatch intent.
- AiworkerOS performs worker-entity-side assignment and lifecycle handling.
- BusinessOS stores business-facing summaries and commercial outcomes.
- AiworkerOS stores worker-entity truth.

result:
- Dispatch and result interface fixed between BusinessOS and AiworkerOS.
