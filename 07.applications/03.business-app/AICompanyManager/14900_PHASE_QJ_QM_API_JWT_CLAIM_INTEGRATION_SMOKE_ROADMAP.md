# AICompanyManager Phase QJ-QM API/JWT claim integration smoke roadmap

## Phase
- QJ-QM

## Current position
Completed:
- strict tenant RLS exact design
- strict tenant RLS shadow apply
- strict tenant RLS cutover
- post-cutover final package
- smoke-safe authenticated policy removed
- strict policies present
- service_role policy present
- helper functions present

## This phase
Verify strict RLS behavior using JWT claim simulation.

## Smoke cases
1. Authorized Manager claim can see current company/department/organization scope.
2. Cross-company claim cannot see current company rows.
3. Missing claims cannot see tenant rows.
4. RLS helper functions read claim values.

## Execution mode
- psql only
- read-only transaction
- role/claim simulation
- no DDL
- no data write
- no RLS change
- no curl/API execution
