# ============================================================
# LIFE FOLLOW UP INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for follow-up, check-in, and habit progress handling.

required_fields:
- follow_up_ref or check_in_ref or progress_ref
- owner_scope
- persona_id where applicable
- timing basis where applicable
- correlation_id

success_condition:
- follow-up request classified and routed safely

failure_condition:
- invalid target
- missing owner, persona, or timing basis
- incompatible follow-up handling
