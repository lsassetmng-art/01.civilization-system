# AICompanyManager Phase ZZT-ZZW Worker exact model correction roadmap

## Current issue
The Worker placement persistent update technically passed, but the stored row is semantically wrong:
- model_code = Worker
- robot_display_name is blank
- internal_nickname = LoVerS 06F Cool

This means the candidate resolver selected a non-exact Worker model.

## This phase
Correct the Worker placement to an exact Worker-capable model.

## Allowed target models
- BYD1-003
- BYD1-002
- BYD1-001
- HD-R3
- MG-NORN-001
- MG-NORN-002
- MG-NORN-003

## Excluded
- LoVerS
- Lover
- Friend
- Blank model_code
- Generic model_code = Worker

## Execution policy
- DB WRITE: EXECUTED
- API WRITE: NOT EXECUTED
- DELETE: NOT EXECUTED
- INSERT: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- quantity_consumption: false
