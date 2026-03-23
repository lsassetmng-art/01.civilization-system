# ============================================================
# BUSINESS SYNC CONSUME OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational procedure for consuming Persona sync results
inside BusinessOS.

operation_scope:
- poll or receive inbox events
- classify event type
- route to usage or trust consume runtime
- record consume result
- escalate repeated failures

operation_steps:
1 detect pending inbox event
2 validate event identity and payload presence
3 classify sync event as usage-domain or trust-domain
4 invoke matching consume runtime
5 record success or failure outcome
6 update consume counters and timestamps
7 escalate or dead-letter if retry threshold exceeded

success_condition:
- target reflection model updated idempotently
- inbox event marked consumed
- audit trail preserved

failure_condition:
- target reflection not safely updated
- inbox event remains retryable or becomes dead-lettered
