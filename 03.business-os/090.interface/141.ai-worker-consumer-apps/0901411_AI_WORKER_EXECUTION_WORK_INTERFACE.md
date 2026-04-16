# ============================================================
# AI WORKER EXECUTION WORK INTERFACE
# ============================================================

status: canonical
layer: interface
domain: ai-worker-consumer-apps
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines work-order interface for execution apps.

required_fields:
- work_order_id
- requested_output
- platform_target
- review_required
- approval_required
- execution_log_id
