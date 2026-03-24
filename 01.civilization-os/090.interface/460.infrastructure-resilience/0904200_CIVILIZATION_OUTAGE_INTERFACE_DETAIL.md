# ============================================================
# CIVILIZATION OUTAGE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for outage handling.

required_fields:
- incident_ref
- service_scope
- outage_summary
- affected scope
- correlation_id

success_condition:
- outage request classified and routed safely

failure_condition:
- invalid target
- missing service or incident basis
- incompatible outage handling
