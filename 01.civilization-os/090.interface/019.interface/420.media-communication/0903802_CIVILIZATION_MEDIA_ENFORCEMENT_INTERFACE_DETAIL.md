# ============================================================
# CIVILIZATION MEDIA ENFORCEMENT INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for correction orders and emergency overrides.

required_fields:
- order_code or override_code
- target_publication_ref or target_broadcast_scope
- approval_basis
- correlation_id

compatibility_rule:
Media-enforcement interfaces must remain target-aware and emergency-aware.
