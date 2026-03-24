# ============================================================
# CIVILIZATION ZONING INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for zoning and urban plans.

required_fields:
- plan_code or zone_code
- territory_scope
- zoning_class where applicable
- approval_basis
- correlation_id

success_condition:
- zoning request classified and routed safely

failure_condition:
- invalid target
- missing territory or approval basis
- incompatible zoning handling
