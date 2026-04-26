# AICompanyManager Save / Load Endpoint Contract

phase: Phase BG
status: save-load-endpoint-contract
api_implementation: false

## 1. GET /api/aicm/bootstrap

Purpose:
- UI初期表示用に現在選択可能な会社、部門、組織、台帳、レビューを取得する

Request:
- company_id optional
- department_id optional

Response data:
- selected_company_id
- selected_department_id
- selected_organization_id
- companies
- current_company
- departments
- organizations
- task_ledger
- review_items
- aiworkers_reference

Notes:
- AIWorker identity本体はAIWorkerOS参照
- AICompanyManager側では表示用最小情報のみ返す

## 2. POST /api/aicm/company/create

Purpose:
- AI企業新規追加

Request:
- company_name
- business_domain

Response data:
- company

Side effect future:
- company row create
- owner membership create
- default state create if needed

## 3. POST /api/aicm/company/save

Purpose:
- AI企業設定の変更

Request:
- company_id
- company_name
- business_domain
- company_status

Response data:
- company

## 4. POST /api/aicm/company/delete

Purpose:
- AI企業削除またはアーカイブ

Request:
- company_id

Response data:
- company_id
- company_status

Rule:
- physical deleteより archived 推奨

## 5. POST /api/aicm/company/rules/save

Purpose:
- 会社共通ルールメタデータ保存

Request:
- company_id
- files[]

file item:
- file_name
- file_kind
- storage_scope
- storage_ref
- file_size_bytes
- mime_type
- note

Response data:
- rule_files

## 6. POST /api/aicm/department/create

Purpose:
- 部門新規追加

Request:
- company_id
- department_name
- purpose
- display_order

Response data:
- department

## 7. POST /api/aicm/department/save

Purpose:
- 部門詳細内で部門変更

Request:
- company_id
- department_id
- department_name
- purpose
- department_status
- display_order

Response data:
- department

## 8. POST /api/aicm/department/delete

Purpose:
- 部門詳細内で部門削除またはアーカイブ

Request:
- company_id
- department_id

Response data:
- department_id
- department_status

Rule:
- physical deleteより archived 推奨

## 9. POST /api/aicm/organization/create

Purpose:
- 組織新規追加

Request:
- company_id
- department_id
- parent_organization_id
- organization_name
- purpose
- display_order
- robot_assignments[]

Response data:
- organization
- robot_assignments

## 10. POST /api/aicm/organization/save

Purpose:
- 組織詳細内で組織変更・ロボット配置変更

Request:
- company_id
- department_id
- organization_id
- parent_organization_id
- organization_name
- purpose
- organization_status
- display_order
- robot_assignments[]

Response data:
- organization
- robot_assignments

## 11. POST /api/aicm/organization/delete

Purpose:
- 組織詳細内で組織削除またはアーカイブ

Request:
- company_id
- department_id
- organization_id

Response data:
- organization_id
- organization_status
