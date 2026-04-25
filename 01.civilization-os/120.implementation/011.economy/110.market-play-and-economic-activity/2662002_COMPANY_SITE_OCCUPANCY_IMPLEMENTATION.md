# ============================================================
# COMPANY SITE OCCUPANCY
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: economy.company_site
document_id: 2662002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines occupancy truth for company site operation without collapsing
company core, property ownership, and site activation into one record.

## 2. Scope

This document covers:
- occupancy truth
- occupancy mode
- occupancy effective period
- occupancy revision

## 3. Canonical Source Of Truth

Company site occupancy truth is distinct from:
- company core truth
- property ownership truth
- opening truth

## 4. Exact Table Set

- company_site
- company_site_occupancy
- property_unit_link
- occupancy_contract_link
- occupancy_revision

## 5. Exact Request / Response

Occupancy create, revise, suspend, and terminate are explicit operations.

## 6. Exact Command / Event

Typical commands:
- company_site_occupancy.create
- company_site_occupancy.revise
- company_site_occupancy.terminate

Typical events:
- company_site_occupancy.created
- company_site_occupancy.revised
- company_site_occupancy.terminated

## 7. Authorization Boundary

Occupancy mutation requires company-site-scoped authority and reviewed action where applicable.

## 8. State Machine

Recommended occupancy states:
- DRAFT
- ACTIVE
- SUSPENDED
- TERMINATED
- SUPERSEDED

## 9. Transaction Boundary

Occupancy mutation must commit before opening evaluation uses it.

## 10. Idempotency

Repeated occupancy mutation for same effective revision must be safe.

## 11. Audit Trace

Occupancy revision and termination must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_OCCUPANCY_EFFECTIVE_PERIOD_INVALID
- VALIDATION_OCCUPANCY_MODE_INVALID
- CONFLICT_OCCUPANCY_REVISION_COLLISION

## 13. Observability

Occupancy mode, effective period, and revision lineage must remain visible.

## 14. Failure / Recovery

- company core is not occupancy truth
- property ownership is not occupancy truth
- occupancy must declare effective period
- revoked occupancy must block new opening where required

## 15. Acceptance Checklist

- occupancy truth fixed
- ownership/occupancy split fixed
- effective period fixed
