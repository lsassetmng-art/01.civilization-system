# ============================================================
# STREAMING CORE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for streaming core lifecycle handling.

required_fields:
- channel_code or program_code or session_ref or asset_ref
- source_state_version where applicable
- timing basis where applicable
- summary field where applicable
- correlation_id

success_condition:
- streaming core request classified and routed safely

failure_condition:
- invalid target
- missing channel, program, timing, or source basis
- incompatible streaming-core handling
