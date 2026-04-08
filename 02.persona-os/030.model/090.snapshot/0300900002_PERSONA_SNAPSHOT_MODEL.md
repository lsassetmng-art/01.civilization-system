# ============================================================
# PERSONA SNAPSHOT MODEL
# ============================================================

status: canonical
layer: model
domain: snapshot
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_snapshot

core_fields:
persona_snapshot_id
persona_id
snapshot_version
snapshot_status
source_persona_version
identity_snapshot_ref
visual_snapshot_ref
rights_snapshot_ref
released_at
created_at
updated_at

rules:
Snapshot is an immutable release-oriented unit.
Snapshot does not replace live mutable truth.
