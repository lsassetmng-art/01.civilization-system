# ============================================================
# CIVILIZATION MILITARY LOGISTICS INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for military logistics handling.

required_fields:
- assignment_ref
- target_unit_scope
- logistics_summary
- supply basis
- correlation_id

compatibility_rule:
Military-logistics interfaces must remain unit-aware and supply-aware.
