# ============================================================
# GAME PACKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game package model for downloadable client packages.

model_type:
- package truth model

primary_key:
- game_package_id

natural_key:
- package_scope
- package_code
- package_version

fields:
- game_package_id
- package_scope
- package_code
- package_version
- package_status
- build_code
- package_hash
- package_size_bytes
- created_at
- updated_at

package_status_enum:
- draft
- validated
- available
- revoked
- archived

contract_version_rule:
Game packages must expose explicit version semantics.

truth_boundary:
Game package truth belongs to GameOS distribution-platform domain.
