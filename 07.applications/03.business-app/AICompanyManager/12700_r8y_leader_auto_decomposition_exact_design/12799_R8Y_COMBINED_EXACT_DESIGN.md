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
# R8Y PMLW table mapping

## 1. Manager大項目

Table:
- business.aicm_manager_major_work_item

Key:
- aicm_manager_major_work_item_id

自動分解対象:
- decomposition_status_code = assigned_to_leader
- handoff_status_code = handed_off

自動分解後:
- decomposition_status_code = decomposed
- handoff_status_code = completed

## 2. Leader中項目

Table:
- business.aicm_leader_middle_work_item

FK:
- aicm_manager_major_work_item_id -> business.aicm_manager_major_work_item

Insert mapping:
- owner_civilization_id = manager.owner_civilization_id
- aicm_user_company_id = manager.aicm_user_company_id
- aicm_manager_major_work_item_id = manager.aicm_manager_major_work_item_id
- aicm_user_company_department_id = manager.aicm_user_company_department_id
- aicm_user_company_section_id = manager.aicm_user_company_section_id
- middle_item_name = manager.major_item_name
- middle_item_description = manager.major_item_description
- leader_robot_label = manager.assigned_leader_label or 自動割当
- breakdown_status_code = worker_units_created
- handoff_status_code = handed_off
- priority_code = manager.priority_code
- due_date = manager.due_date
- reference_files_text = manager.reference_files_text
- supplemental_materials_text = manager.supplemental_materials_text
- applicable_rules_text = manager.applicable_rules_text
- note = R8Z auto-generated from Manager大項目
- display_order = manager.display_order
- metadata_jsonb.auto_decomposition_version = r8z_v1

## 3. 成果物要件

Table:
- business.aicm_leader_deliverable_requirement

FK:
- aicm_leader_middle_work_item_id -> business.aicm_leader_middle_work_item

Insert mapping:
- owner_civilization_id = middle.owner_civilization_id
- aicm_user_company_id = middle.aicm_user_company_id
- aicm_leader_middle_work_item_id = middle.aicm_leader_middle_work_item_id
- deliverable_name = middle.middle_item_name + 成果物
- deliverable_type_code = operation
- deliverable_description = middle.middle_item_description
- required_quality_text = 会社共通ルールと該当業務ルールに従う
- acceptance_criteria_text = 大項目の目的を満たし、レビュー可能な作業結果が作成されていること
- review_required_flag = true
- requirement_status_code = ready_for_worker
- priority_code = middle.priority_code
- due_date = middle.due_date
- metadata_jsonb.auto_decomposition_version = r8z_v1

## 4. Worker作業単位

Table:
- business.aicm_worker_work_unit

FK:
- aicm_leader_middle_work_item_id -> business.aicm_leader_middle_work_item
- aicm_leader_deliverable_requirement_id -> business.aicm_leader_deliverable_requirement

Insert mapping:
- owner_civilization_id = middle.owner_civilization_id
- aicm_user_company_id = middle.aicm_user_company_id
- aicm_leader_middle_work_item_id = middle.aicm_leader_middle_work_item_id
- aicm_leader_deliverable_requirement_id = requirement.aicm_leader_deliverable_requirement_id
- work_unit_name = middle.middle_item_name + 作業
- work_unit_description = middle.middle_item_description
- work_type_code = operation
- assigned_worker_label = resolved worker label or 未割当
- worker_model_code = resolved worker model or empty
- work_status_code = todo
- review_status_code = required
- priority_code = middle.priority_code
- due_date = middle.due_date
- input_context_text = Manager/Leader/成果物要件の結合要約
- expected_output_text = 指定された大項目について実行可能な成果物または作業結果を作成する
- metadata_jsonb.auto_decomposition_version = r8z_v1
# R8Y API exact design

## 1. New route

POST /api/aicm/v2/leader-auto-decomposition/run

## 2. 目的

課長へ送信済みの Manager大項目を、既存PMLWテーブルへ自動展開する。

## 3. Request

Fields:
- owner_civilization_id
- aicm_user_company_id
- aicm_manager_major_work_item_id
- mode
- source_app_ref
- auto_decomposition_version

R8Z v1:
- mode = single
- auto_decomposition_version = r8z_v1

## 4. Response

Success:
- result = ok
- processed_manager_major_count
- created_leader_middle_count
- created_deliverable_requirement_count
- created_worker_work_unit_count
- skipped_count
- items

Skip:
- status = skipped_existing_decomposition

## 5. Server function

runLeaderAutoDecomposition(body)

責務:
- request validation
- eligible Manager大項目抽出
- duplicate check
- Leader中項目 insert
- 成果物要件 insert
- Worker作業単位 insert
- Manager大項目 status update
- JSON response

禁止:
- manager-major/update に自動分解ロジックを混ぜない
- context GETでDB書込しない
- render helperからPOSTしない
- tokenをbrowserに出さない

## 6. SQL方針

1 transaction 相当の WITH で行う。

CTE候補:
- input_request
- target_major
- existing_middle
- selected_worker
- inserted_middle
- inserted_requirement
- inserted_worker_unit
- updated_manager
- final_result

## 7. Worker selection

優先順:
1. same section active Worker
2. same department active Worker
3. company-level active Worker
4. no worker

Worker未配置はエラーにしない。
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
# R8Y handoff

## Current conclusion

R8X confirmed existing PMLW tables.

Use:
- business.aicm_leader_middle_work_item
- business.aicm_leader_deliverable_requirement
- business.aicm_worker_work_unit

Do not create new middle/work-unit tables.

## Current counts

- auto candidate: 1
- pending manager major: 36
- archived: 1

## Next implementation

R8Z:
1. Add server route:
   - POST /api/aicm/v2/leader-auto-decomposition/run

2. Add server function:
   - runLeaderAutoDecomposition(body)

3. Add rollback smoke:
   - one candidate only
   - ROLLBACK only

4. Add UI integration:
   - after 課長へ送る確定
   - automatically call route
   - no extra user operation button

5. Update context hydration:
   - pmlw_middle_items / pmlwMiddleItems
   - pmlw_deliverable_requirements / pmlwDeliverableRequirements
   - pmlw_worker_work_units / pmlwWorkerWorkUnits

## Important

R8Z writes DB.
Do not execute persistent DB write without explicit approval.
佐藤(DB担当)レビュー対象.
