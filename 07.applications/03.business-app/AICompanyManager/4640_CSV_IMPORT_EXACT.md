# AICompanyManager CSV Import Exact

phase: Phase AW
status: csv-import-exact
db_apply: false

## CSVヘッダー

deliverable_name,task_name,work_type,status,priority,due_date,reference_files,supplemental_materials,note

## 必須

- deliverable_name
- task_name
- work_type
- status
- priority

## 任意

- due_date
- reference_files
- supplemental_materials
- note

## 取込先

CSVは部門別タスク台帳へ直接取り込む。

取込先:
- business.ai_company_manager_department_task_ledger

## ファイル項目

reference_files:
- 作業前・作業中に読む資料
- | 区切り
- file_role = reference_file

supplemental_materials:
- 補足資料
- | 区切り
- file_role = supplemental_material

## バリデーション

invalid 条件:
- deliverable_name が空
- task_name が空
- work_type が許可値外
- status が許可値外
- priority が許可値外
- due_date が空でなく YYYY-MM-DD 形式でない

## プレビュー

プレビューでは台帳行を作らない。

作るもの:
- csv_import_batch
- csv_import_row

## 取り込み

取り込みでは valid 行のみ台帳化する。

結果:
- 全て成功: imported
- 一部 invalid: partially_imported
- valid なし: failed

## Manager受領ルール

CSV行は Manager受領台帳の行。

CSVには以下を持たせない:
- responsible_role
- responsible_robot
- route_type
