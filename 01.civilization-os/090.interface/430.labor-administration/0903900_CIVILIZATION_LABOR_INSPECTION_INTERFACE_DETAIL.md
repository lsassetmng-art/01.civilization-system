# ============================================================
# CIVILIZATION LABOR INSPECTION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for labor inspections.

required_fields:
- inspection_ref
- employer_scope
- inspection_result where applicable
- safety basis
- correlation_id

success_condition:
- labor inspection request classified and routed safely

failure_condition:
- invalid target
- missing employer or safety basis
- incompatible labor handling
