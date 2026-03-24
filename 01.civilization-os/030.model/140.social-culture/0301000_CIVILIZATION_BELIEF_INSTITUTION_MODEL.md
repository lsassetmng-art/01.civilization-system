# ============================================================
# CIVILIZATION BELIEF INSTITUTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical belief institution model.

model_type:
- cultural registry model

primary_key:
- belief_institution_id

natural_key:
- institution_scope
- institution_code

fields:
- belief_institution_id
- institution_scope
- institution_code
- institution_status
- institution_name
- institution_class
- territory_scope
- created_at
- updated_at

institution_status_enum:
- active
- restricted
- suspended
- dissolved
- archived

truth_boundary:
Belief institution truth belongs to CivilizationOS social-culture domain.
