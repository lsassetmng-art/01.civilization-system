# ============================================================
# CIVILIZATION URBAN ENFORCEMENT INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for urban enforcement and demolition.

required_fields:
- violation_ref or order_code
- target_building_scope
- violation_summary or order_summary
- approval_basis where applicable
- correlation_id

compatibility_rule:
Urban-enforcement interfaces must remain zoning-aware and order-aware.
