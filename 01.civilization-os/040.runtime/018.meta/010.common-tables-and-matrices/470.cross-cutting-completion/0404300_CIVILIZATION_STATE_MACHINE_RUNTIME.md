# ============================================================
# CIVILIZATION STATE MACHINE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for lifecycle state-machine enforcement.

runtime_scope:
- validate lifecycle target
- validate transition and terminal basis
- update shared lifecycle state
- preserve transition traceability

trigger_conditions:
- transition requested
- approval recorded
- terminal state entered
- invalid transition detected
- restoration requested

processing_steps:
1 resolve lifecycle target and profile
2 verify transition, authority, and version basis
3 apply state transition
4 persist lifecycle result
5 preserve audit and transition trace

state_transition:
- draft -> approved
- approved -> active
- active -> suspended
- active -> completed
- active -> revoked
- suspended -> active
- suspended -> revoked
- completed -> archived
- revoked -> archived

success_condition:
- lifecycle transition enforced explicitly

failure_condition:
- invalid target
- transition basis unresolved
- invalid transition requested
- persistence failure
