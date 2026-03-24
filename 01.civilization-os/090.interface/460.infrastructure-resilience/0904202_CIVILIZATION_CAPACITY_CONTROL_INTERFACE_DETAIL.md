# ============================================================
# CIVILIZATION CAPACITY CONTROL INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for load shedding and reroute handling.

required_fields:
- order_code or action_ref
- target_service_scope
- emergency basis
- correlation_id

compatibility_rule:
Capacity-control interfaces must remain service-aware and emergency-aware.
