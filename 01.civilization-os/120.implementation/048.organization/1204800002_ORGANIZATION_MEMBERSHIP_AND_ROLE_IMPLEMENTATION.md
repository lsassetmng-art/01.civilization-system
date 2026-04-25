# ============================================================
# ORGANIZATION MEMBERSHIP AND ROLE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: organization
document_id: 1204800002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines organization root, membership, role binding, affiliation, and history.

## 2. Scope

This document covers:
- organization root
- membership
- role binding
- affiliation
- membership history

## 3. Canonical Source Of Truth

Organization membership truth remains distinct from employment truth.

## 4. Exact Table Set

- organization_root
- organization_membership
- organization_role_binding
- organization_affiliation
- organization_membership_history

## 5. Exact Request / Response

Membership join, leave, role bind, and affiliation review are explicit operations.

## 6. Exact Command / Event

Typical events:
- organization.membership_started
- organization.role_bound
- organization.affiliation_recorded
- organization.membership_ended

## 7. Authorization Boundary

Membership and role mutation require organization-side authority.

## 8. State Machine

Membership states:
- INVITED
- ACTIVE
- SUSPENDED
- ENDED
- SUPERSEDED

## 9. Transaction Boundary

Membership mutation must commit before permission propagation depends on it.

## 10. Idempotency

Repeated join/leave for same membership revision must be safe.

## 11. Audit Trace

Role change and reviewed removal must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_ORGANIZATION_MEMBERSHIP_INVALID
- STATE_ORGANIZATION_ROLE_BINDING_FORBIDDEN
- ACCESS_ORGANIZATION_MUTATION_FORBIDDEN

## 13. Observability

Membership posture and role-binding posture must remain visible.

## 14. Failure / Recovery

- membership and role are separate
- affiliation and employment are separate
- leaving organization must preserve prior trace

## 15. Acceptance Checklist

- membership/role split fixed
- affiliation/employment split fixed
- history preservation fixed
