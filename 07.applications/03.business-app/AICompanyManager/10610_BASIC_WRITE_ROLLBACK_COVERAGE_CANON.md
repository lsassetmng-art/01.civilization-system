# AICompanyManager Basic Write Rollback Coverage Canon

phase: Phase JA-JD
status: basic-write-rollback-coverage-canon

## 1. Coverage summary

company write rollback smoke:
- covered
- endpoint: POST /api/aicm/v1/companies/write-rollback-smoke
- target: business.aicm_company
- persistent write: false

department write rollback smoke:
- covered
- endpoint: POST /api/aicm/v1/departments/write-rollback-smoke
- target: business.aicm_department
- support: business.aicm_company
- persistent write: false

organization write rollback smoke:
- covered
- endpoint: POST /api/aicm/v1/organizations/write-rollback-smoke
- target: business.aicm_organization
- support: business.aicm_company / business.aicm_department
- persistent write: false

ledger write rollback smoke:
- covered after repair
- endpoint: POST /api/aicm/v1/ledger/write-rollback-smoke
- target: business.aicm_department_task_ledger
- support: business.aicm_company / business.aicm_department
- persistent write: false

## 2. Final local UI

index.html:
- remains local-only

active script:
- phase-de-dh-workflow-final-local-ui.js

script count:
- must remain 1

## 3. Current write state

basic rollback smoke coverage:
- complete

persistent write:
- not approved

review action:
- not approved

CSV import:
- not approved

workflow start:
- not approved

live AIWorkerOS call:
- not approved
