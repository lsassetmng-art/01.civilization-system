# ============================================================
# CIVILIZATION ROE VIOLATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical ROE violation record model.

model_type:
- military compliance truth model

primary_key:
- roe_violation_record_id

natural_key:
- violation_scope
- violation_ref
- correlation_id

fields:
- roe_violation_record_id
- violation_scope
- violation_ref
- correlation_id
- violation_status
- subject_scope
- violation_summary
- source_state_version
- recorded_at
- created_at
- updated_at

violation_status_enum:
- recorded
- under_review
- actionable
- resolved
- archived

truth_boundary:
ROE-violation truth belongs to CivilizationOS military-operations domain.
