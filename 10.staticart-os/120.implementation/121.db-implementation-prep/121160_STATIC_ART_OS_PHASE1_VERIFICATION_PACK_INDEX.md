# ============================================================
# STATIC ART OS PHASE 1 VERIFICATION PACK INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 1 verification
owner: Boss
prepared_by: Zero
db_review_participant: Sato

purpose:
This pack provides the canonical verification blocks for
StaticArtOS Phase 1 database implementation on Persona side.

verification_target:
  - schema existence
  - enum existence
  - table existence
  - key index existence
  - reader/viewer continuity separation
  - projection table presence as derived surface
  - runner environment correctness

important_rules:
  - PERSONA_DATABASE_URL only
  - DATABASE_URL must not be used here
  - Verification is read/check only
  - Projection remains derived and must not be treated as canonical source

files:
  - verification/911_staticart_phase1_env_check.sh
  - verification/912_staticart_phase1_schema_enum_verify.sh
  - verification/913_staticart_phase1_table_verify.sh
  - verification/914_staticart_phase1_index_verify.sh
  - verification/915_staticart_phase1_integrity_verify.sh
  - verification/990_staticart_phase1_full_verify.sh
