# ============================================================
# STATIC ART OS PHASE3 REPOSITORY AND CHECK PACK INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 3 repository and check pack
owner: Boss
prepared_by: Zero

purpose:
This pack extends the Phase 3 repository-side implementation entry points
and adds canonical Phase 3 smoke/check materials.

scope:
  - lifecycle transition helper
  - governance SQL skeleton
  - audit SQL skeleton
  - projection enqueue SQL skeleton
  - phase3 repository extension notes
  - phase3 file/binding checks

important_rules:
  - PERSONA_DATABASE_URL is the Persona-side DB target
  - projection remains derived
  - audit is canonical governance trace
  - archived is terminal
  - restricted is stronger than delisted

files:
  - 122340_STATIC_ART_OS_PHASE3_IMPLEMENTATION_INTEGRATION_ORDER.md
  - repositories/helpers/lifecycle-transition.ts
  - repositories/sql/staticart-governance-sql.ts
  - repositories/sql/staticart-audit-sql.ts
  - repositories/sql/staticart-projection-queue-sql.ts
  - phase3-checks/931_staticart_phase3_env_check.sh
  - phase3-checks/932_staticart_phase3_file_presence_check.sh
  - phase3-checks/933_staticart_phase3_binding_smoke_check.sh
  - phase3-checks/990_staticart_phase3_full_check.sh
