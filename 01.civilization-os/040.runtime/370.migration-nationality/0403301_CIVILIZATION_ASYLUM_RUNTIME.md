# ============================================================
# CIVILIZATION ASYLUM RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for asylum and nationality handling.

runtime_scope:
- validate review or grant target
- validate protection or grant basis
- update review state
- preserve civil traceability

trigger_conditions:
- asylum submitted
- review advanced
- nationality approved
- grant revoked
- appeal filed

processing_steps:
1 resolve asylum or nationality target
2 verify protection or grant basis
3 apply lifecycle state transition
4 persist result
5 preserve audit and status trace

success_condition:
- asylum or nationality lifecycle updated explicitly

failure_condition:
- invalid target
- protection or grant basis unresolved
- persistence failure
