# ============================================================
# CITY BUILDER STATE MACHINE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: government.city_builder
document_id: 1201525003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines canonical city builder state transition surface.

## 2. Scope

This document covers staged city builder progression.

## 3. Canonical Source Of Truth

City builder state truth remains in staged city builder records.

## 4. Exact Table Set

- city_builder_state
- city_builder_state_transition
- city_builder_guard_result
- city_builder_supersede_link

## 5. Exact Request / Response

State changes occur through explicit city builder operations.

## 6. Exact Command / Event

Typical events:
- city_builder.validation_passed
- city_builder.approval_requested
- city_builder.approved
- city_builder.published
- city_builder.activated
- city_builder.superseded

## 7. Authorization Boundary

Approval, publish, activation, and supersede require reviewed authority where applicable.

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

Activation must follow published artifact creation.

## 10. Idempotency

Repeated transition request must be safe or conflict-rejected.

## 11. Audit Trace

Reviewed transitions must be auditable.

## 12. Error Code Binding

Typical codes:
- STATE_CITY_BUILDER_TRANSITION_FORBIDDEN
- VALIDATION_CITY_BUILDER_GUARD_FAILED
- CONFLICT_CITY_BUILDER_SUCCESSOR_EXISTS

## 13. Observability

State progression and failed guards must remain visible.

## 14. Failure / Recovery

- EDITING does not activate city runtime truth
- approval required before publish where configured
- activate requires no conflicting active successor
- rejected draft cannot activate

## 15. Acceptance Checklist

- city builder states fixed
- guard rules fixed
- activation gate fixed
- supersede linkage fixed
