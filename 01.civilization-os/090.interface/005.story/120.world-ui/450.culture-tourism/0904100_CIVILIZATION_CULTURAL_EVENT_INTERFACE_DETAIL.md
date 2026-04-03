# ============================================================
# CIVILIZATION CULTURAL EVENT INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for cultural event permits.

required_fields:
- permit_code
- organizer_scope
- event_summary
- approval_basis
- correlation_id

success_condition:
- cultural-event request classified and routed safely

failure_condition:
- invalid target
- missing organizer or approval basis
- incompatible cultural handling
