# ============================================================
# GAME PROGRESSION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for progression and reward lifecycle handling.

required_fields:
- quest_code or progress_ref or grant_ref or result_ref
- player_code
- reward basis where applicable
- source_state_version where applicable
- correlation_id

compatibility_rule:
Game progression interfaces must remain player-aware and reward-aware.
