# AICompanyManager Repository Interface Design Canon

phase: Phase BK
status: repository-interface-design-canon
api_implementation: false

## 1. 目的

UIが localStorage / API / DB を直接意識しないように repository interface を固定する。

## 2. repository候補

実装時候補:
- AicmRepository
- AicmLocalRepository
- AicmApiRepository

## 3. common methods

bootstrap:
- loadBootstrap(params)

company:
- createCompany(input)
- saveCompany(input)
- deleteCompany(input)
- saveCompanyRules(input)

department:
- createDepartment(input)
- saveDepartment(input)
- deleteDepartment(input)

organization:
- createOrganization(input)
- saveOrganization(input)
- deleteOrganization(input)

task ledger:
- saveLedgerRow(input)
- deleteLedgerRow(input)

csv:
- previewCsv(input)
- importCsv(input)

review:
- listReviews(input)
- approveReview(input)
- rejectReview(input)
- requestReviewRevision(input)

workflow:
- startWorkflow(input)

## 4. LocalRepository

LocalRepository は既存 localStorage mock を使う。

責務:
- 現在の画面挙動を維持する
- API接続前でも動く
- UI受入済み状態を壊さない
- テスト容易性を高める

## 5. ApiRepository

ApiRepository は将来の実API接続用。

責務:
- endpoint contract に従う
- API response を adapter に渡す
- エラーを共通形式へ正規化する
- service role が必要な処理は直接呼ばず、専用endpoint/RPC経由にする

## 6. 返却形式

repositoryはUIが扱いやすい hydrated state を返す。

例:
- companies[]
- current_company
- departments[]
- organizations[]
- task_ledger[]
- review_items[]

## 7. エラー形式

error:
- error_code
- error_message
- details
- request_id

## 8. 実装前注意

このPhaseでは interface 設計のみ。
実装はしない。
