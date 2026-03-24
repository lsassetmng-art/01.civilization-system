# ============================================================
# GAME SECURITY MODERATION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for anti-cheat, moderation, and replay lifecycle handling.

required_fields:
- incident_ref or action_ref or replay_ref
- player_code where applicable
- authority_basis
- evidence_hash where applicable
- correlation_id

compatibility_rule:
Game security-moderation interfaces must remain authority-aware and evidence-aware.
