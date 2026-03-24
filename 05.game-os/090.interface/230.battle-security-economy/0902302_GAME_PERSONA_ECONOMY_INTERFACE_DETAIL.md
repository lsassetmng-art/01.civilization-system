# ============================================================
# GAME PERSONA ECONOMY INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for persona binding, projection, entitlement, and economy lifecycle handling.

required_fields:
- binding_code or projection_ref or entitlement_code or settlement_ref
- player_code
- persona_id or package_code where applicable
- purchase basis where applicable
- correlation_id

compatibility_rule:
Game persona-economy interfaces must remain player-aware and contract-aware.
