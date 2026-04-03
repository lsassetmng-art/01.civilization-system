# ============================================================
# CIVILIZATION TERRITORY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical territory record model.

model_type:
- domain truth model

primary_key:
- territory_record_id

natural_key:
- nation_id
- territory_code

fields:
- territory_record_id
- nation_id
- territory_code
- territory_name
- territory_status
- territory_class
- controlling_authority_scope
- effective_from
- effective_until
- created_at
- updated_at

territory_status_enum:
- active
- disputed
- suspended
- lost
- archived

truth_boundary:
Territory record truth belongs to CivilizationOS canonical statecraft domain.
