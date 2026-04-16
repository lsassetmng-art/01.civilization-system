# ============================================================
# BUSINESS AI WORKER SLOT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines employment slot architecture.

slot_rule:
Purchased AI employee count defines usable worker capacity.

slot_behavior:
- available slot allows immediate usage
- occupied slot prevents new immediate allocation
- released slot may serve queued reservation

slot_truth:
Slot truth belongs to BusinessOS.
