# ============================================================
# BUSINESS AI WORKER SLOT CAPACITY POLICY
# ============================================================

status: canonical
layer: policy
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines slot and capacity policy.

rules:
- purchased capacity defines maximum simultaneous usable workers
- occupied slots block new immediate grants for the same compatible pool
- administrative overrides must be auditable
- capacity policy belongs to BusinessOS foundation web
