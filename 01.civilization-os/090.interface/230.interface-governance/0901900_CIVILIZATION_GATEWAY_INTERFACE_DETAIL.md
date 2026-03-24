# ============================================================
# CIVILIZATION GATEWAY INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for governed gateway access.

required_fields:
- target_interface_code
- contract_version
- permission_code
- correlation_id
- actor_scope

success_condition:
- gateway request classified and routed safely

failure_condition:
- invalid interface target
- incompatible contract version
- missing permission basis
