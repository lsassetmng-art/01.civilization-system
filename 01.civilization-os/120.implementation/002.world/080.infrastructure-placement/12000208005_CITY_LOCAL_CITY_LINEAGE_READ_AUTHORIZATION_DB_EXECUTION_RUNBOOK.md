# CITY LOCAL CITY LINEAGE AND READ AUTHORIZATION DB EXECUTION RUNBOOK

status: implementation-ready-draft
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208005
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the future execution procedure for the supplemental R13
city lineage and nation read authorization DDL.

This document is not database execution authorization.

## 2. Required GO

Actual database execution requires a separate explicit:

CIVILIZATIONOS_R13_CITY_LINEAGE_READ_AUTH_DB_APPLY GO

Without that GO:

- do not connect for mutation
- do not execute apply SQL
- do not alter constraints
- do not insert city rows
- do not insert authorization rows
- do not run destructive rollback

## 3. Required Environment

Use only:

- PERSONA_DATABASE_URL

Fallback to DATABASE_URL is prohibited.

Required persistence boundary:

- civilization schema

public schema is prohibited.

## 4. TLS Requirement

Node/server persistence must validate:

- TLS certificate chain
- target hostname

Approved posture:

- sslmode=verify-full
- approved Supabase server root certificate

Do not use:

- rejectUnauthorized=false
- NODE_TLS_REJECT_UNAUTHORIZED=0

as the production R13 solution.

## 5. Read-Only Preflight

Before apply, verify:

- PERSONA_DATABASE_URL is set
- verify-full connection succeeds
- original four R13 tables exist
- city_registry does not already conflict
- nation_read_authorization does not already conflict
- public schema contains no conflicting target object
- district_registry row count
- active_facility_placement row count
- apply / verify / rollback hashes

Credentials must not be printed.

## 6. Existing Row Gate

The supplemental migration creates city_registry without seed rows.

Therefore initial apply requires:

- civilization.district_registry row count = 0
- civilization.active_facility_placement row count = 0

If either relation contains rows:

STOP.

Do not infer or backfill city identity from:

- city_code strings alone
- R11 navigation
- UI constants
- draft data
- facility placement guesses

A separate migration design is required.

## 7. Apply File

Use only:

12000208004_01_CITY_LOCAL_CITY_LINEAGE_READ_AUTHORIZATION_APPLY.sql

The apply:

1. creates civilization.city_registry
2. creates civilization.nation_read_authorization
3. creates current-active authorization uniqueness
4. adds district -> city canonical FK
5. adds active placement -> city canonical FK

It inserts no row.

## 8. Transaction

Apply runs in one transaction.

ON_ERROR_STOP must be enabled.

Any error before COMMIT means the supplemental migration is not accepted.

## 9. Verification

Immediately run:

12000208004_02_CITY_LOCAL_CITY_LINEAGE_READ_AUTHORIZATION_VERIFY.sql

Verify failure is blocking.

Verification covers:

- target relation existence
- public-schema collision
- exact named constraints
- current-active authorization index
- district city-binding integrity
- placement city-binding integrity
- duplicate city natural identity
- duplicate current active authorization

## 10. Authorization Data Boundary

Successful DDL does not authorize any actor.

nation_read_authorization remains empty until a separate approved
provisioning mutation is executed.

An empty authorization table correctly causes authenticated R13 read requests
to fail closed with HTTP 403.

## 11. City Data Boundary

Successful DDL does not create any city.

city_registry remains empty until canonical City Builder publication /
approved city promotion writes a canonical city record.

An absent city identity correctly produces HTTP 404 after authorization.

## 12. Rollback

Prepared rollback:

12000208004_03_CITY_LOCAL_CITY_LINEAGE_READ_AUTHORIZATION_ROLLBACK.sql

Rollback is guarded.

It must refuse destructive removal when canonical or dependent rows exist.

It never drops:

- civilization schema
- territory_record
- facility_registry
- district_registry
- active_facility_placement

## 13. Post-Apply Gate

Only after:

- APPLY PASS
- VERIFY PASS
- no public-schema object
- no unintended row mutation

may work return to:

CIVILIZATIONOS_R13_SERVER_READ_IMPLEMENTATION

Server-read implementation must still preserve unresolved readiness for:

- facility type master
- canonical facility UI mapping

Those dependencies must not be fabricated.

## 14. AWS Boundary

This supplemental database design requires no AWS mutation.

Runtime deployment / environment reflection is a later explicit gate.
