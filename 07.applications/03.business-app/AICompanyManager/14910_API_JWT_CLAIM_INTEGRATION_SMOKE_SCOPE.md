# AICompanyManager API/JWT claim integration smoke scope

## Target
AICompanyManager strict tenant RLS post-cutover state.

## Test company
- COMPANY_ID: 00000000-0000-4000-8000-1db11893cb24
- DEPARTMENT_ID: 00000000-0000-4000-8000-f6d6b5b3d38c
- ORGANIZATION_ID: 00000000-0000-4000-8000-4da5c1a6977e

## Negative company
- OTHER_COMPANY_ID: 00000000-0000-4000-8000-deadbeef0000

## Important
This is a psql-level claim simulation smoke.
It does not execute real browser/API login.
It verifies whether RLS helper functions and policies respond correctly to request.jwt.claims.

## Not executed
- DB DDL
- DB DATA WRITE
- RLS apply
- policy change
- curl
- external API call
