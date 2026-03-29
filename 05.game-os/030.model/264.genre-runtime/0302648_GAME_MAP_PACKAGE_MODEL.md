# ============================================================
# GAME MAP PACKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical map package model.

model_type:
- map package truth model

primary_key:
- game_map_package_id

natural_key:
- package_scope
- package_code
- package_version

fields:
- game_map_package_id
- package_scope
- package_code
- package_version
- package_status
- profile_code
- map_summary
- package_hash
- created_at
- updated_at

package_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Map packages must expose explicit version semantics.

truth_boundary:
Map package truth belongs to GameOS genre-runtime domain.
