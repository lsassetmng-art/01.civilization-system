# ============================================================
# GAME BUILDER ASSET BINDING MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder asset binding model.

model_type:
- asset binding truth model

primary_key:
- game_builder_asset_binding_id

natural_key:
- binding_scope
- binding_ref
- binding_version

fields:
- game_builder_asset_binding_id
- binding_scope
- binding_ref
- binding_version
- binding_status
- project_code
- asset_ref
- binding_summary
- created_at
- updated_at

binding_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Builder asset bindings must expose explicit version semantics.

truth_boundary:
Builder asset binding truth belongs to GameOS builder-webapp domain.
