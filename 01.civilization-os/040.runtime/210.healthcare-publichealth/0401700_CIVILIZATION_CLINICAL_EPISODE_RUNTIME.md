# ============================================================
# CIVILIZATION CLINICAL EPISODE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for clinical episode handling.

runtime_scope:
- validate episode target
- validate care basis
- update episode state
- preserve care traceability

trigger_conditions:
- case admitted
- care plan updated
- stabilization recorded
- discharge or transfer recorded

processing_steps:
1 resolve clinical episode target
2 verify patient, facility, and care basis
3 apply episode state transition
4 persist episode result
5 preserve audit and care trace

success_condition:
- clinical episode updated explicitly

failure_condition:
- invalid target
- care basis unresolved
- persistence failure
