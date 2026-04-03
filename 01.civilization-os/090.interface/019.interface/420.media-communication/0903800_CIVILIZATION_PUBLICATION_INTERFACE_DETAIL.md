# ============================================================
# CIVILIZATION PUBLICATION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for publication approvals.

required_fields:
- approval_code
- publisher_scope
- publication_summary
- approval_basis
- correlation_id

success_condition:
- publication request classified and routed safely

failure_condition:
- invalid target
- missing publisher or approval basis
- incompatible publication handling
