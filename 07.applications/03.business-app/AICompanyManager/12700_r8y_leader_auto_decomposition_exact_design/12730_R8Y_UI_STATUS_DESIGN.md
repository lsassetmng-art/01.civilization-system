# R8Y UI status design

## 1. 基本方針

ユーザーは課長以降の分解操作をしない。

表示する:
- Manager大項目サマリ
- Leader以降自動処理
- 自動分解対象
- 自動分解済み
- Worker作業待ち
- レビュー待ち
- 例外

表示しない:
- Leader受信箱の通常セクション
- 中項目へ分解ボタン
- Workerへ手動配布ボタン

## 2. 課長へ送る後の動き

既存の課長へ送る確定後、自動で以下を呼ぶ。

POST /api/aicm/v2/leader-auto-decomposition/run

ユーザーに追加ボタンは出さない。

## 3. 成功時メッセージ

候補:
- 課長へ送信し、Leader自動分解を開始しました。
- 課長へ送信し、Leader中項目/Worker作業単位を自動作成しました。

## 4. context hydration

context APIには以下がある。

- pmlw_major_items
- pmlw_middle_items
- pmlw_deliverable_requirements
- pmlw_worker_work_units

R8Z後に保持する alias:

snake_case:
- pmlw_middle_items
- pmlw_deliverable_requirements
- pmlw_worker_work_units

camelCase:
- pmlwMiddleItems
- pmlwDeliverableRequirements
- pmlwWorkerWorkUnits

## 5. 保守性

helper分離:
- context hydration helper
- Manager summary helper
- Leader auto-flow helper
- PMLW workflow tree helper
- render helper

renderTaskLedgerPlaceholder にロジックを詰め込まない。
