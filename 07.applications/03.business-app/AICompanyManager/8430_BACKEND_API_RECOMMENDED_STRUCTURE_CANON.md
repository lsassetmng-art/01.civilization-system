# AICompanyManager Backend API Recommended Structure Canon

phase: Phase GA
status: backend-api-recommended-structure-canon

## 1. 推奨構成

Recommended:
- HTML UI
- backend API
- Supabase Persona DB
- RLS/RPC
- LocalRepository fallback

## 2. Backend API責務

Backend API handles:
- auth/session check
- payload validation
- RPC call
- service role boundary where needed
- audit logging
- idempotency
- workflow boundary
- AIWorkerOS call boundary in future

## 3. Browser責務

Browser handles:
- rendering
- user input
- local draft
- local queue
- fallback display
- API request only after allowed mode

## 4. API接続順序

Recommended order:
1. readonly bootstrap
2. readonly company/department/organization
3. readonly ledger/review
4. limited write company
5. department/organization write
6. ledger write
7. review action via RPC
8. workflow local stub via RPC
9. live AIWorkerOS call in separate phase

## 5. live AIWorkerOS

live AIWorkerOS call is not part of first API connection.

Required later:
- Boss live AIWorkerOS OK
- AIWorkerOS boundary review
- audit log review
- retry / timeout / fallback policy
