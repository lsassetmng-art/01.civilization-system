# AICompanyManager Sato Review Submission Package

phase: Phase EF
status: sato-review-submission-package
reviewer: 佐藤（DB担当）
db_apply: false
rls_apply: false
psql: false

## 1. 提出物

DDL exact apply candidate:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7210_DDL_EXACT_APPLY_CANDIDATE.sql

RLS exact apply candidate:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7220_RLS_EXACT_APPLY_CANDIDATE.sql

Rollback candidate:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7230_DB_RLS_ROLLBACK_CANDIDATE.sql

Pre-apply review ledger:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7110_DB_RLS_API_PREAPPLY_REVIEW_LEDGER.md

Sato checklist:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7120_SATO_DB_REVIEW_CHECKLIST.md

PERSONA_DATABASE_URL gate:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7130_PERSONA_DATABASE_URL_PREAPPLY_GATE.md

GO/STOP decision sheet:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7140_DB_APPLY_GO_STOP_DECISION_SHEET.md

## 2. 佐藤レビュー依頼事項

確認してください:
- business schema に置く対象が妥当か
- aiworker schema 実体との境界が妥当か
- table構成が過不足ないか
- company / department / organization 整合が取れるか
- RLS helper function が安全か
- actor_membership policy が安全か
- review_action / workflow_run の監査設計が不足していないか
- rollback candidate が十分か
- apply前に分割すべきSQLがあるか

## 3. 現時点の判定

DB apply:
- STOP

RLS apply:
- STOP

reason:
- 佐藤レビュー未完了
- Boss DB OK 未発行
- このPhaseは候補作成のみ

## 4. apply時の環境

Use:
- PERSONA_DATABASE_URL

Do not use:
- DATABASE_URL

## 5. apply時の形式

psql "postgresql://postgres.ihrukfdlcolygyvccujd:QTUziiwGtoyLa9xg@aws-1-ap-northeast-2.pooler.supabase.com:6543/postgres?sslmode=require" <<'SQL'
-- reviewed SQL only
SQL

## 6. 佐藤レビュー結果欄

review_result:
- 未レビュー

decision:
- STOP

conditions:
- 未設定
