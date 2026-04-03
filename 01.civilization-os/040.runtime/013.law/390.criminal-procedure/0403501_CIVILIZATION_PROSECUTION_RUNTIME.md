# ============================================================
# CIVILIZATION PROSECUTION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for prosecution and parole review handling.

runtime_scope:
- validate review target
- validate filing or sentence basis
- update review state
- preserve review traceability

trigger_conditions:
- review opened
- review advanced
- review completed
- parole requested
- review revoked

processing_steps:
1 resolve prosecution or parole target
2 verify filing or sentence basis
3 apply review state transition
4 persist review result
5 preserve audit and review trace

success_condition:
- review lifecycle updated explicitly

failure_condition:
- invalid target
- filing or sentence basis unresolved
- persistence failure
