# ============================================================
# CIVILIZATION CAP TABLE SNAPSHOT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical cap table snapshot model.

model_type:
- ownership snapshot truth model

primary_key:
- cap_table_snapshot_id

natural_key:
- snapshot_scope
- snapshot_ref
- snapshot_window

fields:
- cap_table_snapshot_id
- snapshot_scope
- snapshot_ref
- snapshot_window
- snapshot_status
- snapshot_hash
- source_lineage
- source_state_version
- captured_at
- created_at
- updated_at

snapshot_status_enum:
- captured
- superseded
- invalidated
- archived

truth_boundary:
Cap-table snapshot truth belongs to CivilizationOS capital-markets domain.
