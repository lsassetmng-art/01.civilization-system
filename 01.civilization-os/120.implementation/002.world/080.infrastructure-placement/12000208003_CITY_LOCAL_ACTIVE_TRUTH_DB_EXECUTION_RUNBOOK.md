# CITY LOCAL ACTIVE TRUTH DB EXECUTION RUNBOOK

status: implementation-ready-draft
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the future execution procedure for the R13 city-local active truth DDL.

This runbook is not an execution authorization.

## 2. Required GO

Actual database work requires a separate explicit:

CIVILIZATIONOS_R13_DB_DDL_APPLY GO

Without that GO:

- do not connect
- do not run psql
- do not create schema
- do not create tables
- do not run rollback

## 3. Exact Environment

Required:

- CIVILIZATION_DATABASE_URL

Forbidden fallback:

- PERSONA_DATABASE_URL
- DATABASE_URL

If CIVILIZATION_DATABASE_URL is missing, stop.

## 4. Preflight

Future execution must first verify read-only:

- environment variable is set
- connection target is reachable
- target is the intended CivilizationOS database
- current_user
- current_database()
- server version
- civilization_os schema state
- no conflicting four R13 tables
- no public-schema duplicates
- no unexpected pending transaction
- apply / verify / rollback file hashes

Do not print credentials.

## 5. Apply File

Use only:

12000208002_01_CITY_LOCAL_ACTIVE_TRUTH_APPLY.sql

The file creates:

- civilization_os schema when absent
- territory_record
- facility_registry
- district_registry
- active_facility_placement
- current-active placement partial unique index

It creates no seed rows.

## 6. Transaction Boundary

DDL apply uses one transaction.

ON_ERROR_STOP must be enabled.

Any apply failure before COMMIT must leave the block unapplied.

Do not continue to server-read implementation after a failed DB apply.

## 7. Verify

Immediately after successful apply, run:

12000208002_02_CITY_LOCAL_ACTIVE_TRUTH_VERIFY.sql

Verify failure is blocking.

Required classes include:

- schema/table existence
- PK/FK
- natural uniqueness
- status constraints
- public-schema collision
- current-active uniqueness
- placement/source-state monotonicity audit

## 8. Stale Write Runtime Rule

Future finalization code must use transaction-level compare-and-set behavior.

Required order:

1. begin transaction
2. lock Facility Registry target row
3. load current placement
4. compare expected source_state_version
5. reject stale input
6. require next placement_version
7. close/supersede prior placement when applicable
8. insert new active placement
9. write required audit/outbox state
10. commit
11. refresh projection after commit

DDL constraints supplement this transaction rule.
They do not replace it.

## 9. Rollback

Prepared rollback:

12000208002_03_CITY_LOCAL_ACTIVE_TRUTH_ROLLBACK.sql

The rollback is intentionally guarded.

It refuses destructive table removal if canonical rows exist.

The civilization_os schema is never dropped by this R13 rollback.

If canonical rows exist, use repair/invalidation/supersede planning instead of destructive rollback.

## 10. Post-Apply Gate

Only after:

- APPLY PASS
- VERIFY PASS
- remote design authority unchanged

may work continue to:

- server repository implementation
- server read API implementation
- city-map projection connection
- facility read connection
- district read connection

## 11. AWS Boundary

DDL design alone requires no AWS runtime reflection.

Actual runtime infrastructure change must be evaluated separately
when the server implementation/deployment stage is reached.
