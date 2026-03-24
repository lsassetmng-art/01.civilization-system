# ============================================================
# CIVILIZATION SYNC CONSUME RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical runtime for inbound synchronization consume.

runtime_scope:
- read pending inbox event
- validate contract shape
- verify idempotency basis
- route to domain reflection or coordination handler
- persist consume result

input_model:
- CIVILIZATION_SYNC_INBOX_MODEL

trigger_conditions:
- new inbox event received
- retryable inbox event reselected
- operator-approved replay event

processing_steps:
1 select pending or retryable inbox event
2 validate source_domain, target_domain, and sync_event_type
3 validate payload integrity and contract version if present
4 verify duplicate source identity
5 route event to reflection or coordination handler
6 persist consumed, failed, dead-lettered, or duplicate result
7 emit audit trace

success_condition:
- inbox event handled once effectively
- reflected or coordinated state updated safely
- consume result persisted with traceability

failure_condition:
- invalid payload
- contract incompatibility
- authorization failure
- reflection failure
- persistence failure

dead_letter_conditions:
- unrecoverable contract incompatibility
- unauthorized source or target
- retry budget exhausted after terminal classification

idempotency_rule:
source_domain + source_event_id must prevent duplicate effective consume.

truth_boundary:
Consume runtime coordinates reflection.
It must not silently reassign truth ownership.
