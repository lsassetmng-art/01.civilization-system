# ============================================================
# BUSINESS GOVERNANCE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for approval, ownership boundary,
compatibility, and audit governance in BusinessOS.

required_fields:
- trail_ref or boundary_ref or bundle_ref
- authority_basis where applicable
- source_version_code where applicable
- correlation_id

compatibility_rule:
Business governance interfaces must remain authority-aware and compatibility-aware.
