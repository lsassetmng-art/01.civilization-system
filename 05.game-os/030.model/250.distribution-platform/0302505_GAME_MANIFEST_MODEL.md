# ============================================================
# GAME MANIFEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game manifest model.

model_type:
- manifest truth model

primary_key:
- game_manifest_id

natural_key:
- manifest_scope
- manifest_code
- manifest_version

fields:
- game_manifest_id
- manifest_scope
- manifest_code
- manifest_version
- manifest_status
- package_code
- required_capability_summary
- compatibility_summary
- manifest_hash
- created_at
- updated_at

manifest_status_enum:
- draft
- approved
- published
- superseded
- archived

contract_version_rule:
Game manifests must expose explicit version semantics.

truth_boundary:
Game manifest truth belongs to GameOS distribution-platform domain.
