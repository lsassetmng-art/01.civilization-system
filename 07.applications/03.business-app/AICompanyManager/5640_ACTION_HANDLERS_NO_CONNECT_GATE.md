# AICompanyManager Action Handlers No Connect Gate

phase: Phase BY-CB
status: action-handlers-no-connect-gate

## Gate

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

psql:
- NOT EXECUTED

REAL API CONNECT:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED

APIRepository:
- STUB ONLY

accepted handleAction replacement:
- NOT EXECUTED

## Reason

This phase prepares handlers only.

## Before next wiring phase

Need:
- Boss UI wiring OK
- accepted UI regression check
- one-script policy check
- LocalRepository category-by-category connection plan
