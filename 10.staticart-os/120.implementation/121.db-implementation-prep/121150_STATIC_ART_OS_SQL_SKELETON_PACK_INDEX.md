# ============================================================
# STATIC ART OS SQL SKELETON PACK INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero
db_review_participant: Sato

purpose:
This pack provides the first executable SQL skeleton set for
StaticArtOS database implementation preparation.

included_files:
  - sql/001_staticart_schema_and_enums.sql
  - sql/010_staticart_asset_master.sql
  - sql/020_staticart_asset_version.sql
  - sql/030_staticart_files_and_metadata.sql
  - sql/040_staticart_policy_and_commerce.sql
  - sql/050_staticart_review_and_audit.sql
  - sql/060_staticart_entitlement_and_continuity.sql
  - sql/070_staticart_projection_tables.sql
  - sql/900_staticart_phase1_apply_runner.sh

phase_scope:
  - schema
  - enums
  - canonical anchor tables
  - metadata and file tables
  - policy and commerce tables
  - governance and audit tables
  - entitlement and continuity tables
  - projection tables

important_rules:
  - projection tables are derived and never canonical write sources
  - reader continuity and viewer continuity remain separate
  - additive evolution only
  - apply order must follow runner order
