# AICompanyManager workflow start scope canon

## Insert count
- workflow start: max 1 row

## Fixed IDs
- COMPANY_ID: 00000000-0000-4000-8000-1db11893cb24
- DEPARTMENT_ID: 00000000-0000-4000-8000-f6d6b5b3d38c
- ORGANIZATION_ID: 00000000-0000-4000-8000-4da5c1a6977e
- LEDGER_ID: 00000000-0000-4000-8000-c5a1b0000001
- REVIEW_ITEM_ID: 00000000-0000-4000-8000-1eac7100aa01
- REVIEW_ACTION_ID: 00000000-0000-4000-8000-1eac71000001
- WORKFLOW_RUN_ID: 00000000-0000-4000-8000-f10a00000001

## Duplicate prevention
- Existing workflow run ID check
- ON CONFLICT DO NOTHING when primary key column is found

## Not executed
- live AIWorkerOS call
- RLS apply
- API write
- browser fetch write
- git push
