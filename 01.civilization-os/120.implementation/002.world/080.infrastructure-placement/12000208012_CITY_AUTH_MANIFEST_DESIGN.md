# R13 CITY AND READ AUTHORIZATION MANIFEST DESIGN

status: implementation-ready-draft
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208012
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the first concrete semantic manifest for the R13:

- city_registry bootstrap
- nation_read_authorization bootstrap

This document fixes semantic values only.

It does not:

- generate live UUID values
- capture a live server session actor key
- choose wall-clock effective timestamps
- connect to PostgreSQL
- insert city data
- insert authorization data
- mutate AWS
- mutate the implementation repository

## 2. Existing Physical Prerequisite

The first active CivilizationOS nation and territory already exist
physically as the approved Helios R13 bootstrap.

Required parent semantics:

- nation_code = helios
- nation_status = active
- territory_code = national-territory
- territory_status = active

The live nation UUID remains runtime canonical data.

Do not copy a live UUID into this design document merely for convenience.

City provisioning must use the exact already-approved Helios nation_id.

## 3. Canonical City Source Basis

Existing CivilizationOS seed-world canon identifies:

- helios_city as the Helios capital_city
- helios_city as a core Helios city
- helios_city as a tier_1 detailed city seed target

Therefore the first R13 city bootstrap target is:

- helios_city

This selection is based on existing city-seed canon.

## 4. First City Decision

The first physical R13 city under Helios is:

- city_code = helios_city

This design deliberately adopts the existing canonical seed key
helios_city as the physical city_registry.city_code.

This is an explicit R13 physical identity decision.

The city code is not accepted merely because it exists in an R11 route
or navigation list.

## 5. Physical City Name Decision

The reviewed seed material fixes:

- helios_city

and its capital / core role.

It does not provide an exact English city_registry.city_name value.

Therefore this R13 design explicitly introduces:

- city_name = Helios City

as the physical English display name for the initial city_registry row.

This is a new R13 persistence/display decision.

It must not be falsely represented as a pre-existing exact display label
from the earlier seed material.

## 6. Physical City Manifest

The fixed semantic city manifest is:

- city_code: helios_city
- city_name: Helios City
- city_status: active
- territory_code: national-territory
- source_state_version: 1
- effective_until: NULL

The nation_id is inherited from the already-provisioned active Helios
nation.

It is not regenerated.

## 7. City UUID

city_registry_id is not fixed by this design document.

It must be materialized during the later controlled city/auth manifest
instantiation step.

The identifier must not be derived from:

- helios_city
- Helios City
- nation_id
- territory_record_id
- navigation data
- route values
- PersonaOS
- authentication identity

## 8. City Effective Time

city_effective_from is not derived from fictional Civilization Year.

The later runtime-local instantiation step must materialize one explicit
real timestamptz.

It must satisfy:

- city_effective_from >= current Helios Territory Record effective_from
- city_effective_from <= instantiation time

For the initial atomic city/auth bundle, city_effective_from and
authorization_effective_from must be identical.

## 9. Authorization Subject

The authorization subject is:

- server_session_actor_key

It must come only from a successful server-side proof using:

GET /api/civilization/auth/session-identity

The implementation prerequisite is:

f2f11148c839095d0522665747f41aeb040cc963

Required proof behavior:

- valid signed unexpired session -> HTTP 200
- response contains server_session_actor_key
- missing session -> HTTP 401
- invalid session -> HTTP 401
- expired session -> HTTP 401
- signing configuration unavailable -> HTTP 503
- cache-control = no-store

Only the 200 result from the intended real actor session is acceptable.

## 10. Forbidden Actor Sources

Do not provision authorization from an actor key taken only from:

- localStorage
- sessionStorage
- query string
- route parameter
- arbitrary header
- unsigned JSON
- OAuth provider subject
- manually reconstructed civilizationId
- smoke-test actor
- copied historical log output

The actor proof endpoint is the validation boundary.

## 11. Actor-Key Confidentiality Boundary

server_session_actor_key is not a password or bearer token, but it is
authorization-subject data.

Therefore:

- keep the raw value runtime-local
- do not commit it to Git
- do not print it in ordinary execution reports
- do not include it in design files
- log only a SHA-256 hash when correlation evidence is required

