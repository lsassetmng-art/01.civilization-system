# ============================================================
# CIVILIZATION EXECUTION ENVELOPE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 001.core
document_id: 12000108004
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical execution envelope used by synchronous API execution,
controlled mutation entry, read-only query response, and worker-triggered
operation handoff across CivilizationOS.

## 2. Scope

This document standardizes:

- request envelope
- response envelope
- error envelope
- actor context
- scope context
- trace linkage
- idempotency linkage
- execution metadata

## 3. Canonical Source Of Truth

Canonical execution envelope truth is defined in this document and
must be referenced by all mutation-capable implementation documents.

## 4. Exact Request Envelope

Every mutation request must contain:

- request_id
- idempotency_key
- actor
- scope
- payload
- request_time

Optional:

- client_context
- delegated_context
- correlation_id

### 4.1 Actor Fields

- actor_type
- actor_id
- session_id
- principal_id
- delegated_by_actor_id (optional)
- auth_context_ref

Allowed actor_type values:

- user
- persona
- system
- worker

### 4.2 Scope Fields

- world_id (optional)
- nation_id (optional)
- company_id (optional)
- facility_id (optional)
- builder_session_id (optional)
- resource_scope
- action_scope

## 5. Exact Response Envelope

Every response must contain:

- ok
- request_id
- result
- errors
- meta

meta fields:

- server_time
- version
- execution_mode
- trace_id
- replay_flag

## 6. Exact Error Envelope

Every error entry must contain:

- code
- message
- field (optional)
- retryable
- category
- blocking_scope
- trace_ref

## 7. Authorization Boundary

Mutation without explicit actor, action_scope, or resolvable resource_scope
must fail closed.

## 8. State Machine

This document does not define business-domain state transitions.
It defines execution envelope constraints that precede all domain state change.

## 9. Transaction Boundary

Envelope validation must occur before authorization, canonical write,
audit write, and outbox write.

## 10. Idempotency

Mutation without idempotency_key is invalid.

## 11. Audit Trace

Every accepted mutation envelope must remain linkable to audit trace.

## 12. Error Code Binding

Typical error families include:

- AUTH_
- ACCESS_
- VALIDATION_
- CONFLICT_
- RUNTIME_

## 13. Observability

Envelope processing must expose traceable execution metadata.

## 14. Failure / Recovery

- missing actor => reject
- missing scope => reject
- missing idempotency_key for mutation => reject
- ambiguous action scope => reject

## 15. Rules

- Mutation without request_id is invalid.
- Mutation without actor is invalid.
- Mutation without action_scope is invalid.
- Mutation without explicit resource_scope must fail closed.
- Mutation without idempotency_key must be rejected.
- Query may omit idempotency_key only when no mutation path exists.
- Partial silent success is prohibited.
- Hidden fallback mutation is prohibited.

## 16. Execution Modes

Allowed execution_mode values:

- sync_api
- async_worker
- internal_command
- replay
- admin_repair

## 17. Canonical JSON Example

{
  "request_id": "uuid",
  "idempotency_key": "string",
  "actor": {
    "actor_type": "user",
    "actor_id": "user_xxx",
    "session_id": "sess_xxx",
    "principal_id": "principal_xxx",
    "delegated_by_actor_id": null,
    "auth_context_ref": "authctx_xxx"
  },
  "scope": {
    "world_id": null,
    "nation_id": "nation_xxx",
    "company_id": null,
    "facility_id": null,
    "builder_session_id": "nbs_xxx",
    "resource_scope": "nation.builder.session",
    "action_scope": "nation.builder.edit"
  },
  "payload": {},
  "request_time": "iso8601"
}

## 18. Acceptance Checklist

- request envelope fixed
- response envelope fixed
- error envelope fixed
- actor/scope minimum fixed
- fail-closed rule fixed
- idempotency linkage fixed
