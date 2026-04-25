# ============================================================
# NATION BUILDER STATE MACHINE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: government.nation_builder
document_id: 1201510003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines canonical nation builder state transition surface.

## 2. Scope

This document covers:
- staged nation builder states
- transition guards
- forbidden transitions
- supersede boundary

## 3. Canonical Source Of Truth

Nation builder state truth remains in staged builder records,
separate from active nation runtime truth.

## 4. Exact Table Set

- nation_builder_state
- nation_builder_state_transition
- nation_builder_guard_result
- nation_builder_supersede_link

## 5. Exact Request / Response

State changes occur through validated builder operations only.

## 6. Exact Command / Event

Typical events:
- nation_builder.validation_passed
- nation_builder.approval_requested
- nation_builder.approved
- nation_builder.published
- nation_builder.activated
- nation_builder.superseded

## 7. Authorization Boundary

Approval, publish, activation, and supersede require reviewed action where applicable.

## 8. State Machine

Allowed states:
- CREATED
- EDITING
- VALIDATING
- VALIDATION_FAILED
- AWAITING_APPROVAL
- APPROVED
- PUBLISHING
- PUBLISHED
- ACTIVATED
- REJECTED
- SUPERSEDED

## 9. Transaction Boundary

State transition must commit before downstream projection update.

## 10. Idempotency

Repeated transition requests must be safe or conflict-rejected.

## 11. Audit Trace

Reviewed transitions and forbidden transition attempts must be auditable.

## 12. Error Code Binding

Typical codes:
- STATE_NATION_BUILDER_TRANSITION_FORBIDDEN
- VALIDATION_NATION_BUILDER_GUARD_FAILED
- CONFLICT_NATION_BUILDER_SUCCESSOR_EXISTS

## 13. Observability

State progression and block reason must be visible.

## 14. Failure / Recovery

Transition guards:
- EDITING -> VALIDATING requires required bundle completeness
- VALIDATING -> AWAITING_APPROVAL requires validation pass
- AWAITING_APPROVAL -> APPROVED requires approval authority
- APPROVED -> PUBLISHED requires publish guard pass
- PUBLISHED -> ACTIVATED requires activation target and no conflict
- any -> SUPERSEDED requires successor linkage

Forbidden transitions:
- EDITING -> ACTIVATED
- VALIDATION_FAILED -> PUBLISHED
- AWAITING_APPROVAL -> ACTIVATED
- REJECTED -> ACTIVATED

## 15. Acceptance Checklist

- nation builder states fixed
- guard rules fixed
- forbidden transitions fixed
- supersede linkage fixed
