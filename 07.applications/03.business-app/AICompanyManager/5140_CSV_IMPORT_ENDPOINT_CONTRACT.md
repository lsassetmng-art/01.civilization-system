# AICompanyManager CSV Import Endpoint Contract

phase: Phase BH
status: csv-import-endpoint-contract
api_implementation: false

## 1. POST /api/aicm/task-ledger/save

Purpose:
- 部門別タスク台帳の追加・変更

Request:
- company_id
- department_id
- ledger_row

ledger_row:
- ledger_row_id optional
- deliverable_name
- task_name
- work_type
- task_status
- priority
- due_date
- reference_files[]
- supplemental_materials[]
- note
- source_type

Response data:
- ledger_row
- file_metadata

## 2. POST /api/aicm/task-ledger/delete

Purpose:
- 台帳行の削除またはアーカイブ

Request:
- company_id
- department_id
- ledger_row_id

Response data:
- ledger_row_id
- task_status

Rule:
- physical deleteは後続検討
- v1は保留または取消ステータス候補

## 3. POST /api/aicm/csv/preview

Purpose:
- CSVプレビュー
- 台帳行は作らない

Request:
- company_id
- department_id
- original_file_name
- csv_text

Response data:
- csv_import_batch
- rows[]

row item:
- row_number
- parsed_row
- validation_status
- validation_errors

DB future:
- csv_import_batch import_status = previewed
- csv_import_row を作成

## 4. POST /api/aicm/csv/import

Purpose:
- CSV valid行を台帳へ取り込む

Request:
- company_id
- department_id
- csv_import_batch_id

Response data:
- csv_import_batch
- imported_ledger_rows
- invalid_rows

Rules:
- valid行だけ取り込む
- invalid行は履歴に残す
- reference_files は file_role = reference_file
- supplemental_materials は file_role = supplemental_material

## 5. CSV header

deliverable_name,task_name,work_type,status,priority,due_date,reference_files,supplemental_materials,note

## 6. CSV validation

Required:
- deliverable_name
- task_name
- work_type
- status
- priority

Allowed work_type:
- 設計
- 実装
- デザイン
- 修正
- 調査
- レビュー
- 資料作成
- 納品準備
- 引き継ぎ

Allowed status:
- 未着手
- 進行中
- レビュー中
- 完了
- 保留

Allowed priority:
- 高
- 中
- 低
