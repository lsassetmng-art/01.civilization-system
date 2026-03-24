# ============================================================
# CIVILIZATION SECURITY INCIDENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical security incident model.

model_type:
- security incident truth model

primary_key:
- security_incident_id

natural_key:
- incident_scope
- incident_code
- correlation_id

fields:
- security_incident_id
- incident_scope
- incident_code
- incident_status
- incident_type
- affected_scope
- severity_class
- source_state_version
- correlation_id
- occurred_at
- created_at
- updated_at

incident_status_enum:
- reported
- under_response
- contained
- resolved
- archived

truth_boundary:
Security-incident truth belongs to CivilizationOS security-enforcement domain.
