# ============================================================
# STREAMING PARTICIPATION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for participation and safety lifecycle handling.

required_fields:
- participation_ref or binding_code or event_ref or incident_ref or review_ref
- performer_scope or persona_id where applicable
- authority_basis where applicable
- session_ref
- correlation_id

compatibility_rule:
Streaming participation interfaces must remain authority-aware and session-aware.
