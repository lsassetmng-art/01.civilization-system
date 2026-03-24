# ============================================================
# GAME AUDIT RECONSTRUCTION BUNDLE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical audit reconstruction bundle model for GameOS.

model_type:
- audit recovery truth model

primary_key:
- game_audit_reconstruction_bundle_id

natural_key:
- bundle_scope
- bundle_ref
- correlation_id

fields:
- game_audit_reconstruction_bundle_id
- bundle_scope
- bundle_ref
- correlation_id
- bundle_status
- source_record_set_hash
- reconstruction_summary
- source_state_version
- bundled_at
- created_at
- updated_at

bundle_status_enum:
- built
- superseded
- invalidated
- archived

truth_boundary:
Game audit reconstruction truth belongs to GameOS cross-cutting-completion domain.
