# ============================================================
# CIVILIZATION DIPLOMATIC MISSION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for missions and envoys.

required_fields:
- mission_code or assignment_ref
- sending_scope
- receiving_scope
- envoy_scope where applicable
- correlation_id

success_condition:
- diplomatic mission request classified and routed safely

failure_condition:
- invalid target
- missing accreditation or authority basis
- incompatible mission handling
