# AICompanyManager Phase QS-QV role-specific acceptance smoke roadmap

## Phase
- QS-QV

## Current position
Completed:
- strict tenant RLS cutover
- post-cutover final verification
- API/JWT grant repair
- JWT claim simulation smoke

## This phase
Run role-specific read-only acceptance smoke.

## Roles checked
- Admin
- Manager
- Leader
- Worker
- Reviewer
- cross-company Manager
- missing claims

## Execution mode
- psql only
- READ ONLY transaction
- role/JWT claim simulation
- no DB data write
- no DB DDL
- no RLS change
- no API/curl execution

## Acceptance principle
This smoke confirms that:
- valid tenant claims can read allowed tenant rows
- cross-company claim cannot read current company row
- missing claims cannot read tenant rows
- role-specific SELECT policies execute without permission errors
