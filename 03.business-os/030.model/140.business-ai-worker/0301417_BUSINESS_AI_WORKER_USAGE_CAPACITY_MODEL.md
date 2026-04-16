# ============================================================
# BUSINESS AI WORKER USAGE CAPACITY MODEL
# ============================================================

status: canonical
layer: model
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines snapshot model for capacity usage.

minimum_fields:
- capacity_snapshot_id
- company_id
- rank
- subscribed_capacity
- active_usage_count
- free_slots
- queued_requests
- captured_at
