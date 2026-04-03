# ============================================================
# CIVILIZATION ASYLUM INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for asylum and nationality handling.

required_fields:
- review_ref or grant_code
- applicant_scope
- protection_basis or grant_basis
- host_scope where applicable
- correlation_id

compatibility_rule:
Asylum interfaces must remain applicant-aware and basis-aware.
