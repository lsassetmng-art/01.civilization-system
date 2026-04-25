# ============================================================
# TERRITORY AND ZONE TABLE SET
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: government.zone_and_territory
document_id: 1201550002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical table set for territory ownership and zoning assignment.

## 2. Scope

This document covers:
- territory root
- district
- zone definition
- zoning preset
- zoning assignment
- map projection boundary

## 3. Canonical Source Of Truth

Territory and zoning truth is defined in canonical government-owned records.
Map view is derived only.

## 4. Exact Table Set

- territory_root
- territory_revision
- district
- district_revision
- zone_definition
- zoning_preset
- zoning_assignment
- zone_compatibility_result
- territory_map_projection

## 5. Exact Request / Response

Territory and zoning mutation must target explicit canonical records.

## 6. Exact Command / Event

Typical commands:
- territory.define
- district.define
- zone.assign
- zoning.validate

Typical events:
- territory.defined
- district.defined
- zoning.assigned
- zoning.validation_failed

## 7. Authorization Boundary

Territory and zoning mutation require government-scoped authority.

## 8. State Machine

Territory revision and zoning assignment are revision-based rather than one flat status.

## 9. Transaction Boundary

Canonical territory/zoning mutation must commit before map projection refresh.

## 10. Idempotency

Repeated zoning assignment for same target revision must be safe.

## 11. Audit Trace

Territory revision and zoning assignment must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_TERRITORY_CONFLICT
- VALIDATION_ZONING_COMPATIBILITY_FAILED
- STATE_TERRITORY_REVISION_FORBIDDEN

## 13. Observability

Revision lineage and zoning compatibility result must remain visible.

## 14. Failure / Recovery

- territory_root defines spatial belonging
- zone_definition defines allowed use rule
- zoning_assignment binds zone rule to territory unit
- map projection is derived only
- revision must preserve lineage

## 15. Acceptance Checklist

- territory/zone split fixed
- exact table set fixed
- map projection boundary fixed
