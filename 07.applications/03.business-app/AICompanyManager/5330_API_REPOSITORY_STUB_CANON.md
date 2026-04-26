# AICompanyManager API Repository Stub Canon

phase: Phase BP
status: api-repository-stub-canon
api_implementation: false

## 1. 目的

将来の API 接続口だけを固定する。

## 2. 禁止

このPhaseでは fetch 実通信しない。

禁止:
- DB WRITE
- RLS APPLY
- psql
- real API call
- LIVE AIWORKEROS CALL

## 3. endpoint candidates

- GET /api/aicm/bootstrap
- POST /api/aicm/company/create
- POST /api/aicm/company/save
- POST /api/aicm/company/delete
- POST /api/aicm/company/rules/save
- POST /api/aicm/department/create
- POST /api/aicm/department/save
- POST /api/aicm/department/delete
- POST /api/aicm/organization/create
- POST /api/aicm/organization/save
- POST /api/aicm/organization/delete
- POST /api/aicm/task-ledger/save
- POST /api/aicm/task-ledger/delete
- POST /api/aicm/csv/preview
- POST /api/aicm/csv/import
- GET /api/aicm/review/list
- POST /api/aicm/review/approve
- POST /api/aicm/review/reject
- POST /api/aicm/workflow/start
