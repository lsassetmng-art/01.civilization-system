# ============================================================
# CIVILIZATION ENROLLMENT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical enrollment record model.

model_type:
- participation truth model

primary_key:
- enrollment_record_id

natural_key:
- enrollment_scope
- enrollment_ref

fields:
- enrollment_record_id
- enrollment_scope
- enrollment_ref
- enrollment_status
- learner_scope
- program_code
- source_state_version
- correlation_id
- enrolled_at
- completed_at
- created_at
- updated_at

enrollment_status_enum:
- pending
- active
- completed
- withdrawn
- failed
- archived

truth_boundary:
Enrollment truth belongs to CivilizationOS human-capital domain.
