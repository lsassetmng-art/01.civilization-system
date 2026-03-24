# ============================================================
# CIVILIZATION LEARNING ACHIEVEMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical learning achievement model.

model_type:
- achievement truth model

primary_key:
- learning_achievement_id

natural_key:
- achievement_scope
- achievement_ref

fields:
- learning_achievement_id
- achievement_scope
- achievement_ref
- achievement_status
- learner_scope
- achievement_code
- achievement_value
- source_state_version
- correlation_id
- achieved_at
- created_at
- updated_at

achievement_status_enum:
- recorded
- approved
- revised
- revoked
- archived

truth_boundary:
Learning achievement truth belongs to CivilizationOS human-capital domain.
