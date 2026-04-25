# ============================================================
# AICompanyManager DB Apply Preparation Package
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase D
status: db-apply-preparation-package-created
db_reviewer: 佐藤（DB担当）

## 1. Purpose

This package prepares DB apply materials for AICompanyManager.

This package does not apply SQL to the database.

## 2. Files

| file | purpose |
|---|---|
| 211_DB_APPLY_DRAFT_BUSINESS_AI_COMPANY_MANAGER.sql | SQL apply draft |
| 212_DB_APPLY_METHOD_A_GUARDED_ONEBLOCK_DRAFT.sh | guarded Termux psql one-block draft |
| 213_DB_POST_APPLY_VERIFY_SQL_DRAFT.sql | post-apply verification SQL draft |
| 214_DB_ROLLBACK_AND_RECOVERY_MEMO.md | rollback / recovery memo |
| 290_PHASE_D_COMPLETION_REPORT.md | Phase D completion report |

## 3. Apply Policy

The apply draft is additive-only.

Allowed:
- create schema if not exists
- create table if not exists
- create index if not exists
- comment on table

Deferred:
- exact RLS policy creation
- destructive migration
- data updates
- foreign key tightening
- enum check constraints

## 4. Safety Gate

The guarded apply one-block requires all of the following:

- DATABASE_URL exists
- AICM_DB_APPLY_GO=YES
- AICM_SATO_DB_REVIEW_OK=YES

Without these, the script exits before psql.

## 5. DB Apply Status

Current status:
- NOT EXECUTED
