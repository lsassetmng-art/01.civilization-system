# ============================================================
# GAME BUILDER PREVIEW SESSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder preview session model.

model_type:
- preview session truth model

primary_key:
- game_builder_preview_session_id

natural_key:
- session_scope
- session_ref
- correlation_id

fields:
- game_builder_preview_session_id
- session_scope
- session_ref
- correlation_id
- session_status
- project_code
- preview_summary
- started_at
- ended_at
- created_at
- updated_at

session_status_enum:
- created
- active
- closed
- failed
- archived

truth_boundary:
Builder preview session truth belongs to GameOS builder-webapp domain.
