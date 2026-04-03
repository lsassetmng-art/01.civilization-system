# ============================================================
# CIVILIZATION TOURISM COMPLIANCE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for tourism funding and compliance.

required_fields:
- allocation_ref or review_ref
- recipient_scope or target_scope
- tourism basis
- correlation_id

compatibility_rule:
Tourism-compliance interfaces must remain recipient-aware and review-aware.
