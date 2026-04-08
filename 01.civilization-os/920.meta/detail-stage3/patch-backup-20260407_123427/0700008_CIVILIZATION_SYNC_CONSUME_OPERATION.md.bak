# ============================================================
# CIVILIZATION SYNC CONSUME OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational procedure for consuming inbound synchronization.

operation_scope:
- detect pending inbox events
- validate routing and readiness
- invoke consume runtime
- persist outcome
- escalate repeated failure

operation_steps:
1 detect pending or retryable inbox unit
2 validate source/target routing and payload presence
3 invoke canonical sync consume runtime
4 persist consumed, failed, duplicate, or dead-lettered result
5 update counters and timestamps
6 emit operator-visible escalation when required

success_condition:
- consume completed once effectively
- outcome persisted with traceability
- no silent truth transfer occurred

failure_condition:
- consume runtime failed
- invalid contract classification
- persistence failure
- escalation metadata failure
