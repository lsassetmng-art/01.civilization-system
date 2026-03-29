# ============================================================
# GAME STRATEGY RUNTIME PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical strategy runtime profile model.

model_type:
- runtime governance truth model

primary_key:
- game_strategy_runtime_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_strategy_runtime_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- turn_rule_summary
- resource_rule_summary
- unit_rule_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Strategy runtime profiles must expose explicit version semantics.

truth_boundary:
Strategy runtime truth belongs to GameOS genre-runtime domain.
