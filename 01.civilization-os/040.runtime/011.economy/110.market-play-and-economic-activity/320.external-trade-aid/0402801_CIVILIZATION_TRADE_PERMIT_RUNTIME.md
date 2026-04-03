# ============================================================
# CIVILIZATION TRADE PERMIT RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for import and export permit handling.

runtime_scope:
- validate permit target
- validate approval and restriction basis
- update permit state
- preserve border permission traceability

trigger_conditions:
- permit drafted
- permit approved
- permit activated
- permit suspended
- permit revoked or expired

processing_steps:
1 resolve permit target and goods scope
2 verify approval basis and restriction basis
3 apply permit state transition
4 persist permit result
5 preserve audit and border trace

success_condition:
- trade permit lifecycle updated explicitly

failure_condition:
- invalid target
- approval or restriction basis unresolved
- persistence failure
