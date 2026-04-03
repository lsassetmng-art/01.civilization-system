# ============================================================
# CIVILIZATION REMOVAL_INTERFACE_DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for migration enforcement.

required_fields:
- execution_ref
- subject_scope
- source_order_ref
- host_scope
- correlation_id

compatibility_rule:
Migration-enforcement interfaces must remain order-aware and authority-aware.
