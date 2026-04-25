# ============================================================
# STATIC ART OS PHASE2 REPOSITORY IMPLEMENTATION SKELETON INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 2 repository skeleton
owner: Boss
prepared_by: Zero

purpose:
This pack provides the repository-side implementation skeleton
for StaticArtOS API binding.

source_root:
  - 122.api-implementation-prep/source-skeleton/staticart-api/repositories

included_files:
  - repositories/db-client.ts
  - repositories/helpers/repository-errors.ts
  - repositories/sql/staticart-asset-sql.ts
  - repositories/sql/staticart-entitlement-sql.ts
  - repositories/sql/staticart-library-sql.ts
  - repositories/sql/staticart-projection-sql.ts
  - repositories/asset-repository.impl.ts
  - repositories/entitlement-repository.impl.ts
  - repositories/library-repository.impl.ts
  - repositories/projection-repository.impl.ts
  - repositories/README.md

objective:
  - Freeze Persona-side DB binding direction
  - Keep SQL out of routes and services
  - Keep permission outside repository layer
  - Keep projection derived and separate

important_rules:
  - PERSONA_DATABASE_URL is the only Persona-side DB target
  - Repository layer must not decide permission
  - Repository layer must not return HTTP responses
  - Projection tables must not be treated as canonical write sources
