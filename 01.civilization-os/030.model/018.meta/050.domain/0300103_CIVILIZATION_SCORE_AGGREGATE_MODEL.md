# ============================================================
# CIVILIZATION SCORE AGGREGATE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical civilization score aggregate model.

model_type:
- derived aggregate model

primary_key:
- civilization_score_aggregate_id

natural_key:
- score_scope
- score_code
- score_window

fields:
- civilization_score_aggregate_id
- score_scope
- score_code
- score_window
- aggregate_value
- source_lineage
- source_state_version
- score_status
- built_at
- created_at
- updated_at

score_status_enum:
- current
- stale
- rebuilding
- invalid

truth_boundary:
Scores are derived aggregates, not source truth.
