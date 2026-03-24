# ============================================================
# CIVILIZATION EDUCATION INSTITUTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical education institution model.

model_type:
- institution truth model

primary_key:
- education_institution_id

natural_key:
- institution_scope
- institution_code

fields:
- education_institution_id
- institution_scope
- institution_code
- institution_status
- institution_class
- territory_scope
- operating_authority_scope
- created_at
- updated_at

institution_status_enum:
- active
- restricted
- suspended
- closed
- archived

truth_boundary:
Education institution truth belongs to CivilizationOS human-capital domain.
