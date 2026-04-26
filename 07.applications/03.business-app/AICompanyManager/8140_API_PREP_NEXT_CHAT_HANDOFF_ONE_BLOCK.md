# AICompanyManager API Prep Next Chat Handoff One Block

BEGIN_HANDOFF_BLOCK

対象:
- 03.business-app / AICompanyManager

設計置き場:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager

実装置き場:
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager

現在位置:
- accepted UI 完了
- LocalRepository final implementation 完了
- DB/RLS apply 完了
- DB/RLS read-only postcheck PASS
- ApiRepository candidate 作成済み
- Repository mode resolver candidate 作成済み
- API prep clean acceptance 完了
- API prep push sync 完了
- 現在は Boss implementation OK 待ち

最終active UI:
- index.html
- assets/js/phase-de-dh-workflow-final-local-ui.js
- assets/css/phase-de-dh-workflow-final-local-ui.css

candidate files:
- assets/js/aicm-api-repository-candidate.js
- assets/js/aicm-repository-mode-resolver-candidate.js

重要:
- index.html は candidate JS をまだ読んでいない
- active repository は LocalRepository
- ApiRepository candidate は disabled / no network
- ModeResolver candidate は disabled / no auto switch
- fetch は未実行
- real API connect は未実行
- live AIWorkerOS call は未実行

DB:
- DB/RLS apply は実行済み
- DB/RLS postcheck PASS
- 今後のDB作業は PERSONA_DATABASE_URL
- ERP側 DATABASE_URL は使わない

次の自然な工程:
1. Boss implementation OK を待つ
2. API readonly connect 用の最小接続ブロックを作成
3. GET /api/aicm/v1/bootstrap smoke
4. LocalRepository fallback確認
5. readonly APIが安定してから write APIへ進む
6. live AIWorkerOS call はさらに別工程

禁止:
- Boss implementation OKなしのreal API connect
- readonly前のwrite API
- live AIWorkerOS call
- index.html script複数化
- MutationObserver追加
- fetchの無許可実行

END_HANDOFF_BLOCK
