# CIVILIZATION PORTAL TO CIVILIZATIONOS LOGIN HANDOFF REPAIR DESIGN

status: implementation-ready-draft
layer: integration
domain: civilization-auth
system: civilization-portal-site
owner: Boss
prepared_by: Zero
repair_track: CIVILIZATIONOS_R13_PORTAL_TO_CIVILIZATIONOS_LOGIN_HANDOFF

## 1. Purpose

This document repairs the current Portal authentication handoff so that the
canonical ownership boundary is restored:

Civilization Portal routes.

CivilizationOS authenticates.

The immediate required AWS flows are:

1. Portal -> Civilization -> CivilizationOS login -> CivilizationOS
2. Portal -> AI Worker -> CivilizationOS login -> AIWorkerOS

This repair does not make Portal an authentication authority.

## 2. Canonical Authority

Existing canonical Portal design already states:

- Portal Site does not own authentication truth.
- Authentication is owned only by CivilizationOS.
- An unauthenticated OS launch is sent to the CivilizationOS Web login page.
- After authentication, the original OS destination is resolved.

Therefore the current same-origin Portal `/login` mock path must not be the
authentication destination for the Civilization and AI Worker concept-map
launch nodes.

## 3. Current Implementation Defect

At the reviewed implementation base:

ff4d77c2a415c65ca026d2a3782417dd2e3e0d37

the Portal concept-map authentication helper defaults to:

/login

That resolves on the Portal origin.

Portal owns that route and its current auth service creates a mock browser
localStorage session.

CivilizationOS already owns a separate server-backed login path with:

POST /api/civilization/auth/login

signed HttpOnly session creation, session identity proof, Google OAuth, and
Yahoo! JAPAN OAuth.

The current Portal default therefore bypasses the intended CivilizationOS
authentication authority.

## 4. Repair Strategy

The Civilization and AI Worker Portal launch nodes must explicitly hand off
to the CivilizationOS Web login endpoint.

The repair uses the already-existing Portal environment contract:

NEXT_PUBLIC_CIVILIZATION_AUTH_AUTHORIZE_URL

No new CivilizationOS login URL environment variable is introduced.

For AWS this value represents the full public CivilizationOS login URL:

<CivilizationOS public origin>/login

The concrete host is runtime configuration and is not hard-coded in design.

## 5. Authorize URL Validation

NEXT_PUBLIC_CIVILIZATION_AUTH_AUTHORIZE_URL is valid only when:

- it is an absolute URL
- it uses HTTPS in deployed environments
- HTTP is permitted only for localhost / loopback development
- it contains no username
- it contains no password
- it contains no query
- it contains no fragment
- its pathname is exactly /login

Malformed or absent configuration fails closed.

It must never silently fall back to Portal `/login` for the repaired
Civilization or AI Worker launch nodes.

The safe Portal-side failure destination is the existing Portal error route.

## 6. Portal Mock Login Boundary

The existing Portal `/login` and mock browser-storage auth implementation may
remain for legacy/development surfaces not covered by this repair.

However:

- Civilization top-node launch must not use it.
- AI Worker top-node launch must not use it.
- its localStorage session must not be accepted as CivilizationOS identity.
- it must not create or simulate a signed CivilizationOS server session.

This repair does not delete the Portal mock-login subsystem.

## 7. Civilization Launch Context

Portal Civilization launch produces a CivilizationOS login URL carrying:

locale_code
language_code
after_login_path
return_to
requested_os_code

Required semantic values:

requested_os_code = civilization
after_login_path = /civilization-menu
return_to = /

The final login URL origin is determined only by:

NEXT_PUBLIC_CIVILIZATION_AUTH_AUTHORIZE_URL

## 8. AI Worker Launch Context

Portal AI Worker launch also enters CivilizationOS login first.

Required semantic values:

requested_os_code = aiworker
after_login_path = /civilization-menu
return_to = /

The AI Worker destination origin must not be supplied through
after_login_path.

The current Portal construction based on:

NEXT_PUBLIC_AIWORKEROS_URL + /aiworker-menu

must not be used as the authentication after_login_path for this flow.

## 9. AIWorkerOS Destination Authority

After successful CivilizationOS authentication:

requested_os_code = aiworker

is resolved server-side by CivilizationOS.

CivilizationOS uses:

AIWORKEROS_PUBLIC_BASE_URL

and resolves the destination route:

/aiworker-menu

This prevents a browser-controlled or Portal-controlled arbitrary external
redirect origin from becoming authentication authority.

NEXT_PUBLIC_AIWORKEROS_URL may continue to exist for unrelated Portal
navigation where independently approved.

It is not the post-authentication origin authority for this R13 handoff.

## 10. Query Context Preservation

The handoff continues to use the existing query contract:

- locale_code
- language_code
- after_login_path
- return_to
- requested_os_code

If an existing approved optional aerial access token is present, the current
pass-through behavior is not changed by this repair.

Passwords, signed cookies, provider tokens, and server secrets are never
placed in the handoff URL.

## 11. Test Login Flow

Manual AWS integration-test flow:

Portal
-> CivilizationOS /login
-> Login ID test / Password test
-> POST /api/civilization/auth/login
-> signed HttpOnly CivilizationOS server session
-> destination resolution

