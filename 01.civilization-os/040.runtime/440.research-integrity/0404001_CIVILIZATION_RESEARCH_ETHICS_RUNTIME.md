# ============================================================
# CIVILIZATION RESEARCH ETHICS RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for ethics review and experiment authorization.

runtime_scope:
- validate review target
- validate project and ethics basis
- update review or authorization state
- preserve ethics traceability

trigger_conditions:
- review opened
- review approved
- authorization activated
- authorization suspended
- authorization revoked

processing_steps:
1 resolve review or authorization target
2 verify project and ethics basis
3 apply lifecycle state transition
4 persist ethics result
5 preserve audit and ethics trace

success_condition:
- research ethics lifecycle updated explicitly

failure_condition:
- invalid target
- project or ethics basis unresolved
- persistence failure
