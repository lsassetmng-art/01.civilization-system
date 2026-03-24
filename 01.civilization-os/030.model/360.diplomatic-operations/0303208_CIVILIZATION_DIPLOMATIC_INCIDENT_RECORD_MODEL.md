# ============================================================
# CIVILIZATION DIPLOMATIC INCIDENT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical diplomatic incident record model.

model_type:
- diplomatic incident truth model

primary_key:
- diplomatic_incident_record_id

natural_key:
- incident_scope
- incident_ref
- correlation_id

fields:
- diplomatic_incident_record_id
- incident_scope
- incident_ref
- correlation_id
- incident_status
- affected_party_summary
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
Diplomatic-incident truth belongs to CivilizationOS diplomatic-operations domain.
