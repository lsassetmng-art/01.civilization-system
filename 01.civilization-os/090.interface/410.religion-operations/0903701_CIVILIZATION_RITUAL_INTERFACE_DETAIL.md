# ============================================================
# CIVILIZATION RITUAL INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for ritual permits.

required_fields:
- permit_code
- applicant_scope
- ritual_summary
- approval_basis
- correlation_id

compatibility_rule:
Ritual interfaces must remain applicant-aware and approval-aware.
