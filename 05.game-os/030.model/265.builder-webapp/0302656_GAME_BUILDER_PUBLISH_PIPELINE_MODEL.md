# ============================================================
# GAME BUILDER PUBLISH PIPELINE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder publish pipeline model.

model_type:
- publish pipeline truth model

primary_key:
- game_builder_publish_pipeline_id

natural_key:
- pipeline_scope
- pipeline_code
- pipeline_version

fields:
- game_builder_publish_pipeline_id
- pipeline_scope
- pipeline_code
- pipeline_version
- pipeline_status
- project_code
- release_code
- pipeline_summary
- created_at
- updated_at

pipeline_status_enum:
- draft
- ready
- submitted
- completed
- failed
- archived

contract_version_rule:
Builder publish pipelines must expose explicit version semantics.

truth_boundary:
Builder publish pipeline truth belongs to GameOS builder-webapp domain.
