# ============================================================
# CIVILIZATION CLINICAL EPISODE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical clinical episode record model.

model_type:
- care operations truth model

primary_key:
- clinical_episode_record_id

natural_key:
- episode_scope
- episode_ref
- correlation_id

fields:
- clinical_episode_record_id
- episode_scope
- episode_ref
- episode_status
- patient_scope
- facility_code
- care_summary
- source_state_version
- correlation_id
- opened_at
- closed_at
- created_at
- updated_at

episode_status_enum:
- opened
- under_care
- stabilized
- closed
- transferred
- archived

truth_boundary:
Clinical episode truth belongs to CivilizationOS healthcare-publichealth domain.
