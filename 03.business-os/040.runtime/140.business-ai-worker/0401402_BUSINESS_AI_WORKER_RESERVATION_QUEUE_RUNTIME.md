# ============================================================
# BUSINESS AI WORKER RESERVATION QUEUE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines reservation queue runtime.

reservation_states:
- queued
- promotable
- granted
- cancelled
- expired
- rejected

priority_rule:
Primary ordering is rank priority.
Secondary ordering is reservation time.
Optional emergency policy may override standard ordering.
