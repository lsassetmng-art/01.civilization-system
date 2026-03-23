# ============================================================
# BUSINESS OUTBOX DISPATCH OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational procedure for dispatching BusinessOS outbound
Persona sync events.

operation_scope:
- select pending outbox event
- validate dispatch readiness
- send event
- persist dispatch result
- schedule retry on failure

operation_steps:
1 select pending or retryable outbox event
2 verify target system is PersonaOS
3 verify event payload and event type validity
4 dispatch event through canonical integration boundary
5 mark event dispatched on success
6 increment retry_count on failure
7 schedule next retry or dead-letter terminal failure

success_condition:
- outbox row marked dispatched
- dispatched_at recorded
- payload remains immutable after success

failure_condition:
- outbox row marked failed
- retry scheduling updated
- terminal failures escalated by policy
