# ============================================================
# CIVILIZATION DEATH REGISTRATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for death registration.

runtime_scope:
- validate death target
- validate registration basis
- update death record state
- preserve civil traceability

trigger_conditions:
- death reported
- registration reviewed
- correction requested
- invalidation requested

processing_steps:
1 resolve death registration target
2 verify registration basis and source state version
3 apply death record state transition
4 persist death result
5 preserve audit and civil trace

success_condition:
- death registration updated explicitly

failure_condition:
- invalid target
- registration basis unresolved
- persistence failure
