# AICompanyManager Local Repository Canon

phase: Phase BO
status: local-repository-canon
api_implementation: false

## 1. 目的

localStorage mock を repository interface に閉じ込める。

## 2. source of truth

現時点:
- localStorage

将来:
- DB

## 3. LocalRepositoryが行うこと

- loadBootstrap
- saveState
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

## 4. 注意

LocalRepository は本番DBの代替ではない。

accepted UI の動作を保ったまま、次Phaseで repository 経由化する。
