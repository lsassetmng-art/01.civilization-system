# AICompanyManager Write API Idempotency Rollback Audit Canon

phase: Phase HO
status: write-api-idempotency-rollback-audit-canon
write_api_connect: false

## 1. idempotency

All write requests must include:
- idempotency_key

Purpose:
- prevent duplicate writes
- allow retry
- support safe rollback/fallback

## 2. validation

Backend API must validate:
- required IDs
- company ownership / membership
- department belongs to company
- organization belongs to department/company
- ledger row belongs to department/company
- enum values
- status values
- payload size

## 3. audit

Every successful write must record:
- actor
- action
- target table/logical object
- before/after summary
- idempotency_key
- request_id
- timestamp

## 4. rollback / fallback

If write fails:
- do not erase local state
- keep LocalRepository draft
- show failure status
- do not retry endlessly
- do not start workflow
- do not call live AIWorkerOS

## 5. 禁止

Write API must not:
- bypass RLS unexpectedly
- use browser service role
- execute review action
- import CSV
- start workflow
- call AIWorkerOS
