# ============================================================
# PERSONA EXTERNAL SYNC RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for external sync inbox and outbox handling.

runtime_scope:
- validate sync target
- validate contract and target basis
- enforce idempotent intake and dispatch
- preserve sync traceability

trigger_conditions:
- inbox event received
- outbox event queued
- dispatch requested
- consume requested
- duplicate detected

processing_steps:
1 resolve inbox or outbox target
2 verify contract, target, and payload basis
3 verify idempotency basis
4 apply sync state transition
5 persist sync result
6 preserve audit and sync trace

state_transition:
- pending -> dispatched
- pending -> consumed
- pending -> failed
- failed -> dead_lettered
- failed -> pending
- pending -> ignored_duplicate

success_condition:
- sync lifecycle handled once effectively

failure_condition:
- invalid target
- contract or target basis unresolved
- duplicate effective action
- persistence failure
