# ============================================================
# COMPANY BUILDER STATE MACHINE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: government.company_builder
document_id: 1201520003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines canonical company builder state transition surface.

## 2. Scope

This document covers company staged state progression.

## 3. Canonical Source Of Truth

Company builder state truth remains in staged company builder records.

## 4. Exact Table Set

- company_builder_state
- company_builder_state_transition
- company_builder_guard_result
- company_builder_supersede_link

## 5. Exact Request / Response

Builder state changes occur through validated builder operations only.

## 6. Exact Command / Event

Typical events:
- company_builder.validation_passed
- company_builder.approval_requested
- company_builder.approved
- company_builder.published
- company_builder.superseded

## 7. Authorization Boundary

Approval, publish, and supersede require reviewed authority where applicable.

## 8. State Machine

Allowed states:
- DRAFT
- TYPE_SELECTED
- COMMON_CONFIGURED
- TYPE_CONFIGURED
- VALIDATING
- VALIDATION_FAILED
- AWAITING_APPROVAL
- APPROVED
- PUBLISHING
- PUBLISHED
- REJECTED
- SUPERSEDED

## 9. Transaction Boundary

State transition must commit before downstream projection refresh.

## 10. Idempotency

Repeated transition requests must be safe or conflict-rejected.

## 11. Audit Trace

Reviewed state transitions must be auditable.

## 12. Error Code Binding

Typical codes:
- STATE_COMPANY_BUILDER_TRANSITION_FORBIDDEN
- VALIDATION_COMPANY_BUILDER_GUARD_FAILED
- CONFLICT_COMPANY_BUILDER_SUCCESSOR_EXISTS

## 13. Observability

State progression and block reason must remain visible.

## 14. Failure / Recovery

- type must be selected before type-specific configuration
- validation pass is required before approval request
- publish requires approved draft
- rejected draft may not activate runtime truth

## 15. Acceptance Checklist

- company builder states fixed
- guard rules fixed
- publish gate fixed
- supersede linkage fixed
