# ============================================================
# CIVILIZATION OBSERVABILITY INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for observations and KPI access.

required_fields:
- kpi_code
- observation_ref
- observed_value
- measurement_unit
- correlation_id

success_condition:
- observation request classified and routed safely

failure_condition:
- invalid target
- missing KPI basis
- incompatible unit handling
