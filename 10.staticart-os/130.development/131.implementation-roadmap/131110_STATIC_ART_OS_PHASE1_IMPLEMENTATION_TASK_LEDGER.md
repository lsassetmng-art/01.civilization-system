# ============================================================
# STATIC ART OS PHASE 1 IMPLEMENTATION TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 1
owner: Boss
prepared_by: Zero
db_review_participant: Sato

phase_objective:
Phase 1 establishes the first executable backbone of StaticArtOS
on the Persona-side environment.

phase_scope:
  - schema and enums
  - canonical anchor tables
  - files and metadata tables
  - policy and commerce tables
  - review and audit tables
  - entitlement and continuity tables
  - projection tables
  - first apply runner verification

task_units:
  - P1-T001 create schema and enums
  - P1-T002 create asset_master
  - P1-T003 create asset_version
  - P1-T004 create files and metadata tables
  - P1-T005 create rights, sales, subscription tables
  - P1-T006 create review and audit tables
  - P1-T007 create entitlement and continuity tables
  - P1-T008 create projection tables
  - P1-T009 verify apply runner with PERSONA_DATABASE_URL
  - P1-T010 verify base table visibility and indexes

task_details:
  P1-T001:
    objective:
      - create schema staticart
      - create all required enums
    inputs:
      - 121120_STATIC_ART_OS_DDL_MIGRATION_ORDER.md
      - sql/001_staticart_schema_and_enums.sql
    exit_condition:
      - schema exists
      - all enum types exist

  P1-T002:
    objective:
      - create asset_master
      - verify core indexes
    inputs:
      - sql/010_staticart_asset_master.sql
    exit_condition:
      - asset_master exists
      - creator/lifecycle index exists
      - type/lifecycle index exists

  P1-T003:
    objective:
      - create asset_version
      - enforce one visible version max
    inputs:
      - sql/020_staticart_asset_version.sql
    exit_condition:
      - asset_version exists
      - unique visible-version index exists

  P1-T004:
    objective:
      - create asset_file
      - create asset_localization
      - create category/tag maps
    inputs:
      - sql/030_staticart_files_and_metadata.sql
    exit_condition:
      - file and localization tables exist
      - required constraints exist

  P1-T005:
    objective:
      - create rights policy
      - create sales offer
      - create subscription rule
    inputs:
      - sql/040_staticart_policy_and_commerce.sql
    exit_condition:
      - policy/commercial tables exist
      - check constraints exist

  P1-T006:
    objective:
      - create review request
      - create review decision
      - create audit event
    inputs:
      - sql/050_staticart_review_and_audit.sql
    exit_condition:
      - governance tables exist
      - audit indexes exist

  P1-T007:
    objective:
      - create entitlement snapshot
      - create library projection
      - create reader/viewer continuity
      - create annotation/favorite
    inputs:
      - sql/060_staticart_entitlement_and_continuity.sql
    exit_condition:
      - continuity tables exist
      - reader/viewer tables are separate

  P1-T008:
    objective:
      - create asset_exhibition_projection
      - confirm derived-only role
    inputs:
      - sql/070_staticart_projection_tables.sql
    exit_condition:
      - projection table exists
      - downstream-read-only note remains documented

  P1-T009:
    objective:
      - run apply runner with PERSONA_DATABASE_URL
    inputs:
      - sql/900_staticart_phase1_apply_runner.sh
    exit_condition:
      - runner completes without error
      - no ERP-side DB is touched

  P1-T010:
    objective:
      - verify resulting tables and indexes
    verification_points:
      - schema exists
      - expected tables exist
      - key indexes exist
      - no missing dependency
    exit_condition:
      - verification passes
      - Phase 1 marked complete

important_rules:
  - Use PERSONA_DATABASE_URL only
  - SQL review includes Sato before execution
  - Projection tables are derived, never canonical write source
  - Reader and viewer continuity must remain separate
