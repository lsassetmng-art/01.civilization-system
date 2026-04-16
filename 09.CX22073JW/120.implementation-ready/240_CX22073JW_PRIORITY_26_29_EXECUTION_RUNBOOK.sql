-- ============================================================
-- CX22073JW Priority 26-29 Execution Runbook
-- status: implementation-ready-runbook
-- owner: Boss
-- prepared_by: Zero
-- reviewer: 佐藤（DB担当）
-- note:
--   run each referenced SQL in order after review
-- ============================================================

\echo '============================================================'
\echo 'CX22073JW Priority 26-29 Execution Runbook'
\echo '============================================================'
\echo 'Step 1: review and apply 200_CX22073JW_PRIORITY_26_29_DELTA_DDL_CANDIDATE.sql'
\echo 'Step 2: review and apply 210_CX22073JW_PRIORITY_26_29_BASE_SEED_CANDIDATE.sql'
\echo 'Step 3: run 220_CX22073JW_PRIORITY_26_29_VERIFICATION_SQL.sql'
\echo 'Step 4: run 250_CX22073JW_PRIORITY_26_29_POST_APPLY_AUDIT_SQL.sql'
\echo 'Step 5: fill 260_CX22073JW_PRIORITY_26_29_RELEASE_CHECKLIST.md'
\echo ''
\echo 'This file is a runbook reference and does not execute external files automatically.'
