# ============================================================
# CIVILIZATION TREASURY POSITION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical treasury position model.

model_type:
- finance position model

primary_key:
- treasury_position_id

natural_key:
- nation_id
- treasury_code
- position_window

fields:
- treasury_position_id
- nation_id
- treasury_code
- position_window
- position_status
- balance_value
- reserved_value
- source_lineage
- source_state_version
- built_at
- created_at
- updated_at

position_status_enum:
- current
- stale
- provisional
- invalid

truth_boundary:
Treasury position may be derived from governed finance truth and must preserve lineage.
