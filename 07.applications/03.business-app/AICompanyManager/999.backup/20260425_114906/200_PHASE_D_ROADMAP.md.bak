# ============================================================
# AICompanyManager Phase D Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase D
status: db-apply-preparation-started
owner: Boss
prepared_by: Zero
db_reviewer: 佐藤（DB担当）

## 1. Current Position

Phase A:
- app skeleton completed
- business / review / delivery flow canon completed

Phase B:
- DB / API / State exact design completed

Phase C:
- DB DDL Design Review Package completed
- DDL candidate created
- Index candidate created
- RLS candidate created
- DB apply prechecklist created
- DB apply not executed

Phase D:
- DB apply one-block draft is prepared
- DB verification SQL draft is prepared
- rollback / recovery memo is prepared
- DB apply is still not executed

## 2. Phase D Scope

Phase D creates the apply preparation package.

Included:
- DB apply preparation package
- guarded Method A psql apply draft
- SQL apply draft
- post-apply verification SQL draft
- rollback / recovery memo
- Phase D completion report
- integrated design regeneration

## 3. Important Safety Rule

Phase D does not execute DB apply.

Actual DB apply requires:
- Boss explicit DB OK / GO
- Sato DB review OK
- DATABASE_URL confirmed
- AICM_DB_APPLY_GO=YES
- AICM_SATO_DB_REVIEW_OK=YES
- Method A only

Method A:
psql "$DATABASE_URL" <<'SQL'
...
SQL

## 4. Next Phase

Phase E:
- DB apply execution
- only after explicit Boss GO
- execute guarded Method A psql block
- run post-apply verification
