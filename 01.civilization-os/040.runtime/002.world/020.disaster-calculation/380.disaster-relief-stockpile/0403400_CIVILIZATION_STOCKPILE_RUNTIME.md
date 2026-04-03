# ============================================================
# CIVILIZATION STOCKPILE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for stockpile handling.

runtime_scope:
- validate reserve target
- validate reserve lineage and expiry basis
- update stockpile state
- preserve reserve traceability

trigger_conditions:
- lot recorded
- reserve constrained
- expiry detected
- release requested
- correction requested

processing_steps:
1 resolve stockpile target
2 verify lineage, quantity, and expiry basis
3 apply stockpile state transition
4 persist reserve result
5 preserve audit and reserve trace

success_condition:
- stockpile lifecycle updated explicitly

failure_condition:
- invalid target
- lineage or expiry basis unresolved
- persistence failure
