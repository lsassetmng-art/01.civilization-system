# AICompanyManager Company Local Wiring No Connect Gate

phase: Phase CG-CJ
status: company-local-wiring-no-connect-gate

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

department wiring:
- NOT EXECUTED

## Reason

This phase wires only company actions to LocalRepository.

## Before next phase

Need:
- company action UI check
- department action wiring OK
- accepted UI regression pass
