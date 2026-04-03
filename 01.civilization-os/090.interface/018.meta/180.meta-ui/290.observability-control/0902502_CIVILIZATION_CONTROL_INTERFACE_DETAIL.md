# ============================================================
# CIVILIZATION CONTROL INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for operational control actions.

required_fields:
- action_ref
- action_type
- target_scope
- action_summary
- correlation_id

compatibility_rule:
Control interfaces must remain action-aware and target-aware.
