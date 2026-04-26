# AICompanyManager API Readonly Endpoint Smoke Design

phase: Phase FC
status: api-readonly-endpoint-smoke-design
real_api_connect: false

## 1. Smoke対象

First smoke target:
- GET /api/aicm/v1/bootstrap

Expected response:
- ok
- companies
- current_company_id
- departments
- organizations
- task_ledger
- review_items

## 2. Smoke順序

Recommended order:
1. auth/session確認
2. bootstrap read
3. company list read
4. department list read
5. organization tree read
6. ledger list read
7. review list read

## 3. Smoke禁止事項

Do not execute:
- write request
- csv import
- review action
- workflow start
- live AIWorkerOS call

## 4. Error cases

Must handle:
- unauthenticated
- forbidden by RLS
- empty company
- empty department
- no membership
- network failure
- malformed response

## 5. Success condition

Readonly smoke success means:
- API returns read data
- UI can render readonly data
- LocalRepository fallback remains possible
- no write side effects

## 6. 現在の判定

smoke execution:
- NOT EXECUTED
