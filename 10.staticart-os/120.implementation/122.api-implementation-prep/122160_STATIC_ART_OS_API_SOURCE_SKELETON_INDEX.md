# ============================================================
# STATIC ART OS API SOURCE SKELETON INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
This file defines the initial source-skeleton layout for
StaticArtOS API implementation.

source_root:
  - 122.api-implementation-prep/source-skeleton/staticart-api

main_units:
  - contracts
  - core
  - guards
  - validators
  - routes
  - services
  - repositories
  - jobs

implementation_objective:
  - Separate route, validation, permission, service, repository, and jobs
  - Keep projection handling out of canonical write logic
  - Keep entitlement resolution separate from route handlers
  - Make later framework binding possible without redesign

important_rules:
  - Route handlers do not embed SQL directly
  - Services do not return raw HTTP responses
  - Repositories do not decide permission
  - Projection refresh is queued from services, not from repositories
  - Reader continuity and viewer continuity remain separate
