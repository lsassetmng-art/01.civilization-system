# ============================================================
# CIVILIZATION AUTHENTICATION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for credentials and token grants.

required_fields:
- credential_code or grant_ref
- holder_scope
- target_interface_code where applicable
- assurance_level or claims summary
- correlation_id

success_condition:
- authentication request classified and routed safely

failure_condition:
- invalid target
- missing holder or authorization basis
- incompatible authentication handling
