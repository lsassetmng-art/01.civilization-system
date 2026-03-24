# ============================================================
# CIVILIZATION INCIDENT TIMELINE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical incident timeline record model.

model_type:
- operations trace truth model

primary_key:
- incident_timeline_record_id

natural_key:
- timeline_scope
- timeline_ref
- correlation_id

fields:
- incident_timeline_record_id
- timeline_scope
- timeline_ref
- correlation_id
- timeline_status
- source_incident_ref
- event_summary
- event_type
- source_state_version
- recorded_at
- created_at
- updated_at

timeline_status_enum:
- recorded
- superseded
- invalidated
- archived

truth_boundary:
Incident-timeline truth belongs to CivilizationOS observability-control domain.
