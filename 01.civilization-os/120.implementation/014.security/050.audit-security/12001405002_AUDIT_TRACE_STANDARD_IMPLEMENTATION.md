# ============================================================
# AUDIT TRACE STANDARD
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 014.security
subdomain: 050.audit-security
document_id: 12001405002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the minimum canonical audit trace required for business mutation,
security-sensitive action, replay, repair, approval, and worker-driven change.

## 2. Scope

Applies to audited mutation and reviewed action flows.

## 3. Canonical Source Of Truth

Canonical audit minimum truth is defined in this document.

## 4. Exact Table Set

Required audit fields:

- audit_id
- aggregate_type
- aggregate_id
- action_code
- actor_type
- actor_id
- request_id
- idempotency_key
- decision_summary
- before_snapshot_ref
- after_snapshot_ref
- result_code
- occurred_at

## 5. Exact Request / Response

Audit records are not user-facing response truth, but must remain
linkable to request and result.

## 6. Exact Command / Event

Worker-caused mutation and reviewed action must remain command/event traceable.

## 7. Authorization Boundary

Publish, approve, reject, repair, and override must always be audited.

## 8. State Machine

Audit records are immutable and not business state machines.

## 9. Transaction Boundary

Successful mutation may not skip audit write.

## 10. Idempotency

Audit trace must remain linkable to idempotent request/event behavior.

## 11. Audit Trace

This document is the primary minimum audit standard.

## 12. Error Code Binding

Audit-visible failures must preserve canonical error code.

## 13. Observability

Security audit and business audit must be linkable but separable.

## 14. Failure / Recovery

Missing mandatory audit write on successful mutation is invalid.

## 15. Rules

- Publish, approve, reject, repair, and override must always be audited.
- Worker-caused mutation must be audited.
- Audit records are immutable.
- Security audit and business audit must be linkable but separable.

## 16. Acceptance Checklist

- minimum fields fixed
- mandatory audited actions fixed
- immutable rule fixed
- security/business split fixed
