# AICompanyManager Readonly Bootstrap Endpoint Exact Design

phase: Phase FV
status: readonly-bootstrap-endpoint-exact-design
real_api_connect: false

## 1. Endpoint

method:
- GET

path:
- /api/aicm/v1/bootstrap

mode:
- readonly

## 2. Request

Headers:
- authorization/session handled by platform
- no request body

Query optional:
- company_id
- department_id

## 3. Response exact shape

response:
{
  "ok": true,
  "data": {
    "companies": [],
    "current_company_id": "",
    "departments": [],
    "organizations": [],
    "task_ledger": [],
    "review_items": [],
    "repository_mode": "api_readonly_candidate"
  },
  "warnings": [],
  "request_id": ""
}

## 4. Error shape

error:
{
  "ok": false,
  "error_code": "",
  "error_message": "",
  "details": {},
  "request_id": ""
}

## 5. DB read targets

Read from:
- business.aicm_company
- business.aicm_department
- business.aicm_organization
- business.aicm_department_task_ledger
- business.aicm_review_item

## 6. RLS expectation

Expected:
- RLS filters records by actor membership
- no cross-company data leakage
- empty company list is valid response
- forbidden response must not reveal hidden company data

## 7. UI mapping

Map response to existing UI state:
- companies -> company selector
- departments -> department list/detail
- organizations -> organization tree/detail
- task_ledger -> 部門別タスク台帳
- review_items -> レビュー・承認待ち一覧

## 8. Forbidden side effects

Endpoint must not:
- insert
- update
- delete
- call review action RPC
- call workflow RPC
- call live AIWorkerOS
