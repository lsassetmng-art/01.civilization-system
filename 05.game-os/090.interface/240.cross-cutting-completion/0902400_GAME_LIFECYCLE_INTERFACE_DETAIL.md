# ============================================================
# GAME LIFECYCLE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for shared lifecycle governance in GameOS.

required_fields:
- profile_code
- target_ref
- current_state
- requested_state
- correlation_id

success_condition:
- lifecycle request classified and routed safely

failure_condition:
- invalid target
- missing transition or authority basis
- incompatible lifecycle handling
