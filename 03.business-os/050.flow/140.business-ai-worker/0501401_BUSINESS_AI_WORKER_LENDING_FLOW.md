# ============================================================
# BUSINESS AI WORKER LENDING FLOW
# ============================================================

status: canonical
layer: flow
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines the standard lending flow.

flow:
1. consumer app requests AI worker lending
2. foundation web validates company, rank, activity mode, world scope, specialty, and capacity
3. if available, lending is granted
4. slot becomes occupied
5. worker becomes active in requested experience
6. usage log starts
