# ============================================================
# CIVILIZATION PUBLIC SAFETY INCIDENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical public safety incident model.

model_type:
- incident truth model

primary_key:
- public_safety_incident_id

natural_key:
- incident_code
- territory_code
- correlation_id

fields:
- public_safety_incident_id
- incident_code
- territory_code
- incident_status
- incident_severity
- incident_type
- source_event_id
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
Public safety incident truth belongs to CivilizationOS safety domain.
