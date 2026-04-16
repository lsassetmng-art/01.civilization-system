# ============================================================
# BUSINESS AI WORKER WORLD SCOPE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines world-scope runtime gating.

world_scopes:
- civilization_internal
- real_world
- cross_world

rule:
If a worker is not permitted in the requested world scope,
the request must be rejected or rerouted.
