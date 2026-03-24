# ============================================================
# CIVILIZATION CERTIFICATION RESULT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical certification result model.

model_type:
- technical certification truth model

primary_key:
- certification_result_id

natural_key:
- result_scope
- result_ref
- source_assessment_ref

fields:
- certification_result_id
- result_scope
- result_ref
- source_assessment_ref
- result_status
- holder_scope
- certification_level
- source_state_version
- issued_at
- expires_at
- created_at
- updated_at

result_status_enum:
- issued
- active
- suspended
- revoked
- expired
- archived

truth_boundary:
Certification-result truth belongs to CivilizationOS technology-governance domain.
