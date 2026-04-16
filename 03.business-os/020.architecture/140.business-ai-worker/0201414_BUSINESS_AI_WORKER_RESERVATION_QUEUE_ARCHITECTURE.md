# ============================================================
# BUSINESS AI WORKER RESERVATION QUEUE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines reservation queue architecture.

queue_rule:
When all active slots are occupied,
new requests enter a reservation queue.

ordering_rule:
Primary priority is rank priority.
Secondary priority is reservation time.
Optional policy may add emergency priority.

rank_priority_order:
- Extra
- High
- Standard
- Entry
