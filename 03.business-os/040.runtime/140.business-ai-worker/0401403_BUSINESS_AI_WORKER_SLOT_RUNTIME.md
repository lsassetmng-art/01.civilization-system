# ============================================================
# BUSINESS AI WORKER SLOT RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines slot runtime behavior.

slot_states:
- free
- reserved
- occupied
- releasing
- unavailable

rules:
- granted lending occupies a slot
- queued reservation may hold reservable priority but not occupy a slot
- release returns slot to free unless maintenance or suspension applies
