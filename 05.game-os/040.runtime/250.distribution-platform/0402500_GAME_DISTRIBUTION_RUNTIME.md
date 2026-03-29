# ============================================================
# GAME DISTRIBUTION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for title, listing, release, build, package,
manifest, and compatibility handling.

runtime_scope:
- validate distribution target
- validate developer, release, and compatibility basis
- update distribution lifecycle state
- preserve distribution traceability

trigger_conditions:
- title approved
- listing published
- release approved
- build validated
- package validated
- manifest published

processing_steps:
1 resolve distribution target
2 verify developer, release, package, and compatibility basis
3 apply distribution state transition
4 persist distribution result
5 preserve audit and distribution trace

state_transition:
- draft -> approved
- approved -> active
- approved -> published
- validated -> published
- validated -> available
- published -> superseded
- active -> suspended
- active -> revoked

success_condition:
- game distribution lifecycle updated explicitly

failure_condition:
- invalid target
- developer, release, package, or compatibility basis unresolved
- persistence failure
