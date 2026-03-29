# ============================================================
# GAME PUZZLE RUNTIME PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical puzzle runtime profile model.

model_type:
- runtime governance truth model

primary_key:
- game_puzzle_runtime_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_puzzle_runtime_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- stage_rule_summary
- scoring_rule_summary
- failure_rule_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Puzzle runtime profiles must expose explicit version semantics.

truth_boundary:
Puzzle runtime truth belongs to GameOS genre-runtime domain.
