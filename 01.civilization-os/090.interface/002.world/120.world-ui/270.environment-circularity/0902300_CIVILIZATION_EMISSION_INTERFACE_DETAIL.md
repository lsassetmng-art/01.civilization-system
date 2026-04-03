# ============================================================
# CIVILIZATION EMISSION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for emissions and quotas.

required_fields:
- emission_scope
- permit_code
- quota_code
- measured_value
- measurement_unit
- correlation_id

success_condition:
- emission request classified and routed safely

failure_condition:
- invalid target
- missing permit or quota basis
- incompatible unit handling
