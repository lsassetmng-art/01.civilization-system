# ============================================================
# GAME RULESET PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical ruleset profile model shared by builder-backed games.

model_type:
- ruleset governance truth model

primary_key:
- game_ruleset_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_ruleset_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- runtime_profile_code
- ruleset_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Ruleset profiles must expose explicit version semantics.

truth_boundary:
Ruleset profile truth belongs to GameOS genre-runtime domain.
