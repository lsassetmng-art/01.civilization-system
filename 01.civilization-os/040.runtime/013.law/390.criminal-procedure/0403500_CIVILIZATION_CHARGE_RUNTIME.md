# ============================================================
# CIVILIZATION CHARGE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for charge filing handling.

runtime_scope:
- validate filing target
- validate accused and evidence basis
- update charge state
- preserve criminal traceability

trigger_conditions:
- filing drafted
- filing submitted
- filing accepted
- filing rejected
- filing withdrawn

processing_steps:
1 resolve charge target
2 verify accused and evidence basis
3 apply charge state transition
4 persist charge result
5 preserve audit and criminal trace

success_condition:
- charge lifecycle updated explicitly

failure_condition:
- invalid target
- accused or evidence basis unresolved
- persistence failure
