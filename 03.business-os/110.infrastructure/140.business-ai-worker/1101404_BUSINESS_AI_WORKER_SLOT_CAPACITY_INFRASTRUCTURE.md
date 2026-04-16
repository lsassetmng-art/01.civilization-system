# ============================================================
# BUSINESS AI WORKER SLOT CAPACITY INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines slot and capacity infrastructure.

components:
- slot state store
- active occupancy store
- capacity snapshot generator
- slot release propagation
- anomaly detection support
