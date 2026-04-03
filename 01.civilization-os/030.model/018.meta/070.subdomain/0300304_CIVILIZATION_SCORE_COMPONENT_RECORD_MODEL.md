# ============================================================
# CIVILIZATION SCORE COMPONENT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical score component record model.

model_type:
- derived component model

primary_key:
- score_component_record_id

natural_key:
- score_scope
- score_code
- component_code
- source_state_version

fields:
- score_component_record_id
- score_scope
- score_code
- component_code
- component_value
- component_status
- source_lineage
- source_state_version
- built_at
- created_at
- updated_at

component_status_enum:
- current
- stale
- invalid
- superseded

truth_boundary:
Score component records are derived component state only.
