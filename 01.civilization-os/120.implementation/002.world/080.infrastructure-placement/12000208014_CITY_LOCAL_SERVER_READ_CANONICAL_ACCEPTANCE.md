# R13 CITY LOCAL SERVER READ CANONICAL ACCEPTANCE

status: accepted
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208014
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Records canonical implementation acceptance of the R13
CivilizationOS city-local server-read substrate.

This acceptance is intentionally separated from:

- live AWS deployment acceptance
- real authenticated actor acceptance
- city/auth provisioning acceptance
- live authorized database-read acceptance
- facility-type-master integration acceptance
- canonical facility UI mapping integration acceptance

Those remain later runtime or integration gates.

## 2. Accepted Implementation Lineage

Accepted implementation head:

f737f7f94515889bedc79aaccba7ec404d7eb331

Relevant implementation lineage includes:

- 9dd085cb908e56a8989aa910459a915103fb8ab4
  feat(civilizationos): implement R13 city-local server reads

- 3d2d858ca0d6c454eebc8424a52920e1395755ed
  fix(civilizationos): accept canonical UUID identities

- f2f11148c839095d0522665747f41aeb040cc963
  feat(civilizationos): expose signed session identity proof

- f737f7f94515889bedc79aaccba7ec404d7eb331
  fix(civilizationos): enforce placement effective time

## 3. Accepted Endpoint Family

The implementation contains the canonical endpoint family:

- GET /api/v1/city-local/nations/{nation_id}/cities/{city_code}/map
- GET /api/v1/city-local/facilities/{facility_registry_id}
- GET /api/v1/city-local/districts/{district_registry_id}

These remain read endpoints only.

## 4. Accepted Persistence Boundary

Accepted server persistence boundary:

- PERSONA_DATABASE_URL only
- civilization schema
- no DATABASE_URL fallback
- TLS sslmode = verify-full
- server-side PostgreSQL access only

The repository is not a browser persistence adapter.

## 5. Accepted Read-Only Transaction Boundary

Canonical server reads execute inside:

BEGIN READ ONLY

with bounded statement timeout.

The accepted read path contains no INSERT, UPDATE, DELETE,
CREATE TABLE, ALTER TABLE, or DROP TABLE operations.

## 6. Accepted Authentication Boundary

The server read layer reuses the signed CivilizationOS server session.

It does not trust:

- localStorage
- sessionStorage
- route nation_id as authentication
- arbitrary identity request headers
- unsigned browser JSON

Missing or invalid signed-session context fails as unauthenticated.

## 7. Accepted Authorization Boundary

Nation-level city-local reads require:

- scope_code = city_local_read
- authorization_status = active
- effective_from <= current transaction time
- effective_until IS NULL

Authentication does not itself create authorization.

The implementation checks nation_read_authorization independently
from canonical resource existence.

## 8. Accepted City Active Semantics

A city is current active only when:

- city_status = active
- effective_from <= now()
- effective_until IS NULL

A known but non-current city is not promoted to active.

## 9. Accepted Territory Active Semantics

A territory is current active only when:

- territory_status = active
- effective_from <= now()
- effective_until IS NULL

Missing or non-current territory truth contributes explicit
blocked readiness.

## 10. Accepted Active Placement Semantics

The effective-time repair at:

f737f7f94515889bedc79aaccba7ec404d7eb331

closes the future-placement visibility gap.

Both:

- findCurrentActivePlacement
- listFacilitiesForCity

now require:

- placement_status = active
- effective_from <= now()
- effective_until IS NULL

A future-effective placement is therefore not treated as current active.

## 11. Accepted Projection Field Contract

The implementation preserves the canonical city-local field naming,
including:

- district_id
- district_registry_id
- facility_id
- facility_registry_id
- active_facility_placement_id
- placement_x
- placement_y
- rotation_code
- placement_status
- route_readiness
- partial_data_reasons
- projection_version

facility_id remains an alias of facility_registry_id.

district_id remains an alias of district_registry_id.

No second UI identity is introduced.

## 12. Accepted Readiness Contract

Accepted readiness values are:

- active
- partial_data
- blocked

Missing truth does not become fabricated active state.

