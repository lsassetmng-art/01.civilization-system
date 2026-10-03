# CITY LOCAL ACTIVE TRUTH DATABASE INFRASTRUCTURE

status: canonical
layer: infrastructure
domain: database
document_id: 1100020002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the physical database ownership contract for R13 city-local active truth.

This document extends DATABASE_INFRASTRUCTURE without replacing it.

## 2. Database Owner

Owner:

- CivilizationOS

Connection environment:

- CIVILIZATION_DATABASE_URL

Schema:

- civilization_os

Use of public schema is prohibited.

No fallback is allowed to:

- PERSONA_DATABASE_URL
- DATABASE_URL

## 3. Canonical Physical Relations

Required relations:

- civilization_os.territory_record
- civilization_os.facility_registry
- civilization_os.district_registry
- civilization_os.active_facility_placement

These relations are physical bindings of existing canonical models.
They are not new semantic identities.

## 4. Territory Record

territory_record persists the existing Territory Record canonical identity.

R13 must not create an alternate territory identity.

## 5. Facility Registry

facility_registry persists the existing Facility Registry canonical identity.

facility_registry_id remains canonical.

facility_id exposed by UI/API is an alias only.

## 6. District Registry

district_registry persists the existing District Registry model.

Canonical identity:

- district_registry_id

Natural identity:

- nation_id
- city_code
- district_code

district_id exposed by UI/API is an alias only.

A district requires resolvable city and territory context.

## 7. Active Facility Placement

active_facility_placement persists approved active placement truth.

Canonical identity:

- active_facility_placement_id

Version identity:

- facility_registry_id
- placement_version

Required placement context includes:

- nation_id
- city_code
- territory_code
- x
- y
- placement_status
- source_state_version
- effective_from

district_registry_id is required when the placement is inside a canonical district.

At most one current active placement version may exist for one facility_registry_id.

## 8. City Binding

R13 does not introduce a second city registry table.

nation_id plus city_code must resolve against existing active city lineage.

City Builder staged records are not active city truth.

## 9. Draft Separation

NATION_DRAFT_FACILITY_PLACEMENT remains draft-only.

Draft records must not be queried as active placement truth.

A finalization transaction may reference source_draft_facility_placement_id
for lineage without changing the draft identity into the active identity.

## 10. Persistence Integrity

Required integrity includes:

- canonical PK uniqueness
- natural-key uniqueness where defined by canonical model
- referential integrity between facility placement and Facility Registry
- referential integrity between placement and District Registry when district-bound
- territory binding validity
- active city binding validity
- placement version monotonicity
- stale-write rejection
- no duplicate current active placement

## 11. Read Boundary

Runtime client code must not read this schema directly.

Only server-side CivilizationOS read components may use CIVILIZATION_DATABASE_URL.

The server read layer must return canonical projection contracts rather than raw unrestricted rows.

## 12. DDL Boundary

This document defines physical persistence design only.

It does not execute:

- schema creation
- table creation
- migration
- seed insertion
- data repair
- production DB mutation

Executable DDL requires a separate reviewed implementation and explicit DB GO.

## 13. Phase 1 Boundary

These wide domain relations are not added to the current narrow execution phase 1 DB scope.

No existing phase 1 reserved DB slot is consumed by this document.

## 14. Acceptance

Accepted when:

- environment binding is explicit
- schema binding is explicit
- public schema is prohibited
- Persona/ERP fallback is prohibited
- four physical R13 relations are fixed
- city identity is not duplicated
- draft and active truth remain separated
- DDL remains deferred
