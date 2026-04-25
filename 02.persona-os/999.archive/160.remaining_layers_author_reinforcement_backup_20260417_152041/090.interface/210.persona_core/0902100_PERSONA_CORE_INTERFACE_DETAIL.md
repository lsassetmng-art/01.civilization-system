# ============================================================
# PERSONA CORE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for persona core lifecycle handling.

required_fields:
- persona_id
- state_scope or snapshot_ref
- source_state_version
- lineage basis where applicable
- correlation_id

success_condition:
- persona core request classified and routed safely

failure_condition:
- invalid target
- missing source or lineage basis
- incompatible persona-core handling
