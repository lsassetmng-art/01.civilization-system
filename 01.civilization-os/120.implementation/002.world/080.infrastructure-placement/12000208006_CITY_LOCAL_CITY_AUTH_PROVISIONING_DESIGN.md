# CITY LOCAL CITY AND READ AUTHORIZATION PROVISIONING DESIGN

status: implementation-ready-draft
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208006
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the R13 provisioning boundary for:

- canonical city creation in civilization.city_registry
- explicit city_local_read authorization in
  civilization.nation_read_authorization

This design does not authorize database mutation.

It prepares the fail-closed provisioning contract only.

## 2. Existing Canonical Basis

Existing R13 authority remains:

- civilization.territory_record
- civilization.city_registry
- civilization.nation_read_authorization
- signed CivilizationOS server session
- PERSONA_DATABASE_URL
- civilization schema
- public schema prohibition

Existing City Builder design remains authoritative for staged city creation:

1. create or resolve city_definition
2. open or resume city_builder_session
3. bind zoning_bundle
4. run city_builder_validation
5. publish only when validations pass
6. emit audit trace

R13 provisioning must not bypass that long-term publication model.

## 3. Long-Term City Producer

The long-term canonical producer of city_registry is:

- validated City Builder publication

City Builder publication must eventually map approved builder state into
city_registry through a server mutation transaction.

This design does not assume:

- city_definition.city_id equals city_registry.city_registry_id
- city_definition.nation_scope equals a UUID nation_id
- route city_code proves city identity
- navigation data proves city identity

Those mappings remain explicit server-side mutation responsibilities.

## 4. R13 Bootstrap Provisioning

Until the complete City Builder persistence/publication path exists,
R13 permits a bounded operator bootstrap provisioning path.

Bootstrap provisioning is:

- server/operator controlled
- explicit-input only
- transaction protected
- fail closed
- non-browser-authoritative
- not a replacement for City Builder publication

No public self-service provisioning endpoint is authorized by this design.

## 5. Territory Prerequisite

A city cannot be provisioned unless a matching current-active
Territory Record already exists for:

- nation_id
- territory_code

The provisioning path must not automatically create Territory Record.

The required Territory Record must satisfy:

- territory_status = active
- effective_from <= city effective_from
- effective_until IS NULL

If no matching current-active territory exists:

STOP.

Do not infer territory from:

- navigation data
- route values
- city name
- facility placement
- UI state
- draft builder state

## 6. Nation Identity Boundary

This provisioning design does not create a new nation registry.

It does not adopt personaos.nation as CivilizationOS nation authority.

It does not synthesize nation_id.

The nation_id used for city provisioning must already be grounded by the
approved Territory Record prerequisite.

If no approved nation / territory identity exists, provisioning remains
blocked.

## 7. City Provisioning Input

The runtime-local provisioning manifest requires:

- city_registry_id uuid
- nation_id uuid
- city_code text
- city_name text
- territory_code text
- source_state_version bigint
- city_effective_from timestamptz

Bootstrap creates only a current active city:

- city_status = active
- effective_until = NULL

UUID values are explicit inputs.

No UUID extension or automatic UUID generator is introduced.

## 8. City Idempotency

Provisioning must be idempotent only for the exact same canonical state.

If nation_id + city_code is absent:

- insert the manifest city

If nation_id + city_code already exists and exactly matches:

- accept as idempotent no-op

If the existing city differs in any protected provisioning field:

- STOP
- do not UPDATE
- do not overwrite
- do not create a second city

Protected fields include:

- city_registry_id
- nation_id
- city_code
- city_name
- city_status
- territory_code
- source_state_version
- effective_from
- effective_until

Later city lifecycle mutation belongs to City Builder / approved lifecycle
authority, not bootstrap provisioning.

## 9. Authorization Subject Boundary

The authorization subject is:

- server_session_actor_key

It must be the opaque actor key obtained from a valid signed,
unexpired CivilizationOS server session.

Provisioning must not trust an actor key obtained only from:

- localStorage
- sessionStorage
- route
- query parameter
- arbitrary header
- unsigned JSON
- manually reconstructed provider identity

The current signed-session civilizationId value remains opaque.
It is not reinterpreted as a UUID entity identity.

## 10. Server-Validated Actor Proof

Before authorization provisioning, an approved server-side identity-proof
step must validate the existing signed session and expose only the current
opaque server_session_actor_key to the authenticated actor/operator flow.

A future read-only interface may provide:

GET /api/civilization/auth/session-identity

Required behavior:

- valid signed unexpired session -> 200 with server_session_actor_key
- missing / invalid / expired session -> 401
- signing configuration unavailable -> 503
- no database mutation
- no authorization grant
- no OAuth token exposure
- no provider secret exposure
- no database credential exposure

This endpoint is identity proof only.

It is not mutation authority.

## 11. Authorization Provisioning Input

The runtime-local provisioning manifest requires:

- nation_read_authorization_id uuid
- server_session_actor_key text
- nation_id uuid
- authorization_effective_from timestamptz

Fixed values:

- scope_code = city_local_read
- authorization_status = active
- effective_until = NULL

The authorization nation_id must equal the city nation_id in the same
bootstrap provisioning bundle.

## 12. No Self-Grant

Authentication does not grant authorization.

A user must not obtain city_local_read merely by calling an endpoint while
authenticated.

The signed session identifies the grant subject only.

It does not authorize creation of the grant.

