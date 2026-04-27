# AICompanyManager post-release UI login smoke scope

## Endpoint
- UI: GET /aicm/ui/post-release-login-smoke
- API: POST /aicm/v1/ui-login-smoke/session

## Port
- 8792

## Test tenant
- COMPANY_ID: 00000000-0000-4000-8000-1db11893cb24
- DEPARTMENT_ID: 00000000-0000-4000-8000-f6d6b5b3d38c
- ORGANIZATION_ID: 00000000-0000-4000-8000-4da5c1a6977e

## Negative tenant
- OTHER_COMPANY_ID: 00000000-0000-4000-8000-deadbeef0000

## What this smoke verifies
- UI smoke page loads.
- Login claim payload can be sent from UI/API boundary.
- Backend maps claim payload to request.jwt.claims.
- strict tenant RLS allows valid tenant role reads.
- strict tenant RLS denies cross-company and missing-claim reads.

## What this smoke does not verify
- real browser session storage
- production auth provider
- real user password login
- external deployment
- production CDN
- mobile UI rendering

## Safety
- DB DDL: not executed
- DB DATA WRITE: not executed
- RLS APPLY: not executed
- POLICY CHANGE: not executed
