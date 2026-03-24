# ============================================================
# CIVILIZATION RESIDENCY INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for residence and entry handling.

required_fields:
- permit_code or clearance_ref
- holder_scope
- host_scope
- approval_basis where applicable
- correlation_id

success_condition:
- residency request classified and routed safely

failure_condition:
- invalid target
- missing host or approval basis
- incompatible residency handling
