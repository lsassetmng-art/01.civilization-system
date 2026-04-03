# ============================================================
# CIVILIZATION RELIGIOUS EVENT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical religious event record model.

model_type:
- cultural event truth model

primary_key:
- religious_event_record_id

natural_key:
- event_scope
- event_code
- correlation_id

fields:
- religious_event_record_id
- event_scope
- event_code
- event_status
- institution_code
- event_summary
- source_state_version
- correlation_id
- occurred_at
- created_at
- updated_at

event_status_enum:
- scheduled
- active
- completed
- cancelled
- archived

truth_boundary:
Religious event truth belongs to CivilizationOS social-culture domain.
