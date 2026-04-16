# ============================================================
# BUSINESS AI WORKER EXECUTION TASK MODEL
# ============================================================

status: canonical
layer: model
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines execution task model.

minimum_fields:
- execution_task_id
- company_id
- worker_id
- lending_id
- task_type
- task_summary
- execution_status
- review_required
- approval_required
- completed_at
