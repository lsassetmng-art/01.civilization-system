# ============================================================
# BUSINESS AI WORKER EMPLOYMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines AI employee employment structure.

employment_scope:
- company scoped
- tenant controlled
- subscribable by purchased capacity
- activated per hired slot

employment_states:
- planned
- subscribed
- active
- suspended
- retired

employment_truth:
Employment truth belongs to BusinessOS.
Applications consume employment state and must not own it.
