# ============================================================
# CIVILIZATION BREACH NOTIFICATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical breach notification record model.

model_type:
- incident disclosure truth model

primary_key:
- breach_notification_record_id

natural_key:
- notification_scope
- notification_ref
- source_incident_code

fields:
- breach_notification_record_id
- notification_scope
- notification_ref
- source_incident_code
- notification_status
- recipient_scope
- notification_summary
- source_state_version
- delivered_at
- created_at
- updated_at

notification_status_enum:
- planned
- delivered
- failed
- withdrawn
- archived

truth_boundary:
Breach-notification truth belongs to CivilizationOS cyber-defense domain.
