# ============================================================
# GAME UI TEMPLATE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical UI template profile model.

model_type:
- ui governance truth model

primary_key:
- game_ui_template_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_ui_template_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- runtime_profile_code
- template_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
UI template profiles must expose explicit version semantics.

truth_boundary:
UI template truth belongs to GameOS genre-runtime domain.
