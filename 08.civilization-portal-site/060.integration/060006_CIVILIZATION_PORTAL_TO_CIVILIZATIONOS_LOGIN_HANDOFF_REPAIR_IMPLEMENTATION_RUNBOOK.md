# CIVILIZATION PORTAL TO CIVILIZATIONOS LOGIN HANDOFF REPAIR IMPLEMENTATION RUNBOOK

status: implementation-ready-draft
layer: integration
domain: civilization-auth
system: civilization-portal-site
owner: Boss
prepared_by: Zero

## 1. Required Gate

Execution requires:

CIVILIZATIONOS_R13_PORTAL_TO_CIVILIZATIONOS_LOGIN_HANDOFF_REPAIR_IMPLEMENTATION GO

## 2. Required Bases

Design must include:

060005_CIVILIZATION_PORTAL_TO_CIVILIZATIONOS_LOGIN_HANDOFF_REPAIR_DESIGN.md

Implementation must descend from the reviewed base:

ff4d77c2a415c65ca026d2a3782417dd2e3e0d37

or from a later explicitly reviewed descendant.

## 3. Expected Portal Scope

Expected Portal implementation scope is limited to the auth handoff path.

Likely reviewed files include:

- app/page.tsx
- lib/auth/civilization-auth-gate.ts
- config/bridge.ts only if validation ownership requires it
- focused tests if an existing test location is available

Do not replace the entire Portal auth subsystem.

Do not delete Portal `/login`.

## 4. Existing Environment Contract

Reuse:

NEXT_PUBLIC_CIVILIZATION_AUTH_AUTHORIZE_URL

Do not invent a second Portal CivilizationOS login URL variable.

The value is the full CivilizationOS public login URL ending in:

/login

## 5. Portal Civilization Node

The Civilization node must use the validated CivilizationOS authorize URL.

Context:

requested_os_code=civilization
after_login_path=/civilization-menu
return_to=/

It must not resolve to Portal same-origin `/login`.

## 6. Portal AI Worker Node

The AI Worker node must also use the validated CivilizationOS authorize URL.

Context:

requested_os_code=aiworker
after_login_path=/civilization-menu
return_to=/

Remove the external AIWorkerOS URL from authentication after_login_path.

Do not remove NEXT_PUBLIC_AIWORKEROS_URL from unrelated behavior without
separate evidence.

## 7. Fail-Closed Portal Behavior

When NEXT_PUBLIC_CIVILIZATION_AUTH_AUTHORIZE_URL is absent or invalid:

- do not fall back to Portal /login
- do not create mock auth
- route to the existing safe Portal error surface

No credentials are collected by Portal for these two repaired entry paths.

## 8. CivilizationOS Existing-Session Reuse

The implementation should add a signed-session continuation check without
reintroducing localStorage authentication authority.

Preferred bounded implementation:

GET /api/civilization/auth/login

The GET operation is read-only and:

- reads existing signed server session
- resolves the requested OS context
- returns redirectTarget on valid session
- returns 401 when unauthenticated
- returns 503 if signing configuration is unavailable
- returns no raw cookie
- connects to no database

## 9. CivilizationOS Login Page

Before requiring credentials:

- call the server continuation check
- on valid signed session, navigate to returned redirectTarget
- on 401, remain on the login page
- on configuration/error status, remain safely on the login page

Do not use localStorage by itself as authenticated proof.

POST login behavior remains the server-backed test-login path.

## 10. Server Redirect Resolution

Reuse the same approved redirect resolver already used by current
CivilizationOS auth code.

For AI Worker:

requested_os_code=aiworker
-> AIWORKEROS_PUBLIC_BASE_URL
-> /aiworker-menu

For Civilization:

-> sanitized internal after_login_path
-> default /civilization-menu

## 11. OAuth Regression

Google and Yahoo login buttons must remain.

OAuth callback must continue to issue the existing signed session cookie.

Incoming requested OS context must continue through OAuth.

## 12. Test Login Regression

Manual login remains:

Login ID: test
Password input: test

Verification remains server-side through the configured scrypt credential.

No plaintext password may be added to Portal or client metadata.

## 13. Build Validation

Require relevant Portal and CivilizationOS checks to pass.

At minimum:

- Portal TypeScript/build PASS
- CivilizationOS TypeScript/build PASS
- CivilizationOS login route build PASS
- CivilizationOS session-identity route build PASS
- Google/Yahoo OAuth callback route build PASS

Do not change package manifests unless separately required and approved.

## 14. Local Flow Validation

Use local isolated origins to verify the two-origin handoff.

Required:

Portal Civilization link
-> CivilizationOS /login

Portal AI Worker link
-> CivilizationOS /login

Then verify:

test login -> CivilizationOS target

test login -> AIWorkerOS target

Also verify valid signed-session reuse.

No AWS deployment is part of the local implementation gate.

## 15. Negative Validation

Verify:

- missing authorize URL -> no Portal /login auth fallback
- malformed authorize URL -> safe failure
- bad external after_login_path -> sanitized
- Portal mock localStorage cannot satisfy CivilizationOS session check
- no signed session -> login remains visible
- valid signed session -> login can continue without credentials
- AIWorker target origin comes from CivilizationOS server config

## 16. DB Boundary

Expected:

DB_CONNECTION=NO
DB_MUTATION=NO

## 17. AWS Boundary

Expected:

AWS_MUTATION=NO

No deployment, DNS, load balancer, EC2, SSM SendCommand, environment
mutation, or service restart is authorized by the implementation gate.

## 18. Git Boundary

Use isolated worktree.

Stage exact reviewed paths only.

Forbidden:

git add .
git add -A

Push once.

If push fails:

stop.

Do not automatically retry.

## 19. Next Gate

After implementation PASS:

CIVILIZATIONOS_R13_AWS_LOGIN_TEST_PREFLIGHT_RECHECK GO
