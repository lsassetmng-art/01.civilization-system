# R8Y implementation plan toward R8Z

## Phase R8Z-1 server implementation

対象:
- server/aicm-local-ui-api-server.mjs

追加:
- runLeaderAutoDecomposition(body)
- POST /api/aicm/v2/leader-auto-decomposition/run

変更しない:
- manager-major/update
- context GET
- worker-runtime/request

## Phase R8Z-2 rollback smoke

DB書込は行うが ROLLBACK only。

検証:
- 対象1件を抽出
- Leader中項目 1件が作れる
- 成果物要件 1件が作れる
- Worker作業単位 1件が作れる
- Manager大項目 status updateできる
- ROLLBACK後に件数が変わらない

## Phase R8Z-3 core integration

対象:
- assets/js/aicm-production-core.js

変更:
- 課長へ送る確定後に leader-auto-decomposition/run を自動呼び出し
- 追加ユーザーボタンなし
- 成功後 context reload
- 失敗時はエラー表示し、Manager大項目は送信済みのまま残す

## Phase R8Z-4 persistent apply

条件:
- 佐藤(DB担当)レビューOK
- ROLLBACK smoke PASS
- ユーザー明示承認

## Phase R8Z-5 future AI decomposition

v2:
- AIWorkerOS/Leaderに中項目候補を生成させる
- Manager大項目1件から複数Leader中項目を生成
- 各中項目から複数Worker作業単位を生成

粒度制限:
- 1 Manager大項目あたり Leader中項目 最大5
- 1 Leader中項目あたり Worker作業単位 最大8
- 合計作業単位 最大20
