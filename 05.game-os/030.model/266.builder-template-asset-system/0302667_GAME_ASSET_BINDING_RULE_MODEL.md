# ============================================================
# GAME ASSET BINDING RULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical asset binding rule model.

model_type:
- asset binding governance truth model

primary_key:
- game_asset_binding_rule_id

natural_key:
- rule_scope
- rule_code
- rule_version

fields:
- game_asset_binding_rule_id
- rule_scope
- rule_code
- rule_version
- rule_status
- profile_code
- default_binding_summary
- project_override_summary
- variant_binding_summary
- created_at
- updated_at

rule_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Asset binding rules must expose explicit version semantics.

truth_boundary:
Asset binding rule truth belongs to GameOS builder-template-asset-system domain.
