# ============================================================
# AICompanyManager Phase F Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase F
status: persona-rls-exact-design-started
owner: Boss
prepared_by: Zero
db_reviewer: 佐藤（DB担当）

## 1. Current Position

Phase A:
- App skeleton completed.

Phase B:
- DB / API / State exact design completed.

Phase C:
- DB DDL review package completed.

Phase D:
- DB apply preparation package completed.

Phase E Persona DB:
- PERSONA_DATABASE_URL apply executed.
- reserved word issue fixed by changing current_role to current_role_code.
- AICompanyManager app-side tables and indexes are expected to exist on Persona-side DB.

Phase F:
- Persona-side RLS exact policy design is created.
- RLS is not applied in this phase.

## 2. Phase F Scope

This phase defines:

- access control matrix
- owner_user_id policy
- project ownership derived policy
- pipeline_run ownership derived policy
- audit_log append-only policy
- queue owner policy
- RLS SQL candidate
- RLS guarded apply draft
- RLS verify SQL draft
- Phase F completion report

## 3. Out of Scope

This phase does not execute:

- alter table enable row level security
- create policy
- drop policy
- destructive SQL
- data migration
- API implementation
- UI implementation

## 4. Completion Conditions

- RLS policy design is documented.
- RLS SQL candidate is created.
- RLS guarded apply draft is created.
- RLS verification SQL draft is created.
- access control matrix is created.
- integrated design is regenerated.

## 5. Next Phase

Phase G:
- RLS apply execution
- only after Boss explicit RLS OK / GO
- use PERSONA_DATABASE_URL
- use Method A