Manual test authentication remains controlled by:

CIVILIZATION_TEST_LOGIN_ENABLED

and the server-only scrypt credential configuration.

No plaintext test password is added to Portal source.

## 12. Google / Yahoo Flow

The same Portal handoff must permit:

Portal
-> CivilizationOS /login
-> Google or Yahoo
-> OAuth callback
-> signed HttpOnly CivilizationOS server session
-> destination resolution

This repair must not remove, bypass, or duplicate the existing Google or
Yahoo provider path.

## 13. Signed Session Reuse

Portal must not treat its localStorage state as proof that CivilizationOS
authentication is active.

When the browser reaches CivilizationOS `/login`, CivilizationOS remains the
authority for determining whether a valid signed server session already
exists.

A valid existing signed session should be reusable without requiring the
user to authenticate again.

The reuse check must be based on the signed HttpOnly server session, not
CivilizationOS localStorage alone.

## 14. Existing-Session Continue Contract

For a valid signed CivilizationOS session, the login surface requires a
server-authoritative way to resolve the current requested destination without
submitting credentials again.

The implementation may extend the existing CivilizationOS login API with a
read-only GET continuation operation:

GET /api/civilization/auth/login

The GET operation:

- reads the signed server session
- returns 401 when unauthenticated
- returns 503 when session signing is unavailable
- sanitizes the supplied login context
- computes the redirect destination server-side
- performs no DB read
- performs no DB mutation
- performs no session mutation

For AI Worker it uses AIWORKEROS_PUBLIC_BASE_URL.

For Civilization it returns the sanitized internal CivilizationOS target.

No signed cookie value is returned in JSON.

## 15. Login Page Existing-Session Behavior

On CivilizationOS `/login`:

1. read the incoming handoff context
2. ask the server whether a valid signed session exists
3. if valid, use the server-computed continuation destination
4. if unauthenticated, show the normal test / Google / Yahoo login options
5. never use browser localStorage alone to skip authentication

This restores the existing canonical expectation that an already-authenticated
user does not needlessly log in again.

## 16. CivilizationOS Public Origin Consistency

At AWS runtime the origin of:

NEXT_PUBLIC_CIVILIZATION_AUTH_AUTHORIZE_URL

must match the configured CivilizationOS public origin:

CIVILIZATION_OS_PUBLIC_BASE_URL

The authorize URL path is:

/login

This consistency is verified during the later AWS runtime preflight.

No concrete production URL is fixed in this design.

## 17. Gateway Boundary

The current repository Civilization Web Gateway routes Portal and PersonaOS
only.

This repair does not expand that gateway.

The R13 repair uses an explicit absolute CivilizationOS login URL instead.

Therefore this implementation does not require:

- Gateway CivilizationOS upstream routing
- Gateway AIWorkerOS upstream routing
- DNS mutation
- reverse-proxy mutation

A later shared-gateway expansion, if desired, requires separate design.

## 18. Security Boundary

Portal controls only navigation context.

Portal must not control:

- CivilizationOS session signing
- CivilizationOS actor identity
- AIWorkerOS public origin used after auth
- OAuth provider identity
- authorization grants

CivilizationOS controls authentication and signed identity.

## 19. Authorization Separation

Successful handoff and login create no:

- nation_read_authorization
- city_local_read authorization
- city_registry record
- Territory Record
- facility placement
- other R13 DB row

Authentication remains separate from R13 read authorization.

## 20. Required Negative Behavior

Implementation validation must prove:

- missing authorize URL does not fall back to Portal mock login
- malformed authorize URL fails closed
- arbitrary external after_login_path is not accepted
- AI Worker launch does not use Portal-provided external after_login_path
- Portal localStorage session is not treated as CivilizationOS auth
- invalid or absent signed CivilizationOS session does not auto-continue
- Google remains available
- Yahoo remains available
- test login remains server-side

## 21. Required Portal Flow A

Portal Civilization node
-> absolute CivilizationOS /login
-> requested_os_code=civilization
-> authentication or valid signed-session reuse
-> /civilization-menu

## 22. Required Portal Flow B

Portal AI Worker node
-> absolute CivilizationOS /login
-> requested_os_code=aiworker
-> authentication or valid signed-session reuse
-> server-resolved AIWorkerOS origin
-> /aiworker-menu

## 23. Scope

This repair does not change the Persona top-node handoff.

Persona authentication routing requires its own explicit verification before
any repair is applied.

This repair does not modify:

- Portal DB behavior
- CivilizationOS DB behavior
- AWS infrastructure
- Google provider configuration
- Yahoo provider configuration
- Web Gateway topology

## 24. Implementation Gate

Implementation requires separate explicit approval:

CIVILIZATIONOS_R13_PORTAL_TO_CIVILIZATIONOS_LOGIN_HANDOFF_REPAIR_IMPLEMENTATION GO

## 25. Post-Implementation Gate

After implementation acceptance, repeat AWS read-only preflight before any
AWS mutation:

CIVILIZATIONOS_R13_AWS_LOGIN_TEST_PREFLIGHT_RECHECK GO
