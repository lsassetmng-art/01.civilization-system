# ============================================================
# AICompanyManager DB Apply GO Criteria
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase E-Gate
status: go-criteria-created

## 1. GO Phrase

DB apply can proceed only if Boss explicitly says:

- DB OK
- DB GO
- DB適用OK
- DB実行して

## 2. What Happens After GO

After explicit GO, the next phase should produce or execute:

1. Export safety flags:
   - AICM_DB_APPLY_GO=YES
   - AICM_SATO_DB_REVIEW_OK=YES

2. Execute:
   - 212_DB_APPLY_METHOD_A_GUARDED_ONEBLOCK_DRAFT.sh

3. Verify:
   - 213_DB_POST_APPLY_VERIFY_SQL_DRAFT.sql

4. Generate:
   - DB apply evidence report
   - table count summary
   - index count summary
   - final status report

## 3. Current Status

GO not received.
DB apply not executed.
