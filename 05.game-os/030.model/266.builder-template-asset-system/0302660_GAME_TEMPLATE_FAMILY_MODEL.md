# ============================================================
# GAME TEMPLATE FAMILY MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical template family model for the Game Builder.

model_type:
- template governance truth model

primary_key:
- game_template_family_id

natural_key:
- family_scope
- family_code
- family_version

fields:
- game_template_family_id
- family_scope
- family_code
- family_version
- family_status
- runtime_profile_code
- family_summary
- created_at
- updated_at

family_status_enum:
- draft
- approved
- active
- superseded
- archived

family_code_enum:
- visual_novel
- dating_sim
- rpg
- puzzle
- strategy

contract_version_rule:
Template families must expose explicit version semantics.

truth_boundary:
Template family truth belongs to GameOS builder-template-asset-system domain.
