# ============================================================
# GAME TEMPLATE STRUCTURE RULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical structure rule model for template zones.

model_type:
- structure governance truth model

primary_key:
- game_template_structure_rule_id

natural_key:
- rule_scope
- rule_code
- rule_version

fields:
- game_template_structure_rule_id
- rule_scope
- rule_code
- rule_version
- rule_status
- profile_code
- protected_zone_summary
- editable_zone_summary
- advanced_override_zone_summary
- created_at
- updated_at

rule_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Template structure rules must expose explicit version semantics.

truth_boundary:
Template structure rule truth belongs to GameOS builder-template-asset-system domain.
