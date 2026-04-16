# ============================================================
# BUSINESS AI WORKER CAPACITY PROMOTION RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines promotion runtime from queue to active grant.

promotion_steps:
- slot released
- next eligible reservation selected
- compatibility validated
- grant issued
- slot occupied
- consumer app notified
