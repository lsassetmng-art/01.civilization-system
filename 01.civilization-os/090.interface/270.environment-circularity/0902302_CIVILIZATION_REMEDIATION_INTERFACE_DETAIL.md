# ============================================================
# CIVILIZATION REMEDIATION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for remediation and restoration handling.

required_fields:
- order_code
- target_scope
- remediation_summary
- approval_basis
- correlation_id

compatibility_rule:
Remediation interfaces must remain order-aware and basis-aware.