Runtime web-based grant mutation remains blocked until an approved
CivilizationOS administrative mutation authority is physically bound.

## 13. Bootstrap Operator Authority

The prepared bootstrap SQL is an operator-only development/provisioning path.

Execution requires a separate explicit DB mutation GO.

The bootstrap path must not be exposed as:

- browser API
- public route
- client-side function
- GET side effect
- login callback side effect

Production web provisioning must later bind to canonical Admin authority,
role checks, activity checks, boundary checks, and audit behavior.

## 14. Atomic Bundle

The initial bootstrap bundle provisions:

1. one exact canonical city
2. one exact current city_local_read grant

inside one transaction.

Required order:

1. validate input shape
2. validate target schema/table boundary
3. validate current-active Territory Record
4. lock canonical mutation targets
5. verify city collision state
6. insert city only when absent
7. verify exact city state
8. verify authorization collision state
9. insert authorization only when absent
10. verify exact active grant
11. commit

Any mismatch before COMMIT must rollback the transaction.

## 15. Authorization Idempotency

For:

- server_session_actor_key
- nation_id
- scope_code = city_local_read

If no current active grant exists:

- insert the manifest grant

If a current active grant exists and exactly matches the manifest:

- accept as idempotent no-op

If a conflicting current grant or identifier collision exists:

- STOP
- do not overwrite
- do not silently revoke
- do not silently replace

## 16. Revocation

Authorization revocation is a separate mutation.

Revocation must:

- identify one exact current active authorization
- set authorization_status = revoked
- set effective_until
- preserve the historical row
- update updated_at

Revocation must not DELETE authorization history.

Revocation does not delete or deactivate city_registry.

## 17. City Rollback Boundary

A successfully provisioned canonical city is not deleted as an ordinary
rollback action.

If city truth later requires correction, use an approved lifecycle transition.

Bootstrap repair must not use:

- DELETE city_registry
- DROP table
- natural-key replacement
- hidden city re-creation

## 18. Audit Boundary

Existing City Builder canon requires publication audit trace.

The bootstrap execution report is operational evidence only.

It is not a substitute for a future canonical administrative audit relation.

Production City Builder publication and production authorization mutation
remain responsible for canonical audit integration once that owner is fixed.

## 19. Secrets and Logging

Provisioning reports must never print:

- PERSONA_DATABASE_URL
- database password
- OAuth access token
- OAuth refresh token
- provider client secret
- CIVILIZATION_SESSION_SIGNING_SECRET
- raw signed session cookie

The raw server_session_actor_key should not be written to ordinary execution
logs.

A hash may be logged for correlation.

## 20. Database Boundary

Use only:

- PERSONA_DATABASE_URL
- civilization schema

Fallback to DATABASE_URL is prohibited.

No public-schema mutation is allowed.

TLS certificate and hostname validation remain required.

## 21. Prepared SQL

Prepared provisioning SQL:

- 12000208006_01_CITY_LOCAL_CITY_AUTH_PROVISIONING_PREFLIGHT.sql
- 12000208006_02_CITY_LOCAL_CITY_AUTH_PROVISIONING_APPLY.sql
- 12000208006_03_CITY_LOCAL_CITY_AUTH_PROVISIONING_VERIFY.sql
- 12000208006_04_CITY_LOCAL_READ_AUTHORIZATION_REVOKE.sql

These files are preparation only.

Their existence is not database execution authorization.

## 22. Execution Blockers

City/auth bootstrap execution remains blocked unless all are true:

- approved nation_id exists
- matching current-active Territory Record exists
- exact city manifest is approved
- server-validated actor key is available
- exact authorization manifest is approved
- separate DB mutation GO is issued

No missing prerequisite may be replaced by inference.

## 23. Acceptance

Accepted when:

- City Builder remains long-term canonical producer
- bootstrap mutation boundary is explicit
- territory prerequisite is mandatory
- nation_id is never synthesized
- signed-session actor proof is required
- authentication and grant mutation remain separate
- self-grant is prohibited
- city and grant inserts are exact and idempotent
- no silent UPDATE/DELETE fallback exists
- revocation preserves history
- no DB connection occurs during this design GO

## 25. R13 Nation Registry Resolution

Section 6 described the fail-closed state before a CivilizationOS
physical nation owner existed.

That boundary is now superseded by:

12000208008_NATION_TERRITORY_BOOTSTRAP_DESIGN.md

After adoption and DDL application:

- civilization.nation_registry becomes the physical nation identity owner
- approved nation_id must resolve there
- Territory Record must bind to that nation
- city provisioning requires both current-active nation and territory

The following remain prohibited:

- nation UUID synthesis
- PersonaOS automatic adoption
- R11 navigation-code promotion
- seed-key promotion without an explicit manifest

## 26. Server Session Identity Proof Resolution

The server-side actor proof prerequisite defined in section 10 is now
physically implemented by:

GET /api/civilization/auth/session-identity

implementation lineage:

f2f11148c839095d0522665747f41aeb040cc963

Validated behavior:

- valid signed session -> 200 with server_session_actor_key
- missing session -> 401
- invalid session -> 401
- expired session -> 401
- signing configuration unavailable -> 503
- cache-control no-store
- no DB connection
- no authorization mutation

This resolves the identity-proof implementation blocker.

It does not create any city_local_read grant.

The first concrete city/auth semantic manifest is defined separately by:

12000208012_CITY_AUTH_MANIFEST_DESIGN.md
