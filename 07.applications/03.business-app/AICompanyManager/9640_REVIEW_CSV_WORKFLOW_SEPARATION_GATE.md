# AICompanyManager Review CSV Workflow Separation Gate

phase: Phase HO
status: review-csv-workflow-separation-gate

## 1. 分離対象

The following are not part of first write API phase:
- review action
- CSV import
- workflow start
- live AIWorkerOS call

## 2. review action

Requires later:
- Boss review action OK
- RPC review
- idempotency
- audit
- human approval boundary

## 3. CSV import

Requires later:
- Boss CSV import OK
- preview-before-import
- row validation
- partial failure handling
- idempotency
- import audit

## 4. workflow start

Requires later:
- Boss workflow start OK
- Manager/Leader/Worker automation boundary
- no live AIWorkerOS unless separately approved
- audit and retry policy

## 5. live AIWorkerOS

Requires later:
- Boss live AIWorkerOS OK
- backend-only call
- timeout/retry policy
- audit log
- human approval boundary
