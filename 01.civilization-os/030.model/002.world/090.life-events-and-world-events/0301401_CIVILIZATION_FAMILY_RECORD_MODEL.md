# ============================================================
# CIVILIZATION FAMILY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical family record model.

model_type:
- civil truth model

primary_key:
- family_record_id

natural_key:
- nation_id
- family_code

fields:
- family_record_id
- nation_id
- family_code
- family_status
- family_class
- home_territory_code
- source_state_version
- created_at
- updated_at

family_status_enum:
- active
- reorganized
- dissolved
- archived

truth_boundary:
Family record truth belongs to CivilizationOS civil-status domain.
