# ============================================================
# CIVILIZATION URBAN CODE VIOLATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical urban code violation record model.

model_type:
- urban compliance truth model

primary_key:
- urban_code_violation_record_id

natural_key:
- violation_scope
- violation_ref
- correlation_id

fields:
- urban_code_violation_record_id
- violation_scope
- violation_ref
- correlation_id
- violation_status
- target_scope
- violation_summary
- source_state_version
- recorded_at
- created_at
- updated_at

violation_status_enum:
- recorded
- actionable
- cured
- escalated
- archived

truth_boundary:
Urban-code violation truth belongs to CivilizationOS urban-governance domain.
