# ============================================================
# CIVILIZATION CYBER RESPONSE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for detection, containment, and breach notification.

required_fields:
- incident_code or detection_ref
- affected_scope
- severity_class or confidence_level
- response_authority_scope where applicable
- correlation_id

compatibility_rule:
Cyber-response interfaces must remain incident-aware and authority-aware.
