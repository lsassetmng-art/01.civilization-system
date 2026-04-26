# AICompanyManager Next Chat Handoff One Block

BEGIN_HANDOFF_BLOCK

対象:
- 03.business-app / AICompanyManager

設計置き場:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager

実装置き場:
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager

現在位置:
- accepted UI 完了
- LocalRepository wiring 完了
- company / department / organization / ledger / csv / review wiring 完了
- workflow は local stub
- final local pre-push validation 完了
- design repo / implementation repo push sync PASS

最終実装ファイル:
- index.html
- assets/js/phase-de-dh-workflow-final-local-ui.js
- assets/css/phase-de-dh-workflow-final-local-ui.css

最終verify:
- tests/phase_dm_dp_push_sync_final_verify.sh

最終push report:
- 6890_PHASE_DM_DP_PUSH_SYNC_COMPLETION_REPORT.md

未実行:
- DB WRITE
- RLS APPLY
- psql
- REAL API CONNECT
- LIVE AIWORKEROS CALL

重要ルール:
- DB作業は PERSONA_DATABASE_URL
- ERP側 DATABASE_URL は使わない
- SQLは必ず psql "$PERSONA_DATABASE_URL" <<'SQL' 形式
- DB適用前は Boss DB OK と 佐藤（DB担当）レビューが必須
- Termuxでは /tmp を使わず $HOME/.tmp を使う
- index.html は script 1本維持
- MutationObserver禁止
- ApiRepositoryStub は real API接続まで disabled のまま

次の自然な工程:
1. DB apply 前レビュー
2. DDL/RLS最終精査
3. PERSONA_DATABASE_URL確認
4. Boss DB OK後にDB適用
5. その後 real API connect
6. 最後に live AIWorkerOS call boundary

END_HANDOFF_BLOCK
