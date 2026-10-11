# R13 TEST LOGIN SERVER SESSION HANDOFF IMPLEMENTATION RUNBOOK

status: implementation-ready-draft
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208016
owner: Boss
prepared_by: Zero
language: English

## 1. Required Gate

Execution requires:

CIVILIZATIONOS_R13_TEST_LOGIN_SERVER_SESSION_HANDOFF_IMPLEMENTATION GO

## 2. Implementation Base

Reviewed implementation base:

f737f7f94515889bedc79aaccba7ec404d7eb331

## 3. Manual Test Credential

Manual AWS test input:

Login ID:
test

Password:
test

Runtime password verification uses a server-only scrypt credential.

## 4. OAuth Preservation

Do not remove or replace:

- Google OAuth
- Yahoo! JAPAN OAuth
- OAuth state validation
- provider callbacks
- signed server-session creation

Manual test login is additive.

## 5. Server Credential Module

Create a server-only verifier containing:

- test Login ID
- internal test civilizationId
- feature enable gate
- scrypt verification

Do not expose server credential configuration to client components.

## 6. Login API

Replace the current 501 placeholder:

POST /api/civilization/auth/login

Expected outcomes:

- 200 success
- 400 malformed request
- 401 invalid credentials
- fail-closed disabled/not-configured response

All responses:

cache-control: no-store

## 7. Successful Login

Success must:

1. verify test/test server-side
2. establish one 8-hour expiry
3. create signed HttpOnly session
4. return safe client session data
5. return server-computed redirect target
6. never return raw signed cookie

## 8. Login Page

The login page must:

- collect ID/password
- POST to server
- save returned safe session only after success
- redirect only to server-computed target

Google and Yahoo buttons remain.

## 9. Redirect Verification

Verify:

requested_os_code=aiworker
-> AIWORKEROS_PUBLIC_BASE_URL
-> /aiworker-menu

Civilization target
-> same CivilizationOS origin
-> sanitized internal path

## 10. Identity Proof Verification

Valid manual login must support:

GET /api/civilization/auth/session-identity

with HTTP 200.

Do not print raw cookie, signing secret, password, or scrypt credential.

## 11. OAuth Regression

Before commit confirm:

- OAuth start route builds
- OAuth callback builds
- Google provider remains
- Yahoo provider remains
- signed server-session handoff remains

## 12. Logout Regression

POST /api/civilization/auth/logout

must continue to clear the same server session.

## 13. Build Gate

Require:

- TypeScript PASS
- Next.js 15.5.18 build PASS
- login route build PASS
- OAuth route build PASS
- session-identity route build PASS
- logout route build PASS
- package.json unchanged
- package-lock.json unchanged

unless dependency mutation is separately authorized.

## 14. Database Boundary

Expected:

DB_CONNECTION=NO
DB_MUTATION=NO

## 15. AWS Boundary

Implementation GO does not authorize AWS changes.

## 16. Git Boundary

Stage exact reviewed auth files only.

Forbidden:

git add .
git add -A

Push once.

No automatic retry on push failure.

## 17. Resulting State

After implementation:

- manual Login ID = test
- manual password input = test
- verification = server-side
- signed HttpOnly session = enabled when configured
- OAuth = preserved
- login-time DB grant = none

## 18. Later AWS Acceptance

Required:

Portal -> test login -> AIWorkerOS

Portal -> test login -> CivilizationOS

Google/Yahoo may subsequently test the same destination families.
