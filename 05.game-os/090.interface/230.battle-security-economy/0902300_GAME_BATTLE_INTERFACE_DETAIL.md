# ============================================================
# GAME BATTLE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for battle and result lifecycle handling.

required_fields:
- session_ref or result_ref
- player_code
- source_state_version where applicable
- result summary where applicable
- correlation_id

success_condition:
- battle request classified and routed safely

failure_condition:
- invalid target
- missing player, session, or result basis
- incompatible battle handling
