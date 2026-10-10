# CITY LOCAL CITY AND READ AUTHORIZATION PROVISIONING EXECUTION RUNBOOK

status: implementation-ready-draft
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208007
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the future controlled execution sequence for the R13 city and
city_local_read provisioning bundle.

This document does not authorize database mutation.

## 2. Required Gates

Design preparation is authorized only by:

CIVILIZATIONOS_R13_CITY_AUTH_PROVISIONING_DESIGN GO

Server-side actor identity proof requires a later implementation gate.

Actual city / authorization mutation requires a separate explicit:

CIVILIZATIONOS_R13_CITY_AUTH_PROVISIONING_APPLY GO

Authorization revocation requires a separate explicit:

CIVILIZATIONOS_R13_CITY_READ_AUTHORIZATION_REVOKE GO

Do not treat one gate as authorization for another.

## 3. Territory / Nation Prerequisite

Before city provisioning:

- resolve approved nation_id
- verify matching civilization.territory_record
- require territory_status = active
- require effective_until IS NULL

If the required territory is absent:

STOP.

Do not create territory as a side effect of city provisioning.

If nation identity authority itself is unresolved:

STOP.

## 4. Actor Proof Prerequisite

The authorization subject must come from a server-validated signed
CivilizationOS session.

Do not use localStorage as proof.

A future server identity-proof implementation may expose the opaque
server_session_actor_key after validating the signed session.

That proof step performs no grant mutation.

## 5. Runtime-Local Input Manifest

Execution input is runtime-local.

Do not commit live provisioning values into the design repository.

Required variables:

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

The execution report must not print the raw actor key.

## 6. Fixed Provisioning Semantics

City:

- city_status = active
- effective_until = NULL

Authorization:

- scope_code = city_local_read
- authorization_status = active
- effective_until = NULL

The authorization nation must equal the city nation.

## 7. Read-Only Preflight

Run:

12000208006_01_CITY_LOCAL_CITY_AUTH_PROVISIONING_PREFLIGHT.sql

with transaction read-only enforcement.

Preflight verifies:

- all required relations exist
- no public target collision
- manifest values are structurally valid
- current-active Territory Record exists
- city natural identity is absent or exactly idempotent
- city_registry_id is absent or exactly idempotent
- current active authorization is absent or exactly idempotent
- authorization ID is absent or exactly idempotent

Any mismatch means STOP.

## 8. Apply

Only after preflight PASS and explicit DB apply GO, run:

12000208006_02_CITY_LOCAL_CITY_AUTH_PROVISIONING_APPLY.sql

Apply uses:

- one SERIALIZABLE transaction
- explicit table locks
- repeated in-transaction prerequisite checks
- no ON CONFLICT DO UPDATE
- no DELETE
- no implicit territory insert
- no implicit authorization replacement

## 9. Idempotent Retry

An exact retry may result in zero INSERT operations.

That is acceptable only when the existing canonical rows exactly match the
approved provisioning manifest.

Semantic mismatch is never treated as idempotent.

## 10. Verify

Immediately run:

12000208006_03_CITY_LOCAL_CITY_AUTH_PROVISIONING_VERIFY.sql

Verify failure is blocking.

Do not declare provisioning complete when verify fails.

Do not automatically run destructive repair.

## 11. Authorization Revocation

Revocation uses:

12000208006_04_CITY_LOCAL_READ_AUTHORIZATION_REVOKE.sql

under its own explicit revoke GO.

Revocation:

- updates exactly one current active grant
- preserves the row
- writes revoked status
- writes effective_until
- does not delete city state

## 12. No City Destructive Rollback

There is no prepared city DELETE rollback.

Once a city is accepted as canonical truth, correction belongs to a later
approved city lifecycle mutation.

## 13. Production Transition

The bootstrap SQL is temporary operational provisioning.

Long-term production behavior must migrate to:

- validated City Builder publication for city_registry mutation
- approved Admin mutation authority for nation_read_authorization
- canonical audit integration
- explicit actor / reviewer / approver semantics

The bootstrap path must not become a public API by accident.

## 14. Required Environment

Database execution uses only:

- PERSONA_DATABASE_URL

Schema:

- civilization

Never use DATABASE_URL fallback.

Never mutate public schema.

## 15. TLS

Require certificate validation and hostname validation.

Approved posture:

- sslmode=verify-full
- approved Supabase server root CA

Do not disable TLS verification.

## 16. Logging

Safe report fields may include:

- commit SHA
- SQL hashes
- nation_id
- city_code
- city_registry_id
- authorization ID
- actor-key hash
- preflight result
- apply result
- verify result

Do not print:

- raw database URL
- database password
- session signing secret
- raw session cookie
- OAuth token
- raw actor key

## 17. Known Fail-Closed Result

Until a canonical city and matching current active grant exist:

- authenticated unauthorized read remains 403
- authorized request for absent city remains 404

Provisioning exists to create explicit truth.

It must not weaken those boundaries.

## 18. Next Dependency

If no approved current-active Territory Record exists, the next design work
must resolve nation / territory bootstrap authority before city provisioning.

No city provisioning SQL may bypass that prerequisite.

## 20. Nation Registry Prerequisite Resolution

The previous nation / territory prerequisite is now physically resolved by:

- civilization.nation_registry
- civilization.territory_record

defined by:

12000208008_NATION_TERRITORY_BOOTSTRAP_DESIGN.md

City/auth provisioning must not execute until:

1. nation_registry DDL has been applied and verified
2. the approved current-active nation exists
3. the approved current-active Territory Record exists
4. the territory binds to the same nation_id

No source may bypass this ordering.
