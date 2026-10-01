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
