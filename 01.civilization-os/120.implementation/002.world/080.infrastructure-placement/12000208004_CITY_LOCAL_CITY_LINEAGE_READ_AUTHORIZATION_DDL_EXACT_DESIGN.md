# CITY LOCAL CITY LINEAGE AND READ AUTHORIZATION DDL EXACT DESIGN

status: implementation-ready-draft
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208004
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the supplemental exact PostgreSQL design required before the
R13 city-local server read implementation may proceed.

This supplement resolves two dependencies that were intentionally deferred
by the original four-table R13 DDL:

- canonical city identity / active city lineage
- authenticated actor to nation read authorization

This document prepares DDL only.

It does not authorize database execution, seed insertion,
authorization grant provisioning, server implementation, or AWS mutation.

## 2. Discovery Basis

Read-only metadata discovery established that:

- civilization contains the four original R13 active-truth tables
- no independent city identity relation currently exists
- district_registry and active_facility_placement contain city_code
  but cannot themselves become city identity truth
- no existing relation combines a Civilization actor identity with nation_id
  as an approved CivilizationOS read authorization source
- personaos.nation contains nation identity but no city identity
- streaming.auth_civilization_identity_bindings is owned by StreamingOS
  and is not adopted as CivilizationOS authorization truth

Therefore R13 must not:

- trust route nation_id as authorization
- trust route city_code as city existence
- infer city existence from a district or facility row
- treat login as authorization to every nation
- reuse StreamingOS authorization state as CivilizationOS truth
- reinterpret the signed session actor value as a UUID Civilization entity

## 3. Canonical Supplemental Relations

The supplemental physical relations are:

1. civilization.city_registry
2. civilization.nation_read_authorization

No object is created in public schema.

## 4. city_registry Authority

civilization.city_registry is the R13 physical owner of canonical city identity.

Canonical PK:

- city_registry_id

Canonical natural identity:

- nation_id
- city_code

Canonical city / territory binding:

- nation_id
- city_code
- territory_code

Fields:

- city_registry_id uuid
- nation_id uuid
- city_code text
- city_name text
- city_status text
- territory_code text
- source_state_version bigint
- effective_from timestamptz
- effective_until timestamptz nullable
- created_at timestamptz
- updated_at timestamptz

Allowed city_status:

- active
- inactive
- suspended
- closed
- archived

Current active city means:

- city_status = active
- effective_until IS NULL

A known city whose identity exists but is not current active remains a known
canonical resource.

The server read layer may return that identity with blocked readiness.
It must not silently convert the city to active.

## 5. City Territory Binding

city_registry must bind to Territory Record through:

- nation_id
- territory_code

The database FK references:

civilization.territory_record
(nation_id, territory_code)

A city cannot become canonical R13 city truth without canonical territory
binding.

## 6. District / Placement City Binding

After city_registry is created:

civilization.district_registry

must bind:

- nation_id
- city_code
- territory_code

to city_registry.

civilization.active_facility_placement

must also bind:

- nation_id
- city_code
- territory_code

to city_registry.

This closes the previous physical city-FK deferral.

Existing downstream rows must not be auto-backfilled from:

- R11 navigation data
- UI constants
- map seed
- builder draft
- query parameters
- guessed city mappings

If existing rows cannot satisfy the new canonical city FK,
DDL apply must stop.

## 7. Navigation Boundary

lib/map-data.ts remains navigation projection only.

Nation/city values in R11 navigation may help a user select a route,
but they do not prove:

- city existence
- city active status
- city territory binding
- authorization

No seed or navigation entry is inserted into city_registry automatically.

## 8. PersonaOS Nation Boundary

personaos.nation is not adopted by this supplement as the R13 physical
city owner or read authorization owner.

The observed relation contains nation identity and lifecycle fields,
but no canonical city identity.

R13 therefore does not add a new cross-schema FK to personaos.nation
through this supplement.

Nation-level reconciliation across CivilizationOS and PersonaOS remains
a separate canonical boundary.

## 9. Server Session Actor Boundary

The existing signed server-readable CivilizationOS session remains
the authentication authority.

The signed payload field currently named civilizationId is consumed by this
authorization layer only as an opaque server_session_actor_key.

It is not reinterpreted as:

- auth.users.id
- personaos owner UUID
- StreamingOS civilization_id UUID
- nation_id
- city identity

The actor key must originate only from a valid signed,
unexpired CivilizationOS server session.

The authorization repository must never accept an actor key supplied by:

- route
- query parameter
- arbitrary request header
- localStorage
- sessionStorage
- unsigned JSON

## 10. nation_read_authorization Authority

civilization.nation_read_authorization is the R13 resource-authorization
decision source for city-local reads.

Fields:

- nation_read_authorization_id uuid
- server_session_actor_key text
- nation_id uuid
- scope_code text
- authorization_status text
- effective_from timestamptz
- effective_until timestamptz nullable
- created_at timestamptz
- updated_at timestamptz

Initial allowed scope_code:

- city_local_read

Allowed authorization_status:

- active
- revoked

Current authorization means:

- scope_code = city_local_read
- authorization_status = active
- effective_until IS NULL
- effective_from <= current server transaction time

At most one current active authorization may exist for:

- server_session_actor_key
- nation_id
- scope_code

## 11. Authorization Is Not Resource Existence

