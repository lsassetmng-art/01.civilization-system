# ============================================================
# GAME STAGE PACKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical stage package model.

model_type:
- stage package truth model

primary_key:
- game_stage_package_id

natural_key:
- package_scope
- package_code
- package_version

fields:
- game_stage_package_id
- package_scope
- package_code
- package_version
- package_status
- profile_code
- stage_summary
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
Stage packages must expose explicit version semantics.

truth_boundary:
Stage package truth belongs to GameOS genre-runtime domain.
