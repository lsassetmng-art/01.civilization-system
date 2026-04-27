# AICompanyManager real API/JWT backend integration smoke scope

## Endpoint
POST /aicm/v1/strict-tenant-rls/claim-smoke

## Port
- 8791

## Test tenant
- COMPANY_ID: 00000000-0000-4000-8000-1db11893cb24
- DEPARTMENT_ID: 00000000-0000-4000-8000-f6d6b5b3d38c
- ORGANIZATION_ID: 00000000-0000-4000-8000-4da5c1a6977e

## Negative tenant
- OTHER_COMPANY_ID: 00000000-0000-4000-8000-deadbeef0000

## Claim transport
The smoke endpoint receives compact JSON claims via:
- X-AICM-JWT-Claims

## Auth
The endpoint requires:
- Authorization: Bearer <local token>

## Backend DB behavior
- Uses PERSONA_DATABASE_URL.
- Executes psql in READ ONLY transaction.
- Sets request.jwt.claims.
- Sets local role authenticated.
- Reads strict RLS-protected rows.

## Not executed
- DB DDL
- DB DATA WRITE
- RLS APPLY
- POLICY CHANGE
