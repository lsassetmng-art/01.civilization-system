# ============================================================
# BUSINESS EVENT DISPATCH RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for event outbox, inbox, and dispatch handling.

runtime_scope:
- validate event target
- validate contract and routing basis
- enforce idempotent dispatch and intake
- preserve dispatch traceability

trigger_conditions:
- outbox event queued
- inbox event received
- dispatch requested
- consume requested
- duplicate detected

processing_steps:
1 resolve inbox or outbox target
2 verify contract, routing, and payload basis
3 verify idempotency basis
4 apply dispatch state transition
5 persist dispatch result
6 preserve audit and dispatch trace

state_transition:
- pending -> dispatched
- pending -> consumed
- pending -> failed
- failed -> dead_lettered
- failed -> pending
- pending -> ignored_duplicate
- attempted -> succeeded
- attempted -> failed
- attempted -> replayed

success_condition:
- business event dispatch lifecycle handled once effectively

failure_condition:
- invalid target
- contract or routing basis unresolved
- duplicate effective action
- persistence failure
