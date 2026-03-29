# ============================================================
# GAME SYNC ADJUDICATION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for GameOS sync adjudication lifecycle handling.

required_fields:
- snapshot_ref or conflict_ref
- accepted_envelope_ref where applicable
- game_title_code
- player_code
- correlation_id

compatibility_rule:
Game sync adjudication interfaces must remain lineage-aware and continuity-aware.
