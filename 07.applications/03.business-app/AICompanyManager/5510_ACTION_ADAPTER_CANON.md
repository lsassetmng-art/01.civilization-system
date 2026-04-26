# AICompanyManager Action Adapter Canon

phase: Phase BU
status: action-adapter-canon
real_api_connect: false

## 1. 目的

accepted UI の handleAction を将来小分けするため、先に action adapter の責務を固定する。

## 2. action adapter の責務

company:
- switchCompany
- createCompany
- saveCompany
- deleteCompany
- saveCompanyRules

department:
- switchDepartment
- createDepartment
- saveDepartment
- deleteDepartment

organization:
- switchOrganization
- createOrganization
- saveOrganization
- deleteOrganization

ledger:
- saveLedgerRow
- deleteLedgerRow

csv:
- previewCsv
- importCsv

review:
- approveReview
- rejectReview
- requestReviewRevision

workflow:
- startWorkflow

## 3. 今回の位置づけ

今回の action adapter は skeleton。

accepted UI の handleAction を全面置換しない。

次Phase以降で、1カテゴリずつ repository 経由へ寄せる。

## 4. 禁止

- top-level tab 追加禁止
- Manager / Leader / Worker 手動操作画面追加禁止
- MutationObserver 禁止
- real API connect 禁止
