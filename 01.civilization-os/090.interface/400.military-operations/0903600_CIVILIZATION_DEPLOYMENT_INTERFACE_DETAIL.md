# ============================================================
# CIVILIZATION DEPLOYMENT INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for military deployments.

required_fields:
- order_code
- target_theater_scope
- issuing_scope
- deployment_summary
- correlation_id

success_condition:
- deployment request classified and routed safely

failure_condition:
- invalid target
- missing command or theater basis
- incompatible deployment handling
