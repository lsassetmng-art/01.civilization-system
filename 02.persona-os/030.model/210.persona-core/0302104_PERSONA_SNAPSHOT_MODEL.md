# ============================================================
# PERSONA SNAPSHOT MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona snapshot model.

model_type:
- persona snapshot truth model

primary_key:
- persona_snapshot_id

natural_key:
- persona_id
- snapshot_ref
- snapshot_version

fields:
- persona_snapshot_id
- persona_id
- snapshot_ref
- snapshot_version
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
Persona snapshot truth belongs to PersonaOS persona-core domain.
