# AICompanyManager API Readonly Connect Start Conditions

phase: Phase FO
status: api-readonly-connect-start-conditions
real_api_connect: false
fetch: false

## 1. API readonly connect の開始条件

Required:
- Boss implementation OK
- DB/RLS apply report PASS
- DB/RLS postcheck PASS
- ApiRepository candidate exists
- ModeResolver candidate exists
- index.html rollback plan
- LocalRepository fallback plan
- auth/session handling plan
- RLS forbidden handling plan

## 2. 最初に接続する対象

First target:
- GET /api/aicm/v1/bootstrap

Expected:
- ok
- companies
- current_company_id
- departments
- organizations
- task_ledger
- review_items

## 3. readonly connectで許可すること

Allowed:
- bootstrap read
- company read
- department read
- organization read
- ledger read
- review item read

## 4. readonly connectで禁止すること

Forbidden:
- create company
- update company
- delete/archive company
- create department
- update department
- delete/archive department
- create organization
- update organization
- ledger write
- csv import
- review action
- workflow start
- live AIWorkerOS call

## 5. fallback条件

If API readonly fails:
- keep LocalRepository active
- do not erase localStorage
- show fallback warning
- do not auto-write server state
- do not retry endlessly

## 6. 成功条件

Success:
- API returns readable data
- UI can render readonly data
- LocalRepository fallback remains available
- no write side effects
