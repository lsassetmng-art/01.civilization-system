# ============================================================
# BUSINESS AI WORKER RELEASE FLOW
# ============================================================

status: canonical
layer: flow
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines release flow.

flow:
1. consumer app or runtime triggers release
2. lending is marked released
3. slot is returned to available state
4. usage log is closed
5. next eligible reservation is considered for promotion
