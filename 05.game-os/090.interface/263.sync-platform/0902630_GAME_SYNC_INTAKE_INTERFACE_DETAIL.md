# ============================================================
# GAME SYNC INTAKE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for GameOS sync intake lifecycle handling.

required_fields:
- envelope_ref or submit_ref or upload_ref or snapshot_ref or attestation_ref
- game_title_code
- player_code or device_code where applicable
- source_state_version where applicable
- correlation_id

compatibility_rule:
Game sync intake interfaces must remain title-aware and device-aware.
