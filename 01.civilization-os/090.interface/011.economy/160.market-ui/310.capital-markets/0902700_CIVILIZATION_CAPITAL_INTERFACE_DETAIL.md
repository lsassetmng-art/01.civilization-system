# ============================================================
# CIVILIZATION CAPITAL INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for capital instruments and ownership.

required_fields:
- instrument_code
- instrument_version
- issuer_scope
- holder_scope where applicable
- correlation_id

success_condition:
- capital request classified and routed safely

failure_condition:
- invalid target
- missing issuer or ownership basis
- incompatible instrument handling
