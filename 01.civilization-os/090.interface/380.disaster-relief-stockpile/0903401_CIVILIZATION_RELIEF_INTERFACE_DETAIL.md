# ============================================================
# CIVILIZATION RELIEF INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for ration and emergency transport handling.

required_fields:
- distribution_ref or allocation_ref
- target_group_ref or target_route_ref
- quantity summary
- priority basis
- correlation_id

compatibility_rule:
Relief interfaces must expose explicit target and priority semantics.
