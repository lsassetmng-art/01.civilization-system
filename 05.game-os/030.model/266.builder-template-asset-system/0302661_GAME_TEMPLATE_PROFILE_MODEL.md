# ============================================================
# GAME TEMPLATE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical template profile model.

model_type:
- template profile truth model

primary_key:
- game_template_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_template_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- family_code
- template_tier
- ruleset_profile_code
- template_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

template_tier_enum:
- beginner
- standard
- advanced

contract_version_rule:
Template profiles must expose explicit version semantics.

truth_boundary:
Template profile truth belongs to GameOS builder-template-asset-system domain.
