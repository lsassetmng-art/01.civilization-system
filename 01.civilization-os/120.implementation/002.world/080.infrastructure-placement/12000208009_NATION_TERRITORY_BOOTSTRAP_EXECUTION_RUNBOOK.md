# R13 NATION AND TERRITORY BOOTSTRAP EXECUTION RUNBOOK

status: implementation-ready-draft
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208009
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the future execution procedure for:

1. nation_registry DDL
2. one approved active nation + Territory Record bootstrap

This document does not itself authorize database mutation.

## 2. Required Gates

Nation-registry DDL mutation requires a separate explicit:

CIVILIZATIONOS_R13_NATION_REGISTRY_DDL_APPLY GO

Nation / territory data provisioning requires a later separate explicit:

CIVILIZATIONOS_R13_NATION_TERRITORY_PROVISIONING_APPLY GO

The design GO does not authorize either mutation.

## 3. Database Boundary

Use only:

- PERSONA_DATABASE_URL

Schema:

- civilization

Never fall back to DATABASE_URL.

Never mutate public schema.

## 4. TLS

Require:

- certificate-chain validation
- hostname validation
- sslmode=verify-full
- approved Supabase server root CA

Do not disable TLS verification.

## 5. Initial DDL Read-Only Preflight

Before applying nation_registry DDL, verify:

- approved design commit is canonical
- civilization schema exists
- nation_registry does not already conflict
- public.nation_registry does not exist
- original R13 tables exist
- supplemental R13 city/auth tables exist
- target FK names do not already conflict
- exact SQL hashes match design
- all six current R13 truth tables contain zero rows

The initial empty-row gate covers:

- territory_record
- facility_registry
- district_registry
- active_facility_placement
- city_registry
- nation_read_authorization

If any contains rows:

STOP.

No automatic backfill.

## 6. Nation Registry DDL Apply

Execute only:

12000208008_01_NATION_REGISTRY_DDL_APPLY.sql

The transaction:

1. creates civilization.nation_registry
2. adds territory_record -> nation_registry FK
3. adds facility_registry.owner_nation_id -> nation_registry FK
4. adds nation_read_authorization -> nation_registry FK

It inserts no nation.

It inserts no territory.

## 7. DDL Verification

Immediately run:

12000208008_02_NATION_REGISTRY_DDL_VERIFY.sql

Verify:

- nation_registry exists
- public duplicate does not exist
- expected constraints exist
- dependent FK definitions exist
- no row was inserted

Verify failure is blocking.

## 8. DDL Rollback

Prepared guarded rollback:

12000208008_03_NATION_REGISTRY_DDL_ROLLBACK.sql

Rollback refuses when canonical nation-dependent data exists.

No automatic destructive rollback follows a successful committed migration.

## 9. Provisioning Manifest

Data provisioning uses runtime-local variables.

Do not commit live values into Git.

Required nation values:

- R13_NATION_ID
- R13_NATION_CODE
- R13_NATION_NAME
- R13_NATION_SOURCE_STATE_VERSION
- R13_NATION_EFFECTIVE_FROM

Required territory values:

- R13_TERRITORY_RECORD_ID
- R13_TERRITORY_CODE
- R13_TERRITORY_NAME
- R13_TERRITORY_CLASS
- R13_CONTROLLING_AUTHORITY_SCOPE
- R13_TERRITORY_EFFECTIVE_FROM

All values require explicit approval.

## 10. No Derived Identity

Execution must not derive the manifest from:

- R11 navigation code
- route parameters
- UI labels
- Initial Nation Set symbolic key alone
- PersonaOS nation UUID
- auth user UUID
- provider subject hash

Human-reviewed source material may inform the manifest,
but canonical DB identity remains explicit.

## 11. Active Bootstrap Rule

This bootstrap path creates:

- nation_status = active
- territory_status = active
- effective_until = NULL

It is not the historical-state importer.

A dismantled historical nation is outside this active bootstrap flow.

## 12. Provisioning Preflight

Run:

12000208008_04_NATION_TERRITORY_PROVISIONING_PREFLIGHT.sql

with read-only transaction enforcement.

Preflight validates:

- exact required relations
- public boundary
- manifest shape
- nation ID / code collision state
- territory ID / natural-key collision state
- exact idempotent retry state

Any mismatch means STOP.

## 13. Provisioning Apply

After explicit data mutation GO, execute:

12000208008_05_NATION_TERRITORY_PROVISIONING_APPLY.sql

Apply uses one SERIALIZABLE transaction.

No ON CONFLICT DO UPDATE.

No silent mutation.

No DELETE.

## 14. Provisioning Verify

Immediately run:

12000208008_06_NATION_TERRITORY_PROVISIONING_VERIFY.sql

Verify requires exactly:

- one exact approved nation
- one exact approved Territory Record
- correct nation FK binding
- active current state
- no public duplicate

## 15. Idempotent Retry

Exact retry may insert zero rows.

That is accepted only when all protected canonical values exactly match
the approved manifest.

Any difference is a conflict, not an update request.

## 16. Logging

Execution reports may log:

- nation_id
- nation_code
- territory_record_id
- territory_code
- SQL hashes
- result markers

Do not log:

- PERSONA_DATABASE_URL
- database password
- session secret
- OAuth token
- raw session cookie

## 17. Post-DDL Dependency

After nation-registry DDL is applied successfully, the next data operation
still requires an explicitly approved nation / territory manifest.

Do not invent that manifest merely because DDL is ready.

## 18. Post-Provisioning Dependency

After one exact active nation and territory exist, city/auth provisioning
may proceed only for that same canonical nation / territory binding.

Other nations remain unprovisioned until separately approved.

## 19. Production Transition

Operator bootstrap is temporary controlled provisioning.

Long-term nation and territory lifecycle mutation requires explicit
CivilizationOS administrative authority and canonical audit integration.

Bootstrap SQL must not become a public API.
