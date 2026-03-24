# ============================================================
# GAME OWNERSHIP BOUNDARY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical ownership boundary record model for GameOS.

model_type:
- truth-boundary governance model

primary_key:
- game_ownership_boundary_record_id

natural_key:
- boundary_scope
- boundary_ref
- correlation_id

fields:
- game_ownership_boundary_record_id
- boundary_scope
- boundary_ref
- correlation_id
- boundary_status
- owner_domain_code
- consumer_domain_code
- truth_boundary_summary
- source_state_version
- recorded_at
- created_at
- updated_at

boundary_status_enum:
- active
- revised
- superseded
- archived

truth_boundary:
Game ownership boundary truth belongs to GameOS cross-cutting-completion domain.
