# ============================================================
# ACTION SCOPE MASTER
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 014.security
subdomain: 040.authorization
document_id: 12001404002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical registry of action scopes used by authorization,
execution control, audit, and approval gating.

## 2. Scope

Applies to all mutation-capable and reviewed actions.

## 3. Canonical Source Of Truth

Canonical action_scope truth is defined in this document and
must be used by authorization-capable implementation topics.

## 4. Exact Table Set

Recommended canonical table:

- action_scope_master

Required columns:

- action_scope_code
- display_name
- domain_code
- resource_type
- mutation_flag
- approval_required_flag
- audit_required_flag
- privileged_flag
- default_fail_mode
- lifecycle_status

## 5. Exact Request / Response

Action scope is referenced from execution envelope and
authorization decision flows.

## 6. Exact Command / Event

Action scope must be bindable to internal command creation.

## 7. Authorization Boundary

- Every mutation must bind to one action_scope_code.
- Unregistered action scope must fail closed.
- Privileged actions must be explicitly flagged.

## 8. State Machine

Lifecycle of action scope definitions may be:

- DRAFT
- ACTIVE
- SUPERSEDED
- RETIRED

## 9. Transaction Boundary

Authorization decisions must reference registered action scope
before canonical mutation.

## 10. Idempotency

Not the primary idempotency authority; referenced by request/event flows.

## 11. Audit Trace

Audit-required action scopes must not bypass audit.

## 12. Error Code Binding

Typical codes include:

- ACCESS_SCOPE_AMBIGUOUS
- ACCESS_SCOPE_UNREGISTERED
- AUTH_PRIVILEGED_REVIEW_MISSING

## 13. Observability

Action scope usage must be traceable by operator tooling.

## 14. Failure / Recovery

Unknown or invalid action scope => fail closed.

## 15. Initial Seed Examples

- nation.builder.edit
- nation.builder.validate
- nation.builder.approve
- nation.builder.publish
- company.builder.edit
- company.builder.publish
- company.site.open
- marketplace.order.create
- marketplace.fulfillment.mark_shipped
- facility.operations.update
- admin.repair.reconcile

## 16. Acceptance Checklist

- action scope master fixed
- mutation binding rule fixed
- privileged rule fixed
- fail-closed rule fixed
