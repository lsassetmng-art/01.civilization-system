# AICompanyManager Frontend Adapter Design Canon

phase: Phase BJ
status: frontend-adapter-design-canon
api_implementation: false

## 1. 目的

API payload と既存UI state の差を吸収する。

## 2. adapter候補ファイル

実装時候補:
- assets/js/aicm-api-client.js
- assets/js/aicm-state-adapter.js
- assets/js/aicm-screen-actions.js

## 3. state adapter責務

APIからUIへ:
- company payloads を existing UI state shape に変換
- departments を company.departments[] に入れる
- organizations を department.organizations[] に入れる
- robot_assignments を robot_ids[] と表示名へ変換
- task_file_metadata を reference_files / supplemental_materials へ変換
- review_items を department.review_items[] に入れる

UIからAPIへ:
- company form を company/create または company/save payload に変換
- department form を department/create または department/save payload に変換
- organization form を organization/create または organization/save payload に変換
- robot_ids を robot_assignments payload に変換
- ledger form を task-ledger/save payload に変換
- CSV file text を csv/preview payload に変換
- review button action を review/approve または review/reject payload に変換

## 4. API client責務

- fetch wrapper
- request_id付与
- error正規化
- JSON parse
- API共通レスポンス処理
- timeout方針
- offline fallback呼び出し

## 5. screen actions責務

既存の handleAction を段階的に分離する。

候補:
- switchCompany
- createCompany
- saveCompany
- deleteCompany
- createDepartment
- saveDepartment
- deleteDepartment
- createOrganization
- saveOrganization
- deleteOrganization
- saveLedgerRow
- deleteLedgerRow
- previewCsv
- importCsv
- approveReview
- rejectReview

## 6. 実装方針

一気にUIを書き換えない。

順序:
1. adapterだけ追加
2. repository mock implementationを作る
3. 既存localStorage処理をrepository経由に寄せる
4. API implementationに差し替える

## 7. 禁止

- 既存画面構成を壊さない
- top-level tabを増やさない
- Manager/Leader/Worker手動操作画面を増やさない
- MutationObserverを使わない
