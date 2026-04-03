# ============================================================
# CIVILIZATION MEDIATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for mediation handling.

runtime_scope:
- validate mediation target
- validate dispute and mediator basis
- update mediation state
- preserve settlement traceability

trigger_conditions:
- mediation opened
- session advanced
- agreement reached
- mediation failed
- mediation withdrawn

processing_steps:
1 resolve mediation target and source dispute
2 verify mediator basis and source case basis
3 apply mediation state transition
4 persist mediation result
5 preserve audit and settlement trace

success_condition:
- mediation lifecycle updated explicitly

failure_condition:
- invalid target
- mediator or dispute basis unresolved
- persistence failure
