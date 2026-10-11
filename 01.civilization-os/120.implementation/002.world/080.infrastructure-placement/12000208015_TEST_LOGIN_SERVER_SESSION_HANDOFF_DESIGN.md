# R13 TEST LOGIN SERVER SESSION HANDOFF DESIGN

status: implementation-ready-draft
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208015
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the bounded manual test-login path required for later AWS
Civilization Portal integration testing.

This path supplements the existing Google and Yahoo OAuth login paths.

It does not replace OAuth.

## 2. Login Entry Set

CivilizationOS supports these intended authentication entries:

- bounded manual AWS integration-test login
- Google OAuth
- Yahoo! JAPAN OAuth

The manual test path is temporary and explicitly gated.

Google and Yahoo remain external authentication paths.

## 3. Manual Test Credential

Operator-facing test credentials:

Login ID:
test

Password:
test

Display name:
CivilizationOS Test User

These credentials exist only for bounded AWS integration testing.

## 4. Internal Identity

Internal test Civilization identity remains:

00000000-0000-4000-8000-000000000001

Separation:

- human Login ID = test
- human test password = test
- internal civilizationId = 00000000-0000-4000-8000-000000000001
- server_session_actor_key = value proven from valid signed server session

The internal identity is not nation_id.

## 5. Test Enable Gate

Manual test login is enabled only when:

CIVILIZATION_TEST_LOGIN_ENABLED=true

Default, absent, false, or malformed configuration means disabled.

The test path must be disabled after AWS integration testing.

Google and Yahoo OAuth are independent of this switch.

## 6. Runtime Password Storage

Although the operator enters password:

test

plaintext password must not be stored in repository or client bundle.

The server stores an encoded scrypt credential through:

CIVILIZATION_TEST_LOGIN_PASSWORD_SCRYPT

The encoded credential is derived from the chosen test password.

## 7. Public Exposure Rule

Because test/test is deliberately guessable:

- test login defaults disabled
- it is enabled only for the bounded test window
- it is disabled again after testing
- successful login creates no authorization grant
- successful login creates no DB row

It must not become a permanent public production credential.

## 8. Existing OAuth Preservation

Implementation must preserve:

- Google OAuth start/callback
- Yahoo OAuth start/callback
- OAuth state validation
- provider configuration
- provider subject validation
- signed HttpOnly server-session handoff

The manual test login is additive.

## 9. Shared Session Authority

All successful login mechanisms converge on:

civilization_os_server_session_v1

Therefore:

test login
-> signed CivilizationOS server session

Google OAuth
-> signed CivilizationOS server session

Yahoo OAuth
-> signed CivilizationOS server session

R13 consumes the signed actor boundary rather than the login mechanism.

## 10. Manual Login Endpoint

The existing endpoint becomes:

POST /api/civilization/auth/login

Input includes:

- loginIdentifier
- password
- localeCode
- languageCode
- afterLoginPath
- returnTo
- requestedOsCode

Credentials are request-body only.

## 11. Server Verification

Server verification must:

1. require test-login enable gate
2. normalize loginIdentifier
3. require loginIdentifier = test
4. verify password against server-only scrypt credential
5. require signed-session configuration
6. create signed HttpOnly session
7. create safe client compatibility session
8. compute redirect destination server-side

The browser no longer decides credential validity.

## 12. Password Verification

Use Node crypto scrypt and timingSafeEqual.

Encoded credential contains:

- version/format
- salt
- derived digest

Malformed configuration fails closed.

No raw password may enter session payload or logs.

## 13. Session Lifetime

Manual test session lifetime:

8 hours

Client compatibility session and signed server session share the same
absolute expiry.

OAuth lifecycle is not changed by this design.

## 14. Signed Server Session

Reuse:

setCivilizationServerSessionCookie

Signing authority remains:

CIVILIZATION_SESSION_SIGNING_SECRET

No second authentication cookie is created.

## 15. Test Session Fields

Signed test session contains only safe fields:

- version
- civilizationId
- issuedAt
- expiresAt
- localeCode
- languageCode
- requestedOsCode

No password, hash, OAuth token, or DB credential is included.

## 16. Client Compatibility Session

After successful server authentication, the server may return a safe
client-session payload compatible with existing CivilizationOS browser state.

The login page stores it only after server success.

Browser state is not server authentication authority.

## 17. Legacy Client Authentication Removal

The current browser-side:

system / password

authentication authority is replaced for manual testing by server-side:

test / test

verification.

No password or derived credential may be included in client JavaScript.

## 18. Redirect Context

Preserve:

- locale_code
- language_code
- after_login_path
- return_to
- requested_os_code

Redirect targets are sanitized server-side.

Request input cannot select an arbitrary external origin.

## 19. AWS Manual Flow A

Civilization Portal
-> AI Worker
-> CivilizationOS login
-> test / test
-> signed CivilizationOS session
-> AIWorkerOS /aiworker-menu

AIWorkerOS origin comes only from:

AIWORKEROS_PUBLIC_BASE_URL

## 20. AWS Manual Flow B

Civilization Portal
-> Civilization
-> CivilizationOS login
-> test / test
-> signed CivilizationOS session
-> CivilizationOS post-login target

Default target:

/civilization-menu

## 21. OAuth Destination Compatibility

When provider configuration is valid, architecture must also support:

Portal
-> CivilizationOS login
-> Google or Yahoo
-> signed CivilizationOS server session
-> AIWorkerOS or CivilizationOS according to requested OS context

## 22. Identity Proof

After a successful login path:

GET /api/civilization/auth/session-identity

must prove the signed actor.

R13 provisioning must obtain its runtime actor through this endpoint.

Manual actor reconstruction is prohibited.

## 23. Authorization Separation

Authentication creates no:

- nation_read_authorization
- city_local_read grant
- city_registry row
- Territory Record
- DB row

Authorization remains separate.

## 24. Database Boundary

Manual login is stateless and requires no PostgreSQL connection.

It must not use:

- PERSONA_DATABASE_URL
- DATABASE_URL

for credential verification.

## 25. Logout

Manual test, Google, and Yahoo sessions use the same signed-session lifecycle.

Existing server logout remains authoritative.

## 26. Runtime Configuration

Manual login:

- CIVILIZATION_TEST_LOGIN_ENABLED
- CIVILIZATION_TEST_LOGIN_PASSWORD_SCRYPT

Shared session:

- CIVILIZATION_SESSION_SIGNING_SECRET
- CIVILIZATION_OS_PUBLIC_BASE_URL

AIWorker redirect:

- AIWORKEROS_PUBLIC_BASE_URL

Google/Yahoo retain their existing provider-specific configuration.

No AWS mutation is authorized here.

## 27. Negative Tests

Verify later:

- invalid ID -> no signed session
- invalid password -> no signed session
- disabled test login -> no signed session
- missing scrypt credential -> no signed session
- missing signing secret -> no signed session
- arbitrary external redirect cannot be injected
- signed cookie value is not returned to JavaScript
- plaintext test password is not in client bundle
- login creates no authorization
- disabling manual test login does not disable OAuth

## 28. Shutdown Rule

After required AWS manual flows are accepted:

CIVILIZATION_TEST_LOGIN_ENABLED

must be disabled.

Google/Yahoo remain independently usable.

## 29. Scope Boundary

This design does not implement:

- general production password authentication
- account registration
- password reset
- persistent local account database
- multi-user local credentials
- DB authorization grant
- AWS deployment

## 30. Implementation Gate

Implementation requires:

CIVILIZATIONOS_R13_TEST_LOGIN_SERVER_SESSION_HANDOFF_IMPLEMENTATION GO