Blocked or partial dependencies remain explicit.

## 13. Facility Type and UI Target Boundary

Facility Type master and canonical facility UI target mapping are not
yet resolved by the current repository implementation.

The implementation therefore emits unresolved dependency reasons:

- facility_type_unresolved
- canonical_ui_target_unresolved

and does not fabricate either value.

Current facility routes remain blocked while these required dependencies
are unresolved.

This fail-closed behavior is accepted.

This acceptance does not claim that facility routes are operationally
active.

A later approved integration may resolve these dependencies and allow
route readiness to become active.

## 14. Map Aggregate Readiness

The city-map projection may remain:

- active
- partial_data
- blocked

depending on canonical city, territory, district, and facility dependency
state.

A blocked child route may cause aggregate partial_data when the map itself
still has valid canonical city context.

This does not authorize activation of the blocked child route.

## 15. HTTP Contract

Accepted HTTP semantics remain:

- 200 known canonical projection
- 400 malformed request identity
- 401 unauthenticated
- 403 authenticated but unauthorized
- 404 canonical identity absent
- 503 required persistence unavailable

Known resources may return 200 with blocked or partial_data readiness.

## 16. Resource Authorization Order

Accepted order remains consistent with the R13 lineage/authorization design.

City map:

1. validate request
2. validate signed session
3. authorize requested nation
4. resolve city
5. resolve canonical dependencies
6. project readiness

District:

1. validate request
2. validate signed session
3. resolve district
4. authorize district nation
5. resolve city/territory
6. project readiness

Facility:

1. validate request
2. validate signed session
3. resolve facility
4. resolve current placement when present
5. select placement nation, otherwise owner nation
6. authorize selected nation
7. resolve city/territory
8. project readiness

## 17. No Seed Promotion

This acceptance does not permit:

- R11 navigation data to become DB truth
- route/query values to become DB truth
- seed facility coordinates to become active placement
- builder drafts to become active records
- fabricated facility or district IDs

Canonical reads remain projections over canonical persistence.

## 18. Validation Evidence

The accepted implementation head has already passed:

- TypeScript typecheck
- Next.js production build
- canonical city-map route build
- facility route build
- district route build
- exact Next.js 15.5.18 runtime validation
- pg 8.16.3 validation
- effective-time repair static verification

The effective-time repair changed exactly one implementation source file
and inserted exactly two current-placement effective_from filters.

## 19. Acceptance Classification

R13 server-read implementation status:

STATIC_CANONICAL_IMPLEMENTATION_ACCEPTED

This means:

- canonical server read structure is accepted
- persistence boundary is accepted
- authentication boundary is accepted
- authorization boundary is accepted
- active-time semantics are accepted
- projection field contract is accepted
- readiness fail-closed behavior is accepted

It does not mean:

- AWS runtime is accepted
- a real user signed session is accepted
- city/auth DB provisioning is complete
- an authorized live 200 DB read has been observed
- facility type / canonical UI mapping is complete

## 20. Runtime Acceptance Still Required

Full runtime acceptance requires the later sequence:

1. deploy approved implementation to AWS
2. perform Portal -> CivilizationOS login
3. verify signed HttpOnly server session
4. obtain real server_session_actor_key through session-identity proof
5. instantiate the approved city/auth runtime manifest
6. separately approve city/auth DB provisioning
7. provision Helios City and city_local_read authorization
8. execute live authorized city-local reads
9. verify expected 200 / 401 / 403 / 404 / 503 behavior where applicable

No step in this document authorizes those mutations.

## 21. AWS Login Test Scope

The planned AWS authentication test is separate from this acceptance.

Required later user flows are:

1. Civilization Portal
   -> CivilizationOS login
   -> AIWorkerOS

2. Civilization Portal
   -> CivilizationOS login
   -> CivilizationOS

Those tests must also verify that successful server-authenticated login
can support the session-identity proof required by R13.

## 22. Final Decision

Accepted:

R13 city-local server-read canonical implementation substrate.

Accepted implementation head:

f737f7f94515889bedc79aaccba7ec404d7eb331

Runtime authorization and AWS acceptance remain explicitly open.
