# CasualChatWorker Real Mode Final Gate

status: real-mode-disabled
phase: Phase R
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Gate

Frontend real mode must remain disabled until all items pass.

## 2. Required PASS

- PostgreSQL repository unit tests
- HTTP router tests
- auth/session tests
- payload gap checker
- non-production DB transaction tests
- quote endpoint integration
- confirm endpoint integration
- entitlement issue/balance integration
- history endpoint integration

## 3. Absolute Prohibitions

- no DB secret in frontend
- no psql in frontend
- no ERP DATABASE_URL for BusinessOS WorkerRentalCore
- no AIWorkerOS mutation
- no CX22073JW mutation
- no Lover real relationship behavior
- no monitoring / threats / dependency induction / sexual service conversion

