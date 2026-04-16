# ============================================================
# BUSINESS AI WORKER QUEUE PROMOTION FLOW
# ============================================================

status: canonical
layer: flow
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines queue promotion flow.

flow:
1. capacity becomes available
2. eligible queued reservations are scanned
3. rank priority and reservation time are applied
4. specialty and world-scope compatibility are revalidated
5. selected reservation is promoted to granted
6. consumer app is notified
