# ============================================================
# CIVILIZATION RESEARCH RESULT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical research result model.

model_type:
- research result truth model

primary_key:
- research_result_id

natural_key:
- result_scope
- result_code
- source_program_id

fields:
- research_result_id
- result_scope
- result_code
- source_program_id
- result_status
- result_summary
- compatibility_status
- source_state_version
- created_at
- updated_at

result_status_enum:
- draft
- approved
- published
- superseded
- revoked

compatibility_status_enum:
- compatible
- limited
- incompatible

truth_boundary:
Research result truth belongs to CivilizationOS research knowledge domain.
