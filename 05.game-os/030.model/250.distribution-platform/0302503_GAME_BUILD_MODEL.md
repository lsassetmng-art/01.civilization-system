# ============================================================
# GAME BUILD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game build model.

model_type:
- build truth model

primary_key:
- game_build_id

natural_key:
- build_scope
- build_code
- build_version

fields:
- game_build_id
- build_scope
- build_code
- build_version
- build_status
- release_code
- target_platform_code
- build_hash
- created_at
- updated_at

build_status_enum:
- draft
- validated
- published
- revoked
- archived

contract_version_rule:
Game builds must expose explicit version semantics.

truth_boundary:
Game build truth belongs to GameOS distribution-platform domain.
