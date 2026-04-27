# AICompanyManager final handoff summary

## Target
AICompanyManager

## Location
Design:
~/01.civilization-system/07.applications/03.business-app/AICompanyManager

Implementation:
~/03.civilization-development/03.business-os/AICompanyManager

## DB
Persona-side DB

## DB environment
PERSONA_DATABASE_URL

## ERP DB
DATABASE_URL was not used for this AICompanyManager Persona-side DB chain.

## Completed IDs
COMPANY_ID:
00000000-0000-4000-8000-1db11893cb24

DEPARTMENT_ID:
00000000-0000-4000-8000-f6d6b5b3d38c

ORGANIZATION_ID:
00000000-0000-4000-8000-4da5c1a6977e

LEDGER_ID:
00000000-0000-4000-8000-7ed9e0a1c2b3

CSV_LEDGER_ID:
00000000-0000-4000-8000-c5a1b0000001

REVIEW_ITEM_ID:
00000000-0000-4000-8000-1eac7100aa01

REVIEW_ACTION_ID:
00000000-0000-4000-8000-1eac71000001

WORKFLOW_RUN_ID:
00000000-0000-4000-8000-f10a00000001

## live AIWorkerOS endpoint
POST http://127.0.0.1:8787/aicm/v1/workflow-start/live-aiworkeros-call

## live AIWorkerOS final successful repair
NQ-NT live AIWorkerOS idempotency repair

## RLS final successful recovery
OD-OG RLS apply verify recovery

## Final state
AICompanyManager persistent write / CSV / workflow / live call / RLS smoke chain COMPLETE.

## Do not repeat
Do not re-run:
- ledger persistent insert
- review_item + review_action insert
- CSV import insert
- workflow start insert
- live AIWorkerOS call
- RLS apply

Only run read-only checks or future dedicated phases.
