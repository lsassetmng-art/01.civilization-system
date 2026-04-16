# ============================================================
# BUSINESS AI WORKER SUBSCRIPTION MODEL
# ============================================================

status: canonical
layer: model
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines subscription model for AI worker usage.

minimum_fields:
- subscription_id
- company_id
- subscribed_rank
- subscribed_capacity
- active_from
- active_until
- billing_status
- auto_renew
