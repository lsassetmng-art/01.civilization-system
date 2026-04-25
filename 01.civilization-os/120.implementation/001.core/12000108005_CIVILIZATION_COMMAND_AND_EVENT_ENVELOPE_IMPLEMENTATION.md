# ============================================================
# CIVILIZATION COMMAND AND EVENT ENVELOPE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 001.core
document_id: 12000108005
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines canonical command and event envelopes for internal execution,
state transition, projection, and controlled integration handoff.

## 2. Scope

This document standardizes internal command and event minimum structure.

## 3. Canonical Source Of Truth

Canonical command/event envelope truth is defined here and must be
used by all event-bearing implementation topics.

## 4. Exact Command Envelope

Every command must contain:

- command_id
- command_type
- aggregate_type
- aggregate_id
- request_id
- causation_id
- correlation_id
- actor_ref
- action_scope
- payload
- occurred_at

## 5. Exact Event Envelope

Every event must contain:

- event_id
- event_type
- aggregate_type
- aggregate_id
- source_command_id
- request_id
- causation_id
- correlation_id
- payload
- occurred_at
- schema_version

## 6. Exact Command Example

{
  "command_id": "uuid",
  "command_type": "nation.validate",
  "aggregate_type": "nation_builder",
  "aggregate_id": "nbs_xxx",
  "request_id": "uuid",
  "causation_id": "uuid",
  "correlation_id": "uuid",
  "actor_ref": "user:user_xxx",
  "action_scope": "nation.builder.validate",
  "payload": {},
  "occurred_at": "iso8601"
}

## 7. Exact Event Example

{
  "event_id": "uuid",
  "event_type": "nation.validated",
  "aggregate_type": "nation_builder",
  "aggregate_id": "nbs_xxx",
  "source_command_id": "uuid",
  "request_id": "uuid",
  "causation_id": "uuid",
  "correlation_id": "uuid",
  "payload": {},
  "occurred_at": "iso8601",
  "schema_version": 1
}

## 8. Authorization Boundary

Internal command creation must remain attributable to an allowed action_scope
or reviewed system-side action.

## 9. State Machine

This document defines envelope truth, not domain-specific state machines.

## 10. Transaction Boundary

Command creation precedes domain mutation.
Event creation follows domain mutation and precedes post-commit delivery.

## 11. Idempotency

Replayed event must preserve original event_id and must not create
new canonical fact identity.

## 12. Audit Trace

Command and event records must remain reconstructable from trace.

## 13. Error Code Binding

Typical codes include:

- EVENT_DUPLICATE_REFLECTION_BLOCKED
- VALIDATION_EVENT_SCHEMA_INVALID
- CONFLICT_EVENT_REPLAY_COLLISION

## 14. Observability

Command and event lineage must remain observable through causation_id
and correlation_id.

## 15. Failure / Recovery

- invalid command shape => reject
- invalid event payload => reject
- replay-safe delivery => no duplicate side effect

## 16. Rules

- Every mutation-generated event must reference source_command_id.
- Every command must reference request_id.
- Every event must preserve original event_id on replay.
- Projection-only fields must not enter canonical event payload.
- Delivery metadata must not be mixed into domain fact payload.

## 17. Acceptance Checklist

- command minimum fixed
- event minimum fixed
- replay rule fixed
- payload boundary fixed
- schema version rule fixed
