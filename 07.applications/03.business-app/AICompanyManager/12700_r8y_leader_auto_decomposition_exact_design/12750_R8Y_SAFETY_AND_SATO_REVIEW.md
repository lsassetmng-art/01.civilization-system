# R8Y safety and Sato review

## 1. DB担当レビュー

R8Z以降はDB書込を伴うため、佐藤(DB担当)レビュー対象。

対象:
- INSERT business.aicm_leader_middle_work_item
- INSERT business.aicm_leader_deliverable_requirement
- INSERT business.aicm_worker_work_unit
- UPDATE business.aicm_manager_major_work_item

## 2. 禁止事項

- 既存PMLWテーブルを新規テーブルで置き換えない
- GET /context でDB書込しない
- 画面描画中に暗黙DB書込しない
- ユーザー未確認で物理DELETEしない
- tokenをbrowserへ出さない
- server側AIWorkerOS token literalを増やさない
- renderTaskLedgerPlaceholderを巨大化しない
- helperを重複増殖させない

## 3. ROLLBACK smoke 必須

R8Zでまず行う。

- BEGIN
- 対象Manager大項目1件
- INSERT middle
- INSERT deliverable requirement
- INSERT worker work unit
- UPDATE manager status
- SELECT結果確認
- ROLLBACK
- 再SELECTで件数不変確認

## 4. persistent apply 条件

永続書込は以下の後。

- node --check core/server PASS
- ROLLBACK smoke PASS
- SQL内容レビュー
- 佐藤(DB担当)レビュー
- ユーザー明示承認
