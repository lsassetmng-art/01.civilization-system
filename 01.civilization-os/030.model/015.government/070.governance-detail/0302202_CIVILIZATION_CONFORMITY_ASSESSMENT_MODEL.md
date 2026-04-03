# ============================================================
# CIVILIZATION CONFORMITY ASSESSMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical conformity assessment model.

model_type:
- technical review truth model

primary_key:
- conformity_assessment_id

natural_key:
- assessment_scope
- assessment_ref
- correlation_id

fields:
- conformity_assessment_id
- assessment_scope
- assessment_ref
- assessment_status
- target_specification_code
- assessor_scope
- assessment_result
- source_state_version
- correlation_id
- assessed_at
- created_at
- updated_at

assessment_status_enum:
- pending
- passed
- failed
- waived
- superseded
- archived

truth_boundary:
Conformity-assessment truth belongs to CivilizationOS technology-governance domain.
