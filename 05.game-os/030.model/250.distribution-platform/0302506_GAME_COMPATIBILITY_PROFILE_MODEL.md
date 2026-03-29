# ============================================================
# GAME COMPATIBILITY PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game compatibility profile model.

model_type:
- compatibility truth model

primary_key:
- game_compatibility_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_compatibility_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- target_platform_summary
- os_requirement_summary
- runtime_requirement_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Game compatibility profiles must expose explicit version semantics.

truth_boundary:
Game compatibility profile truth belongs to GameOS distribution-platform domain.