nation_read_authorization deliberately does not become proof that a nation,
city, district, facility, or placement exists.

There is no new nation-level FK in this supplement because no approved
CivilizationOS nation-registry owner was identified during discovery.

A grant means only:

the authenticated actor may read city-local resources scoped to the
specified nation when those resources independently resolve canonically.

The repository must still resolve canonical resource identity separately.

## 12. No Automatic Grant

DDL inserts no authorization row.

Authentication must not auto-create a grant.

Absence of a matching current active grant means:

- authenticated request
- unauthorized target nation
- HTTP 403

There is no implicit:

- own nation fallback
- all-nations fallback
- admin fallback
- first nation fallback
- route-value fallback

Grant provisioning is a separate mutation authority and requires
a separate explicit design / execution decision.

## 13. Endpoint Authorization Order

### City map

GET /api/v1/city-local/nations/{nation_id}/cities/{city_code}/map

Required order:

1. validate request structure
2. validate signed server session
3. check city_local_read authorization for requested nation_id
4. resolve city_registry by nation_id + city_code
5. return 404 if canonical city identity is absent
6. resolve territory, districts, placements, facilities, type/UI dependencies
7. produce active / partial_data / blocked readiness

A city that exists but is not current active returns 200 blocked,
not fabricated active state.

### District

GET /api/v1/city-local/districts/{district_registry_id}

Required order:

1. validate request structure
2. validate signed server session
3. resolve District Registry identity
4. return 404 when absent
5. authorize against district_registry.nation_id
6. resolve city_registry and territory binding
7. return projection readiness

### Facility

GET /api/v1/city-local/facilities/{facility_registry_id}

Required order:

1. validate request structure
2. validate signed server session
3. resolve Facility Registry identity
4. return 404 when absent
5. resolve current active placement where present
6. authorization nation is:
   - current active placement nation_id when present
   - otherwise facility_registry.owner_nation_id
7. require city_local_read authorization for that nation
8. resolve city context when placement exists
9. return projection readiness

No route selector itself grants access.

## 14. HTTP Boundary

R13 keeps the existing HTTP contract:

- 200 known canonical resource with active / partial_data / blocked projection
- 400 malformed identity or request structure
- 401 invalid or missing authenticated server session
- 403 authenticated but no current active nation read authorization
- 404 canonical resource identity absent
- 503 required persistence unavailable

The repository must fail closed.

## 15. DDL Apply Boundary

The supplemental apply creates only:

- civilization.city_registry
- civilization.nation_read_authorization
- current-active authorization unique index
- district -> city FK
- active placement -> city FK

It inserts no rows.

It changes no existing row.

It creates no public object.

## 16. Existing-Row Migration Rule

Because city_registry is created empty,
existing district_registry or active_facility_placement rows cannot be
silently adopted.

Before apply:

- count existing district rows
- count existing active placement rows

If either count is nonzero, stop.

A separate explicit canonical migration mapping is required.

No seed-derived backfill is allowed.

## 17. Rollback

Rollback is repair-first.

The prepared rollback refuses destructive removal when:

- city_registry contains rows
- nation_read_authorization contains rows
- district_registry contains rows
- active_facility_placement contains rows

The civilization schema and the original four R13 tables are never dropped
by this supplemental rollback.

## 18. Runtime TLS Boundary

Future server persistence remains:

- PERSONA_DATABASE_URL
- civilization schema
- TLS certificate validation
- hostname validation

The working preflight posture is verify-full with the approved Supabase
server root certificate.

Disabling certificate validation is prohibited.

## 19. Acceptance

Accepted when:

- city_registry physical owner is fixed
- city natural identity is fixed
- territory binding is fixed
- district and placement city FKs are fixed
- signed-session actor interpretation is fixed
- nation read authorization source is fixed
- 401 and 403 remain separate
- no automatic authorization is allowed
- no seed is promoted into canonical city truth
- no DB connection occurs during design mutation

## 20. R13 City/Auth Provisioning Resolution

The previously deferred authorization grant provisioning path is now
specified by:

12000208006_CITY_LOCAL_CITY_AUTH_PROVISIONING_DESIGN.md

and:

12000208007_CITY_LOCAL_CITY_AUTH_PROVISIONING_EXECUTION_RUNBOOK.md

Provisioning remains separate from authentication.

The supplemental DDL does not itself create:

- Territory Record
- city_registry rows
- nation_read_authorization grants

City provisioning requires an approved current-active Territory Record.

Authorization provisioning requires an opaque actor key proven by a valid
signed server session and separate mutation authority.

No login-time auto-grant is introduced.

## 21. R13 Nation Registry Resolution

The earlier statement that no approved CivilizationOS nation-registry owner
had been identified was correct at the time of this supplemental design.

That remaining boundary is now resolved by:

12000208008_NATION_TERRITORY_BOOTSTRAP_DESIGN.md

R13 now assigns canonical CivilizationOS physical nation identity to:

- civilization.nation_registry

After its approved DDL is applied:

- territory_record.nation_id binds to nation_registry
- facility_registry.owner_nation_id binds to nation_registry
- nation_read_authorization.nation_id binds to nation_registry

This does not adopt personaos.nation.

No existing seed, navigation, or PersonaOS identity is automatically
promoted or backfilled.
