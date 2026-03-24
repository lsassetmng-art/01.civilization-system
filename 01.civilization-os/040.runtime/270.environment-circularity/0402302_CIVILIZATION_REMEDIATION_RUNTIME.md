# ============================================================
# CIVILIZATION REMEDIATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for remediation handling.

runtime_scope:
- validate remediation target
- validate order and environmental basis
- update remediation state
- preserve remediation traceability

trigger_conditions:
- remediation order approved
- remediation activated
- remediation fulfilled
- remediation revoked
- remediation expired

processing_steps:
1 resolve remediation target and order
2 verify approval basis and environmental damage basis
3 apply remediation state transition
4 persist remediation result
5 preserve audit and environmental trace

success_condition:
- remediation lifecycle updated explicitly

failure_condition:
- invalid target
- order or environmental basis unresolved
- persistence failure