The raw signed session cookie must never be written into the manifest.

## 12. Authorization Manifest

The fixed semantic authorization manifest is:

- nation_id: same exact Helios nation_id as the city
- scope_code: city_local_read
- authorization_status: active
- effective_until: NULL

The following are materialized later:

- nation_read_authorization_id
- server_session_actor_key
- authorization_effective_from

Authentication alone does not create this grant.

The later DB apply remains an explicitly approved operator mutation.

## 13. Authorization UUID

nation_read_authorization_id must be a newly materialized explicit UUID.

It must not equal:

- city_registry_id
- nation_id
- territory_record_id

It must not be derived from the actor key.

## 14. Shared Initial Effective Boundary

For this first bootstrap bundle:

- city_effective_from = authorization_effective_from

This creates one explicit runtime activation boundary for the first
canonical city plus first city_local_read authorization.

This equality is an R13 bootstrap rule only.

It does not prohibit later independent city or authorization lifecycle
transitions.

## 15. Exact Semantic Manifest

City:

- city_code = helios_city
- city_name = Helios City
- city_status = active
- territory_code = national-territory
- source_state_version = 1
- effective_until = NULL

Authorization:

- scope_code = city_local_read
- authorization_status = active
- effective_until = NULL
- nation_id = exact same nation_id as the city

## 16. Runtime Values Not Stored in Design

The following live values are intentionally not committed here:

1. Helios nation_id
2. city_registry_id
3. nation_read_authorization_id
4. server_session_actor_key
5. shared city/auth effective timestamp

The nation_id already exists as canonical runtime state.

The other four values are resolved during later instantiation.

## 17. Runtime-Local Manifest

The finalized runtime manifest must contain:

- R13_CITY_REGISTRY_ID
- R13_NATION_ID
- R13_CITY_CODE
- R13_CITY_NAME
- R13_TERRITORY_CODE
- R13_SOURCE_STATE_VERSION
- R13_CITY_EFFECTIVE_FROM
- R13_AUTHORIZATION_ID
- R13_SERVER_SESSION_ACTOR_KEY
- R13_AUTHORIZATION_EFFECTIVE_FROM

The manifest must not be committed to:

- 01.civilization-system
- 03.civilization-development

## 18. Instantiation Integrity

The later instantiation step must verify:

- parent Helios nation identity is approved
- city_code remains helios_city
- city_name remains Helios City
- territory_code remains national-territory
- source_state_version remains 1
- city UUID is valid
- authorization UUID is valid
- city UUID and authorization UUID differ
- actor proof came from the implemented identity-proof endpoint
- raw actor key is not printed
- actor-key SHA-256 is recorded
- city and authorization effective timestamps are identical
- effective timestamp is not in the future
- no database mutation occurs during instantiation

## 19. No Self-Grant

A successful identity-proof response proves only:

- who the current signed-session actor is

It does not prove:

- permission to create authorization
- administrative role
- automatic entitlement to city_local_read

The later operator provisioning GO is still required.

## 20. Provisioning Boundary

This design does not authorize:

CIVILIZATIONOS_R13_CITY_AUTH_PROVISIONING_APPLY GO

Before that DB mutation may occur:

1. this manifest design must be canonical
2. runtime city/auth manifest must be instantiated
3. real server_session_actor_key proof must exist
4. exact manifest must be reviewed
5. manifest hash must be fixed
6. separate DB mutation GO must be issued
7. canonical read-only preflight must pass

## 21. Scope Boundary

This first manifest does not create:

- additional Helios cities
- districts
- facilities
- facility placements
- additional authorization grants
- authorization for another nation

Only one first Helios city and one first Helios city_local_read subject are
in scope.

## 22. Acceptance

Accepted when:

- helios_city is explicitly selected as the first R13 city
- city_code = helios_city is fixed
- city_name = Helios City is explicitly identified as a new R13 physical
  display-name decision
- source_state_version = 1 is fixed
- actor proof dependency is physically resolved
- actor proof does not become self-grant authority
- raw actor key remains outside Git
- runtime UUIDs and timestamp remain unmaterialized
- no DB connection occurs
- no DB mutation occurs
