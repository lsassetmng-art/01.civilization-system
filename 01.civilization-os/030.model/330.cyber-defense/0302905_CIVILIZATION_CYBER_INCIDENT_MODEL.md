# ============================================================
# CIVILIZATION CYBER INCIDENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical cyber incident model.

model_type:
- cyber security incident truth model

primary_key:
- cyber_incident_id

natural_key:
- incident_scope
- incident_code
- correlation_id

fields:
- cyber_incident_id
- incident_scope
- incident_code
- correlation_id
- incident_status
- incident_type
- affected_scope
- severity_class
- source_state_version
- occurred_at
- created_at
- updated_at

incident_status_enum:
- reported
- under_response
- contained
- eradicated
- recovered
- archived

truth_boundary:
Cyber-incident truth belongs to CivilizationOS cyber-defense domain.
