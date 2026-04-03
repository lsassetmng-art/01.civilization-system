# ============================================================
# CIVILIZATION RECOVERY INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for recovery material allocation.

required_fields:
- allocation_ref
- target_project_ref
- material_summary
- allocated_quantity
- correlation_id

compatibility_rule:
Recovery interfaces must remain project-aware and material-aware.
