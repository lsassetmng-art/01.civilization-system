# AICompanyManager Action Payload Builder Canon

phase: Phase BY
status: action-payload-builder-canon
real_api_connect: false

## 1. 目的

UIフォーム値から repository/action adapter に渡す payload を作る。

## 2. payload builder の範囲

company:
- buildCreateCompanyPayload
- buildSaveCompanyPayload
- buildDeleteCompanyPayload
- buildCompanyRulesPayload

department:
- buildCreateDepartmentPayload
- buildSaveDepartmentPayload
- buildDeleteDepartmentPayload

organization:
- buildCreateOrganizationPayload
- buildSaveOrganizationPayload
- buildDeleteOrganizationPayload

ledger:
- buildSaveLedgerRowPayload
- buildDeleteLedgerRowPayload

csv:
- buildCsvPreviewPayload
- buildCsvImportPayload

review:
- buildReviewActionPayload

## 3. 方針

payload builder はDOM値の取得と整形だけを行う。

DB/API通信はしない。
