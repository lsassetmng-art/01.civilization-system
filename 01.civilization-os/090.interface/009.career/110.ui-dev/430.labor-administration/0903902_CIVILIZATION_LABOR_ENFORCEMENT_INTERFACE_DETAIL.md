# ============================================================
# CIVILIZATION LABOR ENFORCEMENT INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for labor enforcement.

required_fields:
- order_code or sanction_code
- employer_scope
- approval_basis
- violation summary
- correlation_id

compatibility_rule:
Labor-enforcement interfaces must remain employer-aware and approval-aware.
