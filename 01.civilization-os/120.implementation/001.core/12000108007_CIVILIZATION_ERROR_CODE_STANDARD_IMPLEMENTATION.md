# ============================================================
# CIVILIZATION ERROR CODE STANDARD
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 001.core
document_id: 12000108007
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical error namespace used by API execution,
worker execution, audit visibility, and operator response.

## 2. Scope

Applies to canonical error code definition across implementation topics.

## 3. Canonical Source Of Truth

Canonical error namespace truth is defined in this document.

## 4. Error Families

- CORE_
- AUTH_
- ACCESS_
- POLICY_
- STATE_
- EVENT_
- INTEGRATION_
- AUDIT_
- STORAGE_
- VALIDATION_
- CONFLICT_
- RUNTIME_

## 5. Required Error Fields

- error_code
- family
- retryable_flag
- compensatable_flag
- http_mapping
- ui_severity
- operator_visibility
- canonical_message_template

## 6. Authorization Boundary

Authorization-related failures must use AUTH_ or ACCESS_ families.

## 7. State Machine

Not applicable as a business state machine.
This document defines canonical error classification.

## 8. Transaction Boundary

Error classification must remain stable across sync and async execution.

## 9. Idempotency

Retryable and non-retryable causes must not be conflated.

## 10. Audit Trace

Canonical error code must remain auditable and traceable.

## 11. Example Codes

- AUTH_SUBJECT_UNRESOLVED
- ACCESS_SCOPE_AMBIGUOUS
- STATE_TRANSITION_FORBIDDEN
- EVENT_DUPLICATE_REFLECTION_BLOCKED
- INTEGRATION_MAPPING_FAILED
- VALIDATION_REQUIRED_FIELD_MISSING
- CONFLICT_IDEMPOTENCY_IN_PROGRESS
- RUNTIME_EXECUTION_MODE_FORBIDDEN

## 12. Observability

Operator-visible failure surfaces must preserve canonical error code.

## 13. Failure / Recovery

Recovery posture depends on retryable_flag and compensatable_flag.

## 14. Rules

- One root cause must map to one canonical error code.
- Retryable and non-retryable must not be mixed.
- UI wording may vary, canonical code may not.
- Worker and API surfaces may differ, root code may not.

## 15. Acceptance Checklist

- namespace fixed
- required fields fixed
- uniqueness rule fixed
- retryability rule fixed
