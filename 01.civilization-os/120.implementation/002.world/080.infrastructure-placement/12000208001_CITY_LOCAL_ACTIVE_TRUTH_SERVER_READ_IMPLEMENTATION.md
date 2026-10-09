# CITY LOCAL ACTIVE TRUTH SERVER READ IMPLEMENTATION

status: implementation-ready-draft
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208001
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the server-side read implementation contract for R13 city-local active truth.

This is a read contract only.

It does not define City Builder mutation or finalization commands.

## 2. Canonical Inputs

The server read layer consumes canonical truth from:

- Territory Record
- Facility Registry
- District Registry
- Active Facility Placement
- Facility Type master
- canonical facility UI mapping
- existing active city lineage

Draft and seed sources are not active read truth.

## 3. Database Boundary

Server-only persistence access uses:

- PERSONA_DATABASE_URL
- civilization schema

Client code must never receive database credentials or directly query canonical tables.

Fallback to DATABASE_URL is prohibited.

## 4. Authentication Boundary

Existing CivilizationOS authentication/session handling must be reused.

R13 must not create a second authentication system.

Authentication proves actor/session context.
It does not convert URL parameters into canonical resource truth.

## 5. Exact Read Endpoints

Canonical read endpoint family:

- GET /api/v1/city-local/nations/{nation_id}/cities/{city_code}/map
- GET /api/v1/city-local/facilities/{facility_registry_id}
- GET /api/v1/city-local/districts/{district_registry_id}

These endpoints are distinct from /api/v1/city-builder/* mutation endpoints.

## 6. City Map Read

City map read resolves:

1. authenticated request context
2. nation identity
3. active city identity by city_code
4. territory context
5. District Registry records
6. Facility Registry records
7. current Active Facility Placement records
8. canonical facility type and UI target
9. readiness
10. projection response

The projection must not materialize missing canonical truth.

## 7. Facility Read

facility_registry_id is canonical.

facility_id is an API/UI alias only.

A facility may be active only when required truth resolves:

- Facility Registry
- facility type
- active placement
- nation binding
- city binding
- canonical UI target where required

Missing required truth returns blocked readiness rather than invented fallback values.

## 8. District Read

district_registry_id is canonical.

district_id is an API/UI alias only.

A district resolves through:

- District Registry
- nation binding
- city binding
- Territory Record
- required district context

Missing optional detail may return partial_data.

Missing required identity or binding must fail closed.

## 9. Readiness Contract

Allowed readiness:

- active
- partial_data
- blocked

partial_data_reasons must be explicit.

A client must not promote partial_data or blocked state to active.

## 10. HTTP Semantics

Use:

- 200 for a known canonical resource whose projection is active, partial_data, or blocked
- 400 for malformed request identity or invalid request structure
- 401 for unauthenticated request where authentication is required
- 403 for authenticated but unauthorized access
- 404 when requested canonical identity does not exist
- 503 when the required CivilizationOS persistence backend is unavailable

Backend failure must not be converted into empty active state.

## 11. No Mutation

GET handlers must not:

- create a district
- create a facility
- create placement
- finalize draft state
- activate City Builder state
- update coordinates
- write audit truth
- write outbox truth

## 12. Client Connection

Current city-local client pages remain consumers of server projection.

lib/map-data.ts remains runtime navigation projection only.

It must not become the R13 persistence repository.

Client pages must not interpret:

- facility_type query parameter
- canonical_ui_target query parameter
- district_id query parameter
- facility_id query parameter

as proof of canonical truth.

Identifiers are request selectors only until resolved server-side.

## 13. City Builder Separation

Existing City Builder API remains responsible for staged creation,
validation, publication, and activation.

R13 server-read endpoints expose resulting active truth.

They do not replace or duplicate City Builder write authority.

## 14. Persistence Adapter Dependency

The current web implementation has no approved R13 database driver/repository.

Driver selection and repository implementation are later implementation work.

No dependency package is selected or installed by this document.

## 15. Phase 1 Boundary

This server-read contract does not widen current execution phase 1 DB preparation.

Runtime DB connection, repository implementation, DDL, and migration require later GO gates.

## 16. Acceptance

Accepted when:

- exact endpoint family is fixed
- server-only DB access is fixed
- canonical identities are preserved
- readiness behavior is fixed
- City Builder separation is preserved
- lib/map-data.ts remains navigation-only
- no mutation is allowed through read endpoints

## R13 Server-Readable Session Handoff

R13_SERVER_READABLE_SESSION_HANDOFF_V1

### Authentication authority

The existing CivilizationOS OAuth flow remains the authentication authority.

R13 does not create a second login mechanism.

The provider callback validates the OAuth authorization response, retrieves
provider identity server-side, and creates the existing CivilizationOS
authenticated session handoff.

### Server-readable session

R13 server read APIs require a server-verifiable authentication context.

Browser localStorage and sessionStorage are not server authentication
authorities.

The existing OAuth callback therefore mirrors its server-created authenticated
identity into a signed HttpOnly session cookie.

Cookie contract:

- cookie name: civilization_os_server_session_v1
- version: 1
- signature: HMAC-SHA256
- signing environment: CIVILIZATION_SESSION_SIGNING_SECRET
- minimum signing-secret length: 32 characters
- HttpOnly: true
- SameSite: lax
- Path: /
- Secure: true when the configured CivilizationOS public base URL is HTTPS
- expiry: no later than the server-created authenticated session expiry

The signed payload contains only non-secret identity and runtime fields created
by the server.

OAuth access tokens, refresh tokens, provider client secrets, database URLs,
service-role keys, and private keys must not be placed in the cookie.

### Trust boundary

R13 server routes may trust only a session token whose HMAC signature and
expiry validate server-side.

R13 server authentication must not trust:

- localStorage
- sessionStorage
- nation_id route values
- civilization_id route or query values
- arbitrary Civilization ID request headers
- unsigned client JSON
- unverified browser bearer identity

The signed session proves authenticated actor/session context only.
Resource authorization remains a separate server-side decision.

### Fail-closed behavior

If CIVILIZATION_SESSION_SIGNING_SECRET is unavailable or invalid, the existing
client OAuth handoff may continue, but no R13 server-authenticated session
exists.

R13 server reads must fail closed before repository access.

### Persistence boundary

This prerequisite session handoff is stateless.

It creates no auth database table, second database connection, second
authentication provider, or second Civilization identity.

DB-backed authentication persistence remains outside this prerequisite repair.

### R13 integration

The R13 server read layer consumes this signed server-readable session before
repository access.

Repository code must not parse browser storage or reconstruct authentication
identity from route values, query values, or arbitrary request headers.
