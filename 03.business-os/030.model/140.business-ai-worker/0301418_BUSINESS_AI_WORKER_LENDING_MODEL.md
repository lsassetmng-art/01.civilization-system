# ============================================================
# BUSINESS AI WORKER LENDING MODEL
# ============================================================

status: canonical
layer: model
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines active lending model.

minimum_fields:
- lending_id
- company_id
- worker_id
- capacity_slot_id
- granted_rank
- activity_mode
- world_scope
- specialty
- app_surface
- task_summary
- lending_status
- granted_at
- expires_at
- released_at
