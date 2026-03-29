# ============================================================
# GAME BUILDER PROJECT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder project model for the Game Builder Web App.

model_type:
- builder project truth model

primary_key:
- game_builder_project_id

natural_key:
- project_scope
- project_code
- project_version

fields:
- game_builder_project_id
- project_scope
- project_code
- project_version
- project_status
- workspace_code
- game_title_code
- runtime_profile_code
- project_summary
- created_at
- updated_at

project_status_enum:
- draft
- active
- exported
- archived

contract_version_rule:
Builder projects must expose explicit version semantics.

truth_boundary:
Builder project truth belongs to GameOS builder-webapp domain.
