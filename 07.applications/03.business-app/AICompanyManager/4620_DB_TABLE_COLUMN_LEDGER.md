# AICompanyManager DB Table Column Ledger

phase: Phase AW
status: table-column-ledger
db_apply: false

## 1. business.ai_company_manager_company

目的:
- AI企業

主カラム:
- company_id uuid primary key
- company_name text not null
- business_domain text not null default ''
- company_status text not null default 'active'
- display_order integer not null default 100
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

## 2. business.ai_company_manager_company_rule_file

目的:
- 会社共通ルールファイルメタデータ

主カラム:
- rule_file_id uuid primary key
- company_id uuid not null
- file_name text not null
- file_kind text not null default 'company_common_rule'
- storage_scope text not null default 'metadata_only'
- storage_ref text null
- file_size_bytes bigint null
- mime_type text null
- rule_status text not null default 'active'
- note text not null default ''
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

## 3. business.ai_company_manager_department

目的:
- 部門

主カラム:
- department_id uuid primary key
- company_id uuid not null
- department_name text not null
- purpose text not null default ''
- department_status text not null default 'active'
- display_order integer not null default 100
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

## 4. business.ai_company_manager_organization

目的:
- 組織ツリー

主カラム:
- organization_id uuid primary key
- company_id uuid not null
- department_id uuid not null
- parent_organization_id uuid null
- organization_name text not null
- purpose text not null default ''
- organization_status text not null default 'active'
- display_order integer not null default 100
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

## 5. business.ai_company_manager_organization_robot_assignment

目的:
- 組織へのAIロボット配置

主カラム:
- assignment_id uuid primary key
- company_id uuid not null
- department_id uuid not null
- organization_id uuid not null
- aiworker_robot_id uuid not null
- display_name text not null default ''
- role_name text not null
- assignment_status text not null default 'active'
- assigned_at timestamptz not null default now()
- unassigned_at timestamptz null
- note text not null default ''

注意:
- aiworker_robot_id は AIWorkerOS 正本への論理参照
- 物理FKは cross-schema 方針確定後

## 6. business.ai_company_manager_department_task_ledger

目的:
- Manager受領台帳

主カラム:
- ledger_row_id uuid primary key
- company_id uuid not null
- department_id uuid not null
- deliverable_name text not null
- task_name text not null
- work_type text not null
- task_status text not null default '未着手'
- priority text not null default '中'
- due_date date null
- note text not null default ''
- source_type text not null default 'manual'
- csv_import_batch_id uuid null
- ai_workflow_run_id uuid null
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

## 7. business.ai_company_manager_task_file_metadata

目的:
- 参照ファイル / 補足資料メタデータ

主カラム:
- task_file_id uuid primary key
- company_id uuid not null
- department_id uuid not null
- ledger_row_id uuid not null
- file_role text not null
- file_name text not null
- storage_scope text not null default 'metadata_only'
- storage_ref text null
- file_size_bytes bigint null
- mime_type text null
- note text not null default ''
- created_at timestamptz not null default now()

file_role:
- reference_file
- supplemental_material

## 8. business.ai_company_manager_csv_import_batch

目的:
- CSV取込単位

主カラム:
- csv_import_batch_id uuid primary key
- company_id uuid not null
- department_id uuid not null
- original_file_name text not null
- row_count integer not null default 0
- valid_row_count integer not null default 0
- invalid_row_count integer not null default 0
- import_status text not null default 'previewed'
- imported_by_user_id uuid null
- imported_at timestamptz null
- created_at timestamptz not null default now()

## 9. business.ai_company_manager_csv_import_row

目的:
- CSV取込行の検証結果

主カラム:
- csv_import_row_id uuid primary key
- csv_import_batch_id uuid not null
- row_number integer not null
- raw_row_json jsonb not null
- parsed_row_json jsonb not null default '{}'
- validation_status text not null
- validation_errors jsonb not null default '[]'
- created_ledger_row_id uuid null
- created_at timestamptz not null default now()

## 10. business.ai_company_manager_ai_workflow_run

目的:
- Manager / Leader / Worker 自動処理の実行単位

主カラム:
- ai_workflow_run_id uuid primary key
- company_id uuid not null
- department_id uuid not null
- ledger_row_id uuid not null
- workflow_type text not null
- workflow_status text not null default 'queued'
- started_at timestamptz null
- completed_at timestamptz null
- error_message text not null default ''
- created_at timestamptz not null default now()

workflow_type:
- manager_breakdown
- leader_allocation
- worker_deliverable_creation
- ai_auto_review

## 11. business.ai_company_manager_ai_workflow_step

目的:
- AI自動処理ステップログ

主カラム:
- ai_workflow_step_id uuid primary key
- ai_workflow_run_id uuid not null
- step_name text not null
- step_status text not null default 'queued'
- actor_role text not null
- aiworker_robot_id uuid null
- input_summary text not null default ''
- output_summary text not null default ''
- error_message text not null default ''
- started_at timestamptz null
- completed_at timestamptz null
- created_at timestamptz not null default now()

## 12. business.ai_company_manager_delivery_candidate

目的:
- 納品候補

主カラム:
- delivery_candidate_id uuid primary key
- company_id uuid not null
- department_id uuid not null
- ledger_row_id uuid not null
- candidate_title text not null
- candidate_status text not null default 'draft'
- output_summary text not null default ''
- output_ref text null
- ai_review_summary text not null default ''
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

## 13. business.ai_company_manager_review_item

目的:
- レビュー・承認待ち一覧

主カラム:
- review_item_id uuid primary key
- company_id uuid not null
- department_id uuid not null
- ledger_row_id uuid null
- delivery_candidate_id uuid null
- review_title text not null
- review_status text not null default '承認待ち'
- target_name text not null default ''
- note text not null default ''
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

## 14. business.ai_company_manager_review_action

目的:
- 承認 / 差し戻し履歴

主カラム:
- review_action_id uuid primary key
- review_item_id uuid not null
- action_type text not null
- actor_user_id uuid null
- comment text not null default ''
- action_at timestamptz not null default now()
