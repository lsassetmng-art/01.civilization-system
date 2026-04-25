# ============================================================
# STATIC ART OS PHASE 1 OPERATION MANUAL
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 1
owner: Boss
prepared_by: Zero
db_review_participant: Sato

objective:
Provide the canonical run order for StaticArtOS Phase 1
Persona-side DB apply and verification.

environment_rule:
  - PERSONA_DATABASE_URL is the only DB connection target for StaticArtOS Persona-side DB work.
  - DATABASE_URL must not be used for this Phase 1 workflow.

required_inputs:
  - sql/001_staticart_schema_and_enums.sql
  - sql/010_staticart_asset_master.sql
  - sql/020_staticart_asset_version.sql
  - sql/030_staticart_files_and_metadata.sql
  - sql/040_staticart_policy_and_commerce.sql
  - sql/050_staticart_review_and_audit.sql
  - sql/060_staticart_entitlement_and_continuity.sql
  - sql/070_staticart_projection_tables.sql
  - sql/900_staticart_phase1_apply_runner.sh
  - verification/911_staticart_phase1_env_check.sh
  - verification/912_staticart_phase1_schema_enum_verify.sh
  - verification/913_staticart_phase1_table_verify.sh
  - verification/914_staticart_phase1_index_verify.sh
  - verification/915_staticart_phase1_integrity_verify.sh
  - verification/990_staticart_phase1_full_verify.sh

run_order:
  1:
    name: precheck environment
    command:
      - bash verification/911_staticart_phase1_env_check.sh
  2:
    name: confirm SQL review
    rule:
      - Sato review must be completed before apply.
  3:
    name: apply phase 1 SQL
    command:
      - bash sql/900_staticart_phase1_apply_runner.sh
  4:
    name: run full verification
    command:
      - bash verification/990_staticart_phase1_full_verify.sh
  5:
    name: record result
    output:
      - mark Phase 1 complete or blocked
      - record missing table/index/enum if any

hard_stops:
  - stop if PERSONA_DATABASE_URL is not set
  - stop if Sato review is not complete
  - stop if SQL apply runner fails
  - stop if verification reports any NG item

phase_1_complete_definition:
  - schema staticart exists
  - all required enums exist
  - all required tables exist
  - all required indexes exist
  - reader/viewer continuity tables are separate
  - projection table exists
  - no ERP-side DB usage occurred

important_notes:
  - Projection remains derived and must not become canonical source.
  - Reader continuity and viewer continuity must remain separate.
  - Favorites surviving entitlement loss is a later behavior requirement; Phase 1 only establishes storage surfaces.
