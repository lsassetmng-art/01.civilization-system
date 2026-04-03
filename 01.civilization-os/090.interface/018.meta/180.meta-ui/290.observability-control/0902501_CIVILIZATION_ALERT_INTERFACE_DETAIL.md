# ============================================================
# CIVILIZATION ALERT INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for threshold breaches and alert routing.

required_fields:
- kpi_code
- breach_ref
- breach_level
- threshold_snapshot
- correlation_id

compatibility_rule:
Alert interfaces must expose explicit threshold semantics.
