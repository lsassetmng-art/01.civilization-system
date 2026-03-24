# ============================================================
# CIVILIZATION GOVERNANCE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define governance-facing interface requirements.

required_fields:
- governance_action_code
- authority_scope
- approval_code where required
- correlation_id
- actor_identity

success_condition:
- governance request classified and routed safely

failure_condition:
- authority scope missing
- approval basis missing where required
- target not resolvable
