# ============================================================
# GAME VALIDATION RESULT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game validation result model.

model_type:
- validation truth model

primary_key:
- game_validation_result_id

natural_key:
- validation_scope
- validation_ref
- correlation_id

fields:
- game_validation_result_id
- validation_scope
- validation_ref
- correlation_id
- validation_status
- game_title_code
- release_code
- validation_summary
- validation_hash
- validated_at
- created_at
- updated_at

validation_status_enum:
- pending
- passed
- failed
- superseded
- archived

truth_boundary:
Game validation truth belongs to Civilization creator-platform domain.
