# ============================================================
# GAME BUILDER EDITOR SESSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder editor session model.

model_type:
- editor session truth model

primary_key:
- game_builder_editor_session_id

natural_key:
- session_scope
- session_ref
- correlation_id

fields:
- game_builder_editor_session_id
- session_scope
- session_ref
- correlation_id
- session_status
- project_code
- editor_summary
- started_at
- ended_at
- created_at
- updated_at

session_status_enum:
- created
- active
- closed
- interrupted
- archived

truth_boundary:
Builder editor session truth belongs to GameOS builder-webapp domain.
