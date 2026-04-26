# AICompanyManager Final Local Implementation Handoff Bundle

status: final-local-implementation-handoff
phase: Phase DQ-DT
app_name: AICompanyManager
owner: Boss
prepared_by: Zero

## 1. 現在の完成状態

AICompanyManager は、現時点で localStorage / LocalRepository ベースの local implementation として push sync まで完了している。

完了済み:
- AI企業ダッシュボード
- 部門別タスク台帳
- レビュー・承認待ち一覧
- AI企業設定は top tab から除外
- AI企業新規追加は別画面
- 部門追加は別画面
- 部門詳細で変更 / 削除
- 組織追加は別画面
- 組織詳細で変更 / 削除 / ロボット配置
- 部門別タスク台帳で追加 / 変更 / 削除
- CSV preview / import
- レビュー承認 / 差し戻し / 修正依頼
- workflow start は local stub

## 2. 実装正本

Implementation root:
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager

Final UI:
- index.html
- assets/js/phase-de-dh-workflow-final-local-ui.js
- assets/css/phase-de-dh-workflow-final-local-ui.css

Final verify:
- tests/phase_dm_dp_push_sync_final_verify.sh

## 3. 設計正本

Design root:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager

Push sync report:
- 6890_PHASE_DM_DP_PUSH_SYNC_COMPLETION_REPORT.md

## 4. local wiring 完了範囲

Completed local wiring:
- company_wiring: true
- department_wiring: true
- organization_wiring: true
- ledger_wiring: true
- csv_wiring: true
- review_wiring: true
- workflow_local_stub_wiring: true

## 5. 未接続領域

Not connected:
- DB WRITE
- RLS APPLY
- psql
- real API connect
- live AIWorkerOS call
- production service role
- production RPC
- production audit log
- real file upload storage

## 6. DB/RLS/APIに進む前の注意

DB/RLS/APIへ進む前に、次を必ず満たす。

- Boss DB OK
- 佐藤（DB担当）レビュー
- PERSONA_DATABASE_URL 確認
- RLS apply plan
- endpoint security review
- service role / RPC boundary review
- AIWorkerOS live call boundary review
- rollback plan
