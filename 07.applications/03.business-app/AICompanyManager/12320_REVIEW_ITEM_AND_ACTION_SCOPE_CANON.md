# AICompanyManager review item + review action scope canon

## Target tables
- REVIEW_ITEM_TABLE: business.aicm_review_item
- REVIEW_ACTION_TABLE: business.aicm_review_action

## IDs
- COMPANY_ID: 00000000-0000-4000-8000-1db11893cb24
- DEPARTMENT_ID: 00000000-0000-4000-8000-f6d6b5b3d38c
- ORGANIZATION_ID: 00000000-0000-4000-8000-4da5c1a6977e
- LEDGER_ID: 00000000-0000-4000-8000-7ed9e0a1c2b3
- REVIEW_ITEM_ID: 00000000-0000-4000-8000-1eac7100aa01
- REVIEW_ACTION_ID: 00000000-0000-4000-8000-1eac71000001

## Insert count
- review_item: max 1 row
- review_action: max 1 row

## Duplicate prevention
- Existing ID check
- ON CONFLICT DO NOTHING

## Not executed
- CSV import
- workflow start
- live AIWorkerOS call
- RLS apply
- API write
- browser fetch write
- git push
