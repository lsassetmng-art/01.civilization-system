# ============================================================
# BUSINESS AI WORKER SLOT MODEL
# ============================================================

status: canonical
layer: model
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines purchased capacity slot model.

minimum_fields:
- capacity_slot_id
- company_id
- subscribed_rank
- slot_status
- current_lending_id
- reserved_for_reservation_id
- activated_at
- released_at
