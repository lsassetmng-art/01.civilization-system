# ============================================================
# CIVILIZATION HOUSEHOLD RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical household record model.

model_type:
- household truth model

primary_key:
- household_record_id

natural_key:
- nation_id
- household_code

fields:
- household_record_id
- nation_id
- household_code
- household_status
- territory_code
- household_size
- source_state_version
- created_at
- updated_at

household_status_enum:
- active
- dissolved
- relocated
- archived

truth_boundary:
Household record truth belongs to CivilizationOS public administration domain.
