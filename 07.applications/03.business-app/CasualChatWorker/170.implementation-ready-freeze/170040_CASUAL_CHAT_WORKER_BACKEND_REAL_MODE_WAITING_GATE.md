# CasualChatWorker Backend Endpoint Real Mode Waiting Gate

status: waiting-for-backend-implementation
phase: Phase P
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Gate

Do not enable real frontend mode until backend endpoint implementation and tests pass.

## 2. Required PASS

- post-apply read-only DB snapshot PASS
- backend skeleton verification PASS
- endpoint auth policy defined
- quote endpoint implementation PASS
- confirm endpoint implementation PASS
- entitlement endpoint implementation PASS
- history endpoint implementation PASS
- payload gap check PASS

## 3. Safety

- no DB env in frontend
- no psql in frontend
- no ERP DATABASE_URL
- no AIWorkerOS mutation
- no CX22073JW mutation
