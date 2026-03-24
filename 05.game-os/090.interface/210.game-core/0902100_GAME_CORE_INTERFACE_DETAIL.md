# ============================================================
# GAME CORE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for game core lifecycle handling.

required_fields:
- player_code or session_ref or slot_code or roster_code
- world_code where applicable
- source_state_version where applicable
- timing basis where applicable
- correlation_id

success_condition:
- game core request classified and routed safely

failure_condition:
- invalid target
- missing player, world, timing, or source basis
- incompatible game-core handling
