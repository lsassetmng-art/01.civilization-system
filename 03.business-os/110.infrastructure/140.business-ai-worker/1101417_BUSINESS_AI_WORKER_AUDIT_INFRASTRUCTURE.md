# ============================================================
# BUSINESS AI WORKER AUDIT INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines audit infrastructure.

components:
- lending audit store
- reservation audit store
- consent audit store
- session audit store
- work audit store
- handoff audit store

rule:
Audit infrastructure must support end-to-end trace lookup.
