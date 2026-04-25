# ============================================================
# AICompanyManager Persona RLS GO Criteria
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase G-Gate
status: persona-rls-go-criteria-created
db_target: PERSONA_DATABASE_URL

## 1. GO Phrase

RLS apply can proceed only if Boss explicitly says:

- RLS OK
- RLS GO
- RLS適用OK
- RLS実行して

## 2. What Happens After GO

After explicit GO, the next phase should:

1. Confirm PERSONA_DATABASE_URL.
2. Use Method A:
   psql "$PERSONA_DATABASE_URL" <<'SQL'
3. Enable RLS on AICompanyManager tables.
4. Create owner / project-owner / pipeline-owner policies.
5. Keep audit_log append-only by not creating update/delete policies.
6. Run RLS verification SQL.
7. Generate evidence report.

## 3. Current Status

GO not received.
RLS apply not executed.
