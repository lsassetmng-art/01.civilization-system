# AICompanyManager API Payload Exact Canon

phase: Phase BE
status: api-payload-exact-canon
api_implementation: false

## 1. API基本方針

AICompanyManager API は、現在のHTML/JS localStorage mockを将来DB接続へ移すための契約とする。

このPhaseでは実装しない。

## 2. 共通レスポンス

成功:

- ok: true
- data: object
- warnings: array
- request_id: string

失敗:

- ok: false
- error_code: string
- error_message: string
- details: object
- request_id: string

## 3. 共通ID

- company_id
- department_id
- organization_id
- ledger_row_id
- csv_import_batch_id
- review_item_id
- delivery_candidate_id

## 4. company payload

company:
- company_id
- company_name
- business_domain
- company_status
- display_order
- company_common_rules
- departments
- created_at
- updated_at

## 5. department payload

department:
- department_id
- company_id
- department_name
- purpose
- department_status
- display_order
- organization_count
- task_ledger_count
- created_at
- updated_at

## 6. organization payload

organization:
- organization_id
- company_id
- department_id
- parent_organization_id
- organization_name
- purpose
- organization_status
- display_order
- robot_assignments
- created_at
- updated_at

## 7. robot assignment payload

robot_assignment:
- assignment_id
- company_id
- department_id
- organization_id
- aiworker_robot_id
- display_name
- role_name
- assignment_status
- assigned_at
- unassigned_at
- note

表示名:
- display_name@role_name

## 8. department task ledger payload

ledger_row:
- ledger_row_id
- company_id
- department_id
- deliverable_name
- task_name
- work_type
- task_status
- priority
- due_date
- reference_files
- supplemental_materials
- note
- source_type
- csv_import_batch_id
- ai_workflow_run_id
- created_at
- updated_at

## 9. file metadata payload

file_metadata:
- task_file_id
- company_id
- department_id
- ledger_row_id
- file_role
- file_name
- storage_scope
- storage_ref
- file_size_bytes
- mime_type
- note
- created_at

file_role:
- reference_file
- supplemental_material

## 10. review payload

review_item:
- review_item_id
- company_id
- department_id
- ledger_row_id
- delivery_candidate_id
- review_title
- review_status
- target_name
- note
- created_at
- updated_at

review_action:
- review_action_id
- review_item_id
- action_type
- actor_user_id
- comment
- action_at
