# CasualChatWorker Real API Connection Apply Waiting Gate

status: waiting-for-worker-rental-core-apply
phase: Phase O
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Current State

CasualChatWorker implementation can remain in mock mode until WorkerRentalCore DB apply and backend endpoint implementation are complete.

## 2. Do Not Switch to Real Mode Until

- WorkerRentalCore DB apply PASS
- WorkerRentalCore verify SQL PASS
- backend endpoints exist
- auth/session policy exists
- API payload gap check PASS
- no secrets in frontend
- no psql in frontend
- no ERP direct linkage in v1

## 3. Real Mode Switch Condition

Real mode can be enabled only when:

- CCW_API_MODE = real or equivalent runtime config exists in safe non-secret config
- API base URL is configured without DB secrets
- repository tests pass
- quote / confirm / entitlement / history flows pass

