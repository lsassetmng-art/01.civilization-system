# ============================================================
# SHIFT MANAGER INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

infra_needs:
- persistent schedule storage
- publication version storage
- permission evaluation support
- notification transport
- ERP connectivity path
- mobile API delivery path

notes:
The exact stack may vary by implementation phase.
Infrastructure shall support realtime visible publication changes.
