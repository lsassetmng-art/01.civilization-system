# ============================================================
# BUSINESS AI WORKER RANK PRIORITY RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime priority effects by rank.

priority_order:
- Extra
- High
- Standard
- Entry

effects:
- higher reservation priority
- better promotion priority
- stronger matching priority where capacity is constrained
