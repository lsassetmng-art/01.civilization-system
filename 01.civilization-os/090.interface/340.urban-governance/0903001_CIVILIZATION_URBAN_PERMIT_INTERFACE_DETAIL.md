# ============================================================
# CIVILIZATION URBAN PERMIT INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for urban permits and inspections.

required_fields:
- permit_code or inspection_ref
- parcel_scope
- building_scope where applicable
- approval_basis
- correlation_id

compatibility_rule:
Urban permit interfaces must expose explicit parcel and building semantics.
