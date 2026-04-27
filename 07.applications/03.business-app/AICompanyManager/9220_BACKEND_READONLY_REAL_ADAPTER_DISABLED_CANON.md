# AICompanyManager Backend Readonly Real Adapter Disabled Canon

phase: Phase HB
status: backend-readonly-real-adapter-disabled-canon
backend_db_connect: false

## 1. 目的

Supabase readonly real adapter の実装候補を作るが、まだDB接続しない。

## 2. Candidate file

- backend-api/aicm/v1/supabase-readonly-real-adapter-disabled.js

## 3. 現時点の制限

Candidate must:
- remain disabled
- not load process.env
- not create Supabase client
- not use service role
- not connect DB
- not execute SQL
- not write DB
- not call AIWorkerOS

## 4. Future responsibility after Boss OK

Future real adapter will:
- read business.aicm_company
- read business.aicm_department
- read business.aicm_organization
- read business.aicm_department_task_ledger
- read business.aicm_review_item
- return readonly bootstrap shape
- respect RLS/session boundary

## 5. 現在の判定

backend DB connect:
- STOP
