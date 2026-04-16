# ============================================================
# BUSINESS AI WORKER WORLD SCOPE FLOW
# ============================================================

status: canonical
layer: flow
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines world-scope gating flow.

flow:
1. request specifies civilization_internal, real_world, or cross_world
2. worker capability and policy are checked
3. if scope is allowed, flow continues
4. if scope is not allowed, request is rejected or rerouted
