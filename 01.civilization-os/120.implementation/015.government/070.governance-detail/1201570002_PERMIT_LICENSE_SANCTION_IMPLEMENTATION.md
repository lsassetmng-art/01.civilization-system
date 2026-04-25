# ============================================================
# PERMIT LICENSE SANCTION
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: government.governance_detail
document_id: 1201570002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines permit, license, sanction, and penalty workflows as
governance detail surfaces.

## 2. Scope

This document covers:
- permit case
- license case
- sanction case
- penalty decision
- review result
- enforcement link

## 3. Canonical Source Of Truth

Permit/license/sanction detail truth is distinct from government core truth.

## 4. Exact Table Set

- permit_case
- license_case
- sanction_case
- penalty_decision
- review_result
- enforcement_link

## 5. Exact Request / Response

Permit/license/sanction operations are explicit detail workflows.

## 6. Exact Command / Event

Typical events:
- permit.requested
- permit.approved
- license.issued
- sanction.imposed
- penalty.finalized

## 7. Authorization Boundary

Reviewed action is required for sanction and penalty finalization where configured.

## 8. State Machine

Permit/license/sanction each own detail workflow states and may not collapse into one status.

## 9. Transaction Boundary

Detail workflow mutation must commit before enforcement linkage is exposed.

## 10. Idempotency

Repeated reviewed decision for same case must be safe or conflict-rejected.

## 11. Audit Trace

All reviewed permit/license/sanction decisions must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_PERMIT_REQUIREMENT_MISSING
- STATE_LICENSE_ISSUANCE_FORBIDDEN
- ACCESS_SANCTION_FINALIZATION_FORBIDDEN

## 13. Observability

Case status and enforcement linkage must remain visible.

## 14. Failure / Recovery

- permit and license are approval workflows
- sanction and penalty are enforcement workflows
- detail workflow must not overwrite government core truth silently

## 15. Acceptance Checklist

- permit/license/sanction split fixed
- review boundary fixed
- core/detail split fixed
