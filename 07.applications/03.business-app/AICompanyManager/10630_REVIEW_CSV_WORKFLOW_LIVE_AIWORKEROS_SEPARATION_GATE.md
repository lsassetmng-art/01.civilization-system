# AICompanyManager Review CSV Workflow Live AIWorkerOS Separation Gate

phase: Phase JC
status: review-csv-workflow-live-aiworkeros-separation-gate

## 1. review action

Current:
- STOP

Requires:
- Boss review action OK
- approval boundary
- audit
- idempotency
- rollback/fallback

## 2. CSV import

Current:
- STOP

Requires:
- Boss CSV import OK
- preview-before-import
- row validation
- partial failure handling
- import audit
- idempotency

## 3. workflow start

Current:
- STOP

Requires:
- Boss workflow start OK
- Manager / Leader / Worker routing boundary
- audit
- retry policy
- no automatic live AIWorkerOS unless separately approved

## 4. live AIWorkerOS call

Current:
- STOP

Requires:
- Boss live AIWorkerOS OK
- backend-only call
- timeout policy
- retry policy
- audit
- human approval boundary where required
