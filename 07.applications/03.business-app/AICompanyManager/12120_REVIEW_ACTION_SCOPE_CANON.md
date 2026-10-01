# AICompanyManager review action scope canon

## Target
- AICompanyManager review action table under business schema

## Insert count
- 1 row only

## Fixed IDs
- COMPANY_ID: 00000000-0000-4000-8000-1db11893cb24
- DEPARTMENT_ID: 00000000-0000-4000-8000-f6d6b5b3d38c
- ORGANIZATION_ID: 00000000-0000-4000-8000-4da5c1a6977e
- LEDGER_ID: 00000000-0000-4000-8000-7ed9e0a1c2b3
- REVIEW_ACTION_ID: 00000000-0000-4000-8000-1eac71000001

## Safety
- Same REVIEW_ACTION_ID is reused.
- ON CONFLICT DO NOTHING prevents duplicate rows.
- No CSV import.
- No workflow start.
- No live AIWorkerOS call.
