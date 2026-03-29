# ============================================================
# GAME VN RUNTIME PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical visual novel and dating simulation runtime profile model.

model_type:
- runtime governance truth model

primary_key:
- game_vn_runtime_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_vn_runtime_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- branch_rule_summary
- dialogue_rule_summary
- affection_rule_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
VN runtime profiles must expose explicit version semantics.

truth_boundary:
VN runtime truth belongs to GameOS genre-runtime domain.
