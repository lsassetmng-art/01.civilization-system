# AICompanyManager Supabase Readonly Adapter Candidate Canon

phase: Phase GP
status: supabase-readonly-adapter-candidate-canon
backend_db_connect: false

## 1. 目的

将来の backend API readonly 接続で、business.aicm_* を read-only で読む adapter interface を固定する。

## 2. Candidate状態

Candidate:
- no DB connection
- no Supabase client
- no service role
- no environment secret read
- no network request

## 3. Future adapter responsibility

Future adapter will:
- read companies
- read departments
- read organizations
- read task ledger
- read review items
- respect RLS/session boundary
- return empty arrays safely

## 4. Forbidden

Adapter must not:
- write DB
- bypass RLS
- expose service role
- call AIWorkerOS
- mutate workflow
