# R8Y Leader自動分解 exact design

## 1. 現在位置

AICompanyManager は以下まで完了済み。

- Manager大項目CSV取り込み: OK
- 登録済み大項目表示: OK
- ページング: OK
- 削除/アーカイブ: OK
- 課長へ送る: OK
- Manager大項目サマリ: OK
- Leader受信箱の通常表示削除: OK
- Leader以降自動処理パネル: OK
- R8X事前確認: OK

R8Xで確認済みの既存DB:

- business.aicm_leader_middle_work_item
- business.aicm_leader_deliverable_requirement
- business.aicm_worker_work_unit
- business.vw_aicm_pmlw_leader_middle_display
- business.vw_aicm_pmlw_worker_work_unit_display
- business.vw_aicm_pmlw_workflow_tree

結論:
新規テーブルは作らない。
既存PMLWテーブルを使う。

## 2. 正本フロー

President方針
-> Manager大項目
-> 課長/Leaderへ送る
-> Leader中項目を自動生成
-> 成果物要件を自動生成
-> Worker作業単位を自動生成
-> Worker実行へ進める
-> ユーザーは進捗、例外、レビュー待ち、承認だけ見る

## 3. 自動分解対象

対象条件:

- decomposition_status_code = assigned_to_leader
- handoff_status_code = handed_off

ただし、同じ Manager大項目から既に Leader中項目が存在する場合は再生成しない。

## 4. v1粒度

R8Z v1では、1 Manager大項目につき以下を生成する。

- Leader中項目: 1件
- 成果物要件: 1件
- Worker作業単位: 1件

理由:
- まず既存PMLW連携を通す
- 粒度崩壊を避ける
- AIによる複数分解は次段階
- 「大項目が細かすぎる」問題を初期自動処理で増幅しない

## 5. 状態更新

自動分解成功時、Manager大項目:

- decomposition_status_code = decomposed
- handoff_status_code = completed

Leader中項目:

- breakdown_status_code = worker_units_created
- handoff_status_code = handed_off

成果物要件:

- requirement_status_code = ready_for_worker

Worker作業単位:

- work_status_code = todo
- review_status_code = required

## 6. 自動割当

Leader:
- Manager大項目の assigned_leader_label を優先
- 空なら 自動割当

Worker:
- 同じ会社の active Worker配置から選ぶ
- section一致を最優先
- department一致を次点
- company配置を最後
- 見つからない場合は未割当で作成し、処理自体は止めない

## 7. idempotency

重複作成を避ける。

判定:
- business.aicm_leader_middle_work_item に同じ aicm_manager_major_work_item_id が存在する場合は skip
- metadata_jsonb.auto_decomposition_version = r8z_v1 がある場合も skip
- 既存の中項目がある場合は安全側で skip

## 8. UI方針

通常ユーザー操作:
- 中項目へ分解ボタンは出さない
- 自動処理対象、自動分解済み、Worker作業待ち、レビュー待ち、例外を表示
- 例外だけレビュー/承認待ち一覧に流す

保守:
- 自動分解は専用API routeへ分離
- manager-major/update に混ぜない
- renderTaskLedgerPlaceholder を太らせない
- summary helper / auto-flow helper / context hydration helper を分離する
