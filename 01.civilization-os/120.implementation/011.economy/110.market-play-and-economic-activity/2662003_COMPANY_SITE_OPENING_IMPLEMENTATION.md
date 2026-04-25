# ============================================================
# COMPANY SITE OPENING
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: economy.company_site
document_id: 2662003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines opening, suspension, and closure behavior for company sites.

## 2. Scope

This document covers:
- opening guard
- open state
- suspension
- closure
- notification linkage

## 3. Canonical Source Of Truth

Opening truth is distinct from company core truth and occupancy truth.

## 4. Exact Table Set

- company_opening
- company_opening_guard
- company_opening_event_link
- company_site_closure

## 5. Exact Request / Response

Opening, suspension, and closure are explicit site operations.

## 6. Exact Command / Event

Typical commands:
- company_site.open
- company_site.suspend
- company_site.close

Typical events:
- company_site.opened
- company_site.suspended
- company_site.closed

## 7. Authorization Boundary

Opening and closure require company-site-scoped authority and reviewed approval where configured.

## 8. State Machine

Allowed opening states:
- OPENING_PENDING
- OPEN
- SUSPENDED
- CLOSED

## 9. Transaction Boundary

Opening guard must pass before opening commit.
Notification or projection follows post-commit.

## 10. Idempotency

Repeated open/close for same effective target must be safe or conflict-rejected.

## 11. Audit Trace

Opening, suspension, and closure must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_COMPANY_SITE_OPENING_GUARD_FAILED
- STATE_COMPANY_SITE_ALREADY_OPEN
- ACCESS_COMPANY_SITE_OPENING_FORBIDDEN

## 13. Observability

Opening guard result and site state must remain visible.

## 14. Failure / Recovery

- opening requires active company core
- opening requires valid occupancy
- opening requires zoning compatibility pass
- opening requires nation/city notification where applicable
- suspension and closure must preserve historical trace

## 15. Acceptance Checklist

- opening truth fixed
- open/suspend/close states fixed
- guard rules fixed
