# ============================================================
# CIVILIZATION MILITARY COMPLIANCE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for ceasefire monitoring and ROE handling.

required_fields:
- monitoring_ref or violation_ref
- monitored_scope or subject_scope
- evidence basis
- correlation_id

compatibility_rule:
Military-compliance interfaces must remain ceasefire-aware and evidence-aware.
