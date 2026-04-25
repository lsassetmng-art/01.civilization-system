# ============================================================
# STREAM STUDIO PHASE 1 HANDOFF READING ORDER
# ============================================================

status: reading-order
layer: implementation-handoff
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the recommended reading order before any real implementation planning begins.

reading_order:

  block_1_final_position:
    - 121_STREAM_STUDIO_IMPLEMENTATION_READINESS_FINAL_FREEZE_MEMO.md
    - 154000_STREAM_STUDIO_PHASE1_PRE_IMPLEMENTATION_FINAL_DESIGN_FREEZE.md

  block_2_exact_contracts:
    - 051_STREAM_STUDIO_SCREEN_STATE_TRANSITION_EXACT_TABLE.md
    - 051_STREAM_STUDIO_PROJECT_AND_UPLOAD_API_EXACT.md
    - 052_STREAM_STUDIO_DRAFT_ASSET_API_EXACT.md
    - 054_STREAM_STUDIO_PUBLISH_API_EXACT.md
    - 059_STREAM_STUDIO_VALIDATION_AND_ERROR_CODE_EXACT_TABLE.md
    - 081_STREAM_STUDIO_PERMISSION_MATRIX_EXACT.md
    - 071_STREAM_STUDIO_RUNTIME_JOB_RETRY_AND_DEADLETTER_EXACT.md

  block_3_ledgers:
    - 122_STREAM_STUDIO_ENUM_LEDGER.md
    - 123_STREAM_STUDIO_FIELD_DICTIONARY.md
    - 124_STREAM_STUDIO_AUDIT_EVENT_CODE_LEDGER.md
    - 126_STREAM_STUDIO_EVENT_NAMING_LEDGER.md
    - 127_STREAM_STUDIO_UI_COPY_KEY_LEDGER.md
    - 125_STREAM_STUDIO_DB_SIDE_MAPPING_DECISION_MEMO.md

  block_4_phase1_workpackages:
    - 131_STREAM_STUDIO_PHASE1_IMPLEMENTATION_BATCH_PACK.md
    - 132_STREAM_STUDIO_PHASE1_BACKEND_WORKPACKAGE.md
    - 133_STREAM_STUDIO_PHASE1_UI_WORKPACKAGE.md
    - 134_STREAM_STUDIO_PHASE1_DB_WORKPACKAGE.md
    - 135_STREAM_STUDIO_PHASE1_TEST_AND_VERIFY_WORKPACKAGE.md
    - 136_STREAM_STUDIO_PHASE1_EXECUTION_ORDER_AND_CHECKPOINTS.md
    - 141_STREAM_STUDIO_PHASE1_REAL_BUILD_START_GUARDRAIL.md

  block_5_sql_and_verify:
    - 147_STREAM_STUDIO_PHASE1_SQL_PRE_DDL_BATCH_PACK.md
    - 148_STREAM_STUDIO_PHASE1_TABLE_DDL_EXACT_DESIGN.md
    - 149_STREAM_STUDIO_PHASE1_INDEX_FK_CONSTRAINT_EXACT_DESIGN.md
    - 150_STREAM_STUDIO_PHASE1_AUDIT_AND_RUNTIME_DDL_EXACT_DESIGN.md
    - 151_STREAM_STUDIO_PHASE1_MIGRATION_UNIT_SPLIT_PLAN.md
    - 152_STREAM_STUDIO_PHASE1_PSQL_APPLY_PREFLIGHT_MEMO.md
    - 153000_STREAM_STUDIO_PHASE1_SQL_REAL_MIGRATION_BUNDLE.md
    - 153200_PHASE1_POST_APPLY_VERIFY_BUNDLE.md

reading_intent:
- first understand the frozen position
- then understand exact contracts
- then understand ledgers
- then understand phase 1 work split
- finally understand sql and verification discipline

fixed_statement:
The reading order above is the canonical handoff order before real implementation planning.
