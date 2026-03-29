# ============================================================
# GAME BUILDER COLLABORATION SESSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder collaboration session model.

model_type:
- collaboration truth model

primary_key:
- game_builder_collaboration_session_id

natural_key:
- session_scope
- session_ref
- correlation_id

fields:
- game_builder_collaboration_session_id
- session_scope
- session_ref
- correlation_id
- session_status
- project_code
- collaboration_summary
- started_at
- ended_at
- created_at
- updated_at

session_status_enum:
- created
- active
- closed
- revoked
- archived

truth_boundary:
Builder collaboration session truth belongs to GameOS builder-webapp domain.
