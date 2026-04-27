# AICompanyManager Readonly Bootstrap Backend Candidate Canon

phase: Phase GH
status: readonly-bootstrap-backend-candidate-canon
real_api_connect: false

## 1. Endpoint

method:
- GET

path:
- /api/aicm/v1/bootstrap

candidate file:
- backend-api/aicm/v1/bootstrap-readonly-candidate.js

## 2. Response shape

success:
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

error:
{
  "ok": false,
  "error_code": "",
  "error_message": "",
  "details": {},
  "request_id": ""
}

## 3. Candidate状態

This candidate:
- does not connect DB
- does not call Supabase
- does not use service role
- does not call AIWorkerOS
- does not perform network call

## 4. Future実装責務

Future backend implementation must:
- validate session
- read only through RLS-safe boundary
- return empty arrays safely
- avoid cross-company leakage
- never write in readonly endpoint
