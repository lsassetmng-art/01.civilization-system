# ============================================================
# AICompanyManager Phase E Persona DB Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase E Persona DB
status: persona-db-apply-execution-started
owner: Boss
prepared_by: Zero
db_reviewer: 佐藤（DB担当）

## 1. Correction

DB target is Persona-side.

Use:
- PERSONA_DATABASE_URL

Do not use:
- DATABASE_URL

## 2. Execution Policy

- Use PERSONA_DATABASE_URL.
- Use Method A.
- Apply additive-only SQL.
- Do not execute destructive SQL.
- Do not apply RLS exact policies yet.
- Keep AIWorkerOS internal canon outside AICompanyManager app-side operation tables.

## 3. Method A

psql "$PERSONA_DATABASE_URL" <<'SQL'
...
SQL

## 4. Scope

Applied:
- business schema if not exists
- AICompanyManager tables if not exists
- AICompanyManager indexes if not exists
- table comments

Not applied:
- destructive migration
- RLS exact policy
- data migration
- FK tightening
- enum check constraints
