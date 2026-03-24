# ============================================================
# CIVILIZATION INSPECTION DIPLOMACY INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for inspection requests, missions, and incidents.

required_fields:
- request_ref or mission_ref
- target_scope
- host_scope where applicable
- mandate_code where applicable
- correlation_id

compatibility_rule:
Inspection-diplomacy interfaces must remain mandate-aware and host-aware.
