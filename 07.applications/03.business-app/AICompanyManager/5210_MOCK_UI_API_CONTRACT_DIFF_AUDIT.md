# AICompanyManager Mock UI / API Contract Diff Audit

phase: Phase BI
status: mock-ui-api-contract-diff-audit
api_implementation: false

## 1. 監査対象

mock UI:
- index.html
- phase-ao-add-only-split-ui.js
- phase-ao-add-only-split-ui.css

API contract:
- API payload exact canon
- save/load endpoint contract
- CSV import endpoint contract
- review approval endpoint contract

## 2. mock UI が現在持つ主要state

- companies
- aiworkers
- selected companyId
- selected departmentId
- selected organizationId
- edit ledger id
- CSV rows

## 3. API contract に必要な主要payload

- company
- department
- organization
- robot_assignment
- ledger_row
- file_metadata
- review_item
- review_action
- delivery_candidate
- csv_import_batch
- csv_import_row
- ai_workflow_run

## 4. 差分

差分1:
mock UI は company に departments をネストしている。
API/DB では company / department / organization を別テーブルとして扱う。

対応:
frontend adapter で hydration 時にネスト構造へ変換する。

差分2:
mock UI は organization.robot_ids を配列で持つ。
API/DB では organization_robot_assignment rows で持つ。

対応:
frontend adapter で robot_assignments を robot_ids 風に変換し、保存時は assignment rows へ戻す。

差分3:
mock UI は reference_files / supplemental_materials を文字列で持つ。
API/DB では task_file_metadata rows で持つ。

対応:
frontend adapter で表示用に文字列または配列へ変換する。

差分4:
mock UI は review_items を department 内にネストしている。
API/DB では review_item / delivery_candidate / review_action が分離される。

対応:
repository が review/list で画面用配列を返す。

差分5:
mock UI は localStorage が正本。
将来はDBが正本。

対応:
localStorage は cache / draft / offline buffer として扱う。

## 5. 結論

UIは現状維持でよい。
DB/API化では、直接UIを書き換えず、adapter/repository層を挟む。
