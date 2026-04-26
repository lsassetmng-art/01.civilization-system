# AICompanyManager Department Local Wiring No Connect Gate

phase: Phase CK-CN
status: department-local-wiring-no-connect-gate

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

organization wiring:
- NOT EXECUTED

ledger wiring:
- NOT EXECUTED

csv wiring:
- NOT EXECUTED

review wiring:
- NOT EXECUTED

## Reason

This phase wires only department actions to LocalRepository.

## Before next phase

Need:
- department action UI check
- organization action wiring OK
- accepted UI regression pass
