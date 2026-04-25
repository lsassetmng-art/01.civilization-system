# ============================================================
# COMPANY SITE API CONTRACT
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: economy.company_site
document_id: 2662004
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact API contract for company site creation, occupancy binding,
compatibility checking, opening, suspension, and closure.

## 2. Scope

This document covers company-site-side operational APIs.

## 3. Canonical Source Of Truth

Company site, occupancy, and opening remain separate truths.

## 4. Exact Table Set

- company_site
- company_site_occupancy
- company_opening
- company_site_compatibility_result

## 5. Exact Request / Response

Exact endpoints:

- POST /api/v1/company-sites
- PUT /api/v1/company-sites/{site_id}/occupancy
- PUT /api/v1/company-sites/{site_id}/compatibility-check
- POST /api/v1/company-sites/{site_id}/open
- POST /api/v1/company-sites/{site_id}/suspend
- POST /api/v1/company-sites/{site_id}/close
- GET /api/v1/company-sites/{site_id}

## 6. Exact Command / Event

Typical commands:
- company_site.create
- company_site.bind_occupancy
- company_site.check_compatibility
- company_site.open
- company_site.suspend
- company_site.close

Typical events:
- company_site.created
- company_site.occupancy_bound
- company_site.compatibility_checked
- company_site.opened
- company_site.suspended
- company_site.closed

## 7. Authorization Boundary

Company-site-scoped actions are required for mutation.
Reviewed action is required where opening has regulatory dependency.

## 8. State Machine

See dedicated occupancy and opening documents.

## 9. Transaction Boundary

Compatibility result must be committed before open decision depends on it.

## 10. Idempotency

Repeated compatibility check or open request for same revision must be safe.

## 11. Audit Trace

Opening-related reviewed actions must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_COMPANY_SITE_COMPATIBILITY_FAILED
- VALIDATION_COMPANY_SITE_OCCUPANCY_MISSING
- STATE_COMPANY_SITE_OPEN_FORBIDDEN

## 13. Observability

Site state, occupancy state, and compatibility result must remain visible.

## 14. Failure / Recovery

- company core and site remain separate truths
- occupancy and opening remain separate truths
- map display remains projection only

## 15. Acceptance Checklist

- company site API set fixed
- occupancy/opening split fixed
- compatibility boundary fixed
