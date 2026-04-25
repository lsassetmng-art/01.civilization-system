# CasualChatWorker WorkerRentalCore HTTP Endpoint Wiring Candidate

status: active
phase: Phase R
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define HTTP endpoint wiring candidate for WorkerRentalCore backend.

## 2. Endpoint Candidate

The HTTP handler candidate routes:

- GET /api/v1/business/worker-rental/service/catalog
- GET /api/v1/business/worker-rental/entitlement/balance
- POST /api/v1/business/worker-rental/quote
- POST /api/v1/business/worker-rental/confirm

## 3. Dependency Injection

The HTTP router must receive:

- workerRentalRepository
- authenticated context
- idFactory

It must not create DB connections by itself in frontend code.

## 4. Real Mode Gate

Frontend may switch to real mode only after:

- backend HTTP routing tests pass
- PostgreSQL repository tests pass with safe test pool
- real DB non-production integration tests pass
- auth/session policy pass
- payload gap checker pass

