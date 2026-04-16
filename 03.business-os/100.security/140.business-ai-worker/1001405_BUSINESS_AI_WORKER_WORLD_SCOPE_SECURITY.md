# ============================================================
# BUSINESS AI WORKER WORLD SCOPE SECURITY
# ============================================================

status: canonical
layer: security
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines world-scope security.

world_scopes:
- civilization_internal
- real_world
- cross_world

rule:
Requests outside allowed world scope must be rejected or rerouted.
Real-world actions require stricter authorization review.
