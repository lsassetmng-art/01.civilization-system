# AICompanyManager Backend DB Connect Permission Gate

phase: Phase GY
status: backend-db-connect-permission-gate
backend_db_connect: false

## 1. 現在の判定

backend DB connect:
- STOP

## 2. 許可条件

Required:
- Boss implementation OK
- API接続 OK
- backend API location fixed
- readonly adapter reviewed
- SQL mapping reviewed
- PERSONA_DATABASE_URL is backend-only
- no DATABASE_URL ERP usage
- no service role in browser

## 3. 初回接続範囲

First backend DB connect scope:
- read only
- business.aicm_company
- business.aicm_department
- business.aicm_organization
- business.aicm_department_task_ledger
- business.aicm_review_item

## 4. 禁止

Backend DB connect must not:
- write DB
- bypass RLS unexpectedly
- call AIWorkerOS
- run workflow
- import CSV
