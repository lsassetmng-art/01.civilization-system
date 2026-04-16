# ============================================================
# BUSINESS AI WORKER EMPLOYMENT MODEL
# ============================================================

status: canonical
layer: model
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines company-scoped worker employment model.

minimum_fields:
- employment_id
- company_id
- worker_template_id
- worker_id
- employment_status
- subscribed_rank
- started_at
- ended_at
- assigned_capacity_slot_id
