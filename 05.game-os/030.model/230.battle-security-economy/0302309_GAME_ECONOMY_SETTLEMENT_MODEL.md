# ============================================================
# GAME ECONOMY SETTLEMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game economy settlement model.

model_type:
- settlement truth model

primary_key:
- game_economy_settlement_id

natural_key:
- settlement_scope
- settlement_ref
- correlation_id

fields:
- game_economy_settlement_id
- settlement_scope
- settlement_ref
- correlation_id
- settlement_status
- player_code
- settlement_summary
- source_state_version
- settled_at
- created_at
- updated_at

settlement_status_enum:
- pending
- settled
- failed
- reversed
- archived

idempotency_rule:
settlement_scope + settlement_ref must suppress duplicate effective economy settlement.

truth_boundary:
Game economy settlement truth belongs to GameOS battle-security-economy domain.
