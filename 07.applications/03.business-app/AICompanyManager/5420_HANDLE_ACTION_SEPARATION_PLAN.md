# AICompanyManager handleAction Separation Plan

phase: Phase BR
status: handle-action-separation-plan
api_implementation: false

## 1. 現状

accepted UI は handleAction(action, button) に処理が集約されている。

## 2. 分離方針

次Phaseで以下の単位に分離する。

company:
- switchCompany
- createCompany
- saveCompany
- deleteCompany
- addCommonRules

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

task ledger:
- addLedgerRow
- loadLedgerEdit
- saveLedgerRow
- deleteLedgerRow

csv:
- previewCsv
- importCsv
- copyCsvPrompt

review:
- approveReview
- rejectReview

## 3. repository接続順

1. company create/save/delete
2. department create/save/delete
3. organization create/save/delete
4. task ledger save/delete
5. csv preview/import
6. review approve/reject

## 4. 安全ルール

- 1回で全置換しない
- accepted画面構成を維持
- index one-script policy維持
- MutationObserver禁止
- APIRepositoryはstubのまま
