# ============================================================
# BUSINESS AI WORKER LENDING IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines lending implementation structure.

implementation_steps:
- validate request
- resolve company scope
- resolve activity mode
- resolve specialty and world scope
- resolve rank and subscription
- resolve capacity
- grant or queue
- write lending audit
