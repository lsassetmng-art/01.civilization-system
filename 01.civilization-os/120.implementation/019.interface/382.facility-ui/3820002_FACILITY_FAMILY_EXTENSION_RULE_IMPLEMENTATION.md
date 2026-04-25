# ============================================================
# FACILITY FAMILY EXTENSION RULE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: interface.facility_ui
document_id: 3820002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how facility families extend the common facility shell.

## 2. Scope

This document covers:
- family extension slots
- family-specific panels
- applicability rules
- source-of-truth declaration

## 3. Canonical Source Of Truth

Facility family extension is interface composition truth only.

## 4. Exact Table Set

- facility_family_extension
- facility_extension_binding
- facility_extension_visibility_rule

## 5. Exact Request / Response

Extensions may add panels and bindings, not replace shell truth.

## 6. Exact Command / Event

Typical events:
- facility_extension_loaded
- facility_extension_blocked

## 7. Authorization Boundary

Extension visibility does not replace domain action authorization.

## 8. State Machine

Extension states:
- AVAILABLE
- BLOCKED
- NOT_APPLICABLE

## 9. Transaction Boundary

Extension rendering follows shell context resolution.

## 10. Idempotency

Repeated extension load for same context should be safe.

## 11. Audit Trace

Reviewed extension-related privileged panels must remain auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_FACILITY_EXTENSION_BINDING_INVALID
- ACCESS_FACILITY_EXTENSION_FORBIDDEN

## 13. Observability

Extension visibility and block reason must remain visible.

## 14. Failure / Recovery

- family extension may add panels, not replace shell truth
- common tabs remain stable unless explicitly inapplicable
- extension bindings must declare source-of-truth domain
- one-off mini-app divergence is prohibited

## 15. Acceptance Checklist

- extension rule fixed
- source-of-truth binding rule fixed
- mini-app divergence prohibition fixed
