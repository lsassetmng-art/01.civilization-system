# ============================================================
# CIVILIZATION BROADCAST INCIDENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical broadcast incident model.

model_type:
- media incident truth model

primary_key:
- broadcast_incident_id

natural_key:
- incident_scope
- incident_ref
- correlation_id

fields:
- broadcast_incident_id
- incident_scope
- incident_ref
- correlation_id
- incident_status
- broadcaster_scope
- incident_summary
- source_state_version
- recorded_at
- created_at
- updated_at

incident_status_enum:
- recorded
- under_review
- mitigated
- resolved
- archived

truth_boundary:
Broadcast-incident truth belongs to CivilizationOS media-communication domain.
