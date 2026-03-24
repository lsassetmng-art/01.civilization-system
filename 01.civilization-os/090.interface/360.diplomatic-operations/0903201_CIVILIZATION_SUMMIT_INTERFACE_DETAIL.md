# ============================================================
# CIVILIZATION SUMMIT INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for summits and statements.

required_fields:
- session_code or statement_code
- host_scope
- participant_summary
- approval_basis where applicable
- correlation_id

compatibility_rule:
Summit interfaces must expose explicit host and participant semantics.
