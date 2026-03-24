# ============================================================
# GAME PERSONA PACKAGE PROJECTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game persona package projection model.

model_type:
- projection truth model

primary_key:
- game_persona_package_projection_id

natural_key:
- projection_scope
- projection_ref
- correlation_id

fields:
- game_persona_package_projection_id
- projection_scope
- projection_ref
- correlation_id
- projection_status
- binding_code
- package_code
- projection_summary
- source_state_version
- projected_at
- created_at
- updated_at

projection_status_enum:
- pending
- projected
- failed
- reversed
- archived

idempotency_rule:
projection_scope + projection_ref must suppress duplicate effective package projection.

truth_boundary:
Game persona package projection truth belongs to GameOS battle-security-economy domain.
