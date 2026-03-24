# ============================================================
# LIFE CORE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for life core lifecycle handling.

required_fields:
- life_code or profile_code or schedule_ref or task_ref
- owner_scope
- source_state_version where applicable
- timing basis where applicable
- correlation_id

success_condition:
- life core request classified and routed safely

failure_condition:
- invalid target
- missing owner, timing, or source basis
- incompatible life-core handling
