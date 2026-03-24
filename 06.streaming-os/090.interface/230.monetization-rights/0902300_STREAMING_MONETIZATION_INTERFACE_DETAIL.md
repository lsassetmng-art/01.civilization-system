# ============================================================
# STREAMING MONETIZATION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for monetization and settlement lifecycle handling.

required_fields:
- event_ref or settlement_ref or allocation_ref
- session_ref or target_scope
- source_state_version where applicable
- settlement summary where applicable
- correlation_id

success_condition:
- monetization request classified and routed safely

failure_condition:
- invalid target
- missing session, settlement, or source basis
- incompatible monetization handling
