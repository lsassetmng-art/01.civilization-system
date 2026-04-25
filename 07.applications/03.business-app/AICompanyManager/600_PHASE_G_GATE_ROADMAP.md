# ============================================================
# AICompanyManager Phase G-Gate Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase G-Gate
status: persona-rls-apply-gate-created
owner: Boss
prepared_by: Zero
db_reviewer: 佐藤（DB担当）

## 1. Current Position

Phase A:
- app skeleton completed

Phase B:
- DB / API / State exact design completed

Phase C:
- DB DDL review package completed

Phase D:
- DB apply preparation package completed

Phase E Persona DB:
- PERSONA_DATABASE_URL apply executed
- reserved word fix completed
- current_role_code fixed

Phase F:
- Persona-side RLS exact policy design completed
- RLS SQL candidate created
- guarded RLS apply draft created
- RLS apply not executed

Phase G-Gate:
- final RLS apply gate is created
- RLS apply still not executed

## 2. Gate Status

RLS APPLY: BLOCKED

Reason:
- Boss has not explicitly said RLS OK / GO.

## 3. Required Explicit GO

To proceed to actual RLS apply, Boss must explicitly say one of the following:

- RLS OK
- RLS GO
- RLS適用OK
- RLS実行して

## 4. Next After Explicit GO

Phase G:
- Execute Persona-side RLS apply
- Use PERSONA_DATABASE_URL
- Use Method A
- Run RLS verification
- Generate RLS apply evidence report

## 5. Safety Rule

No RLS write operation is allowed in this Phase G-Gate.
