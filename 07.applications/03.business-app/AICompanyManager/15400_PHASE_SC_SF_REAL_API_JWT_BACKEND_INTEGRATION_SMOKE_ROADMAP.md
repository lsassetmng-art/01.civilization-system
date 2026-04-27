# AICompanyManager Phase SC-SF real API/JWT backend integration smoke roadmap

## Phase
- SC-SF

## Current position
Completed:
- final release readiness package
- final strict tenant RLS acceptance
- role-specific acceptance smoke
- API/JWT grant repair smoke
- strict tenant RLS cutover
- first real use live AIWorkerOS call

## Purpose
Verify real HTTP API path passes JWT-like claims into backend and backend can validate strict tenant RLS through Persona DB read-only access.

## This phase
- Create local Node backend smoke endpoint.
- Start endpoint in the same Termux session.
- Call endpoint using curl.
- Send JWT claim payload via HTTP header.
- Backend sets request.jwt.claims and role authenticated.
- Backend runs Persona DB read-only strict RLS checks.
- Verify:
  - authorized Manager sees current tenant rows
  - cross-company Manager cannot see current company row
  - missing claims cannot see current company row

## Not executed
- DB DDL
- DB data write
- RLS apply
- policy change
- persistent insert
- live AIWorkerOS re-call
