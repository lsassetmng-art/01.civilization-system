# CX22073JW Secret Audit Minimum Scope
- project: CX22073JW
- document_type: secret-audit-minimum-scope
- status: canonical-fixed
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document fixes the minimum audit scope for the triple-only secret layer.

## 2. Fixed Audit Principle
The first audit scope is:
- decision-oriented
- route-aware
- target-aware
- isolation-aware

It is not payload-history oriented in v1.

## 3. What Must Be Auditable
The minimum auditable unit is:
- privileged access decision

## 4. Minimum Audit Fields
The first-slice audit must preserve concepts equivalent to:
- access route
- privilege tier
- secret target selector
- resolved secret target
- decision status
- reason code
- requested timestamp
- resolved timestamp

## 5. What Is Explicitly Out of Scope for v1
The following are not minimum v1 requirements:
- full secret payload snapshot logging
- full object diff history
- secret body copy inside audit rows
- broad generic analytics reuse

## 6. Fixed Decision Status Set v1
The formal minimum decision status set is:
- `allowed`
- `denied`
- `unresolved`
- `error`

## 7. Fixed Reason Code Set v1
The formal minimum reason code set is:
- `selector_not_found`
- `insufficient_tier`
- `eligibility_failed`
- `target_not_bound`
- `isolation_blocked`
- `policy_blocked`
- `internal_error`

## 8. Final Rule
The audit minimum scope is now fixed enough for first-slice DDL candidate work.
