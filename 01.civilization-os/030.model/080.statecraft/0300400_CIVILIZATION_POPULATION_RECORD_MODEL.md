# ============================================================
# CIVILIZATION POPULATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical population record model.

model_type:
- domain truth model

primary_key:
- population_record_id

natural_key:
- nation_id
- population_scope
- record_window

fields:
- population_record_id
- nation_id
- population_scope
- record_window
- population_value
- population_status
- source_lineage
- source_state_version
- recorded_at
- created_at
- updated_at

population_status_enum:
- current
- provisional
- revised
- archived

truth_boundary:
Population record truth belongs to CivilizationOS canonical statecraft domain.
