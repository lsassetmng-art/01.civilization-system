# ============================================================
# GAME TEMPLATE UX PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical template UX profile model.

model_type:
- ux governance truth model

primary_key:
- game_template_ux_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_template_ux_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- first_run_summary
- low_complexity_summary
- guided_edit_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Template UX profiles must expose explicit version semantics.

truth_boundary:
Template UX truth belongs to GameOS builder-template-asset-system domain.
