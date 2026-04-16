# ============================================================
# MBO SQL EXECUTION ORDER PACK
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero
reviewer: Sato

execution_order:
  step_01:
    name: base_schema_and_tables
    sources:
      - 1200015_MBO_SQL_CREATE_TABLES_PHASE1.sql

  step_02:
    name: constraints_indexes_helper_views
    sources:
      - 1200017_MBO_SQL_PHASE2_CONSTRAINTS_INDEXES_VIEWS.sql

  step_03:
    name: triggers_rls_api_views
    sources:
      - 1200019_MBO_SQL_PHASE3_TRIGGERS_RLS_VIEWS.sql

  step_04:
    name: seed_validation_ops
    sources:
      - 1200021_MBO_SQL_PHASE4_SEED_VALIDATION_OPS.sql

  step_05:
    name: integrated_one_pass_option
    sources:
      - 1200023_MBO_SQL_FULL_INTEGRATED.sql

execution_rule:
- use step_01 to step_04 for phased reviewable execution
- use step_05 only when one-pass integrated application is desired
- phased execution is preferred for review and debugging

review_note:
Because some alter statements are not fully idempotent across repeated runs,
phased execution with review is safer than blind rerun.

