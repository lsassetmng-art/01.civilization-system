# ============================================================
# CIVILIZATION POSTMORTEM RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical postmortem record model.

model_type:
- retrospective truth model

primary_key:
- postmortem_record_id

natural_key:
- postmortem_scope
- postmortem_ref
- source_incident_ref

fields:
- postmortem_record_id
- postmortem_scope
- postmortem_ref
- source_incident_ref
- postmortem_status
- root_cause_summary
- corrective_action_summary
- source_state_version
- issued_at
- created_at
- updated_at

postmortem_status_enum:
- draft
- published
- superseded
- invalidated
- archived

truth_boundary:
Postmortem truth belongs to CivilizationOS observability-control domain.
