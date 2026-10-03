# CITY LOCAL PHYSICAL PERSISTENCE AND SERVER READ ARCHITECTURE

status: canonical
layer: architecture
domain: world.infrastructure-placement
document_id: 00208021
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the physical persistence ownership and server-read boundary for
CivilizationOS city-local active truth.

This document extends the existing R13 city-local active truth contracts.
It does not create a second city, territory, district, facility, or placement identity system.

## 2. Canonical Authorities

The following existing contracts remain authoritative:

- CITY_LOCAL_ACTIVE_TRUTH_FINALIZATION_ARCHITECTURE
- CIVILIZATION_ACTIVE_FACILITY_PLACEMENT_MODEL
- CIVILIZATION_DISTRICT_REGISTRY_MODEL
- CIVILIZATION_FACILITY_REGISTRY_MODEL
- CIVILIZATION_TERRITORY_RECORD_MODEL
- CITY_LOCAL_MAP_READ_INTERFACE
- CIVILIZATION_TRANSACTION_BOUNDARY
- CITY_BUILDER_API_CONTRACT
- CIVILIZATION_PERSONA_DB_AND_ERP_DB_BOUNDARY_RULE

## 3. CivilizationOS Persistence Ownership

City-local active world truth owned by CivilizationOS must be persisted
through a CivilizationOS-owned database boundary.

Canonical connection environment:

- CIVILIZATION_DATABASE_URL

Canonical schema:

- civilization_os

The public schema is prohibited.

CIVILIZATION_DATABASE_URL must not fall back to:

- PERSONA_DATABASE_URL
- DATABASE_URL

Persona canonical truth remains Persona-owned.
ERP canonical truth remains ERP-owned.
CivilizationOS city-local active truth is neither Persona-side nor ERP-side truth.

## 4. Physical Truth Set

The R13 active read model depends on these physical canonical relations:

- civilization_os.territory_record
- civilization_os.facility_registry
- civilization_os.district_registry
- civilization_os.active_facility_placement

No duplicate city registry is introduced by R13.

Active city identity remains resolved through the existing canonical city lineage
created through City Builder publication and activation.

## 5. Identity Binding

district_id is an API alias of district_registry_id.

facility_id is an API alias of facility_registry_id.

Aliases must never create a second persistent identity.

District binding requires:

- nation identity
- city_code
- district_code
- territory binding

Facility activation requires:

- canonical facility registry identity
- canonical facility type
- canonical UI target where required
- active placement
- nation and city binding

## 6. Placement Truth

Draft facility placement remains staged truth.

A draft must not become active truth because:

- a builder page was opened
- a default or seed exists
- an empty map slot was selected
- a recommendation exists
- URL parameters contain an identifier

Only explicit validated finalization may materialize active placement truth.

## 7. Finalization Transaction Boundary

Mutation finalization must reuse the canonical Civilization transaction boundary.

The write sequence must preserve:

1. authorization
2. canonical current-state load
3. validation
4. explicit finalization decision
5. district/facility/placement canonical mutation
6. audit state
7. required outbox write
8. commit
9. post-commit projection refresh

Pre-commit failure rolls back the transaction.

Projection state must never become canonical source of truth.

## 8. Server Read Boundary

Client UI must never connect directly to CivilizationOS persistence.

Read path:

CivilizationOS canonical persistence
-> server-side repository/read service
-> City Local Map Read projection
-> readiness evaluation
-> authenticated client UI

The read boundary is projection-only and must not:

- create canonical records
- finalize drafts
- move facilities
- generate canonical identifiers
- infer placement coordinates
- overwrite source truth

## 9. Readiness

Canonical readiness values remain:

- active
- partial_data
- blocked

Missing optional presentation context may produce partial_data.

Missing required canonical identity or required canonical binding must fail closed.

## 10. City Builder Separation

Existing /api/v1/city-builder/* endpoints remain the City Builder staged-write authority.

R13 city-local read endpoints are separate.

Read endpoints must not become mutation aliases for City Builder.

## 11. Phase 1 Boundary

This architecture does not widen execution phase 1 DB preparation.

The current phase 1 narrow-first DB scope remains unchanged.

R13 wide domain persistence, DDL execution, data migration, and runtime DB connection
require their own later implementation and GO gates.

## 12. Prohibitions

Prohibited:

- public schema use
- PERSONA_DATABASE_URL fallback
- DATABASE_URL fallback
- client-side direct DB access
- seed/default promotion to active truth
- duplicate district identity
- duplicate facility identity
- duplicate city registry
- URL parameters treated as canonical truth
- draft placement treated as active placement
- silent partial-data promotion to active

## 13. Acceptance

Accepted when:

- CivilizationOS DB ownership is explicit
- environment and schema ownership are explicit
- existing Persona/ERP boundaries are preserved
- physical truth set is fixed
- server-read boundary is fixed
- City Builder write boundary remains separate
- phase 1 scope is not widened
