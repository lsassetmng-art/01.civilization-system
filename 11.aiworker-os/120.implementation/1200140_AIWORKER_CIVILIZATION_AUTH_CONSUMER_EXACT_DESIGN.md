# AIWORKEROS R13 CIVILIZATION AUTH CONSUMER EXACT DESIGN

status: implementation-ready-draft
layer: implementation
system: AiworkerOS
owner: Boss
prepared_by: Zero

## 1. Purpose

Define AIWorkerOS as a consumer of CivilizationOS authentication
without redefining authentication identity or BusinessOS ownership.

## 2. Authority Boundary

CivilizationOS owns:

- login verification
- CivilizationOS signed session
- server_session_actor_key
- sealed cross-OS handoff validation

AIWorkerOS owns:

- authentication initiation for AIWorkerOS
- temporary state and PKCE state
- AIWorkerOS host-local signed session
- protected UI session guard

AIWorkerOS is not a canonical identity issuer.

## 3. Authentication Start

AIWorkerOS owns:

GET /api/civilization/auth/start

It creates:

- random state
- PKCE verifier
- PKCE S256 challenge
- bounded local return path

It redirects to the configured CivilizationOS login entry.

## 4. Temporary Cookies

Exact temporary cookies:

- aiworker_os_auth_state_v1
- aiworker_os_auth_pkce_v1
- aiworker_os_auth_return_to_v1

Required properties:

- HttpOnly
- Secure under HTTPS
- SameSite=Lax
- Path=/
- short lifetime bounded to authentication initiation

They contain no CivilizationOS signing or sealing secret.

## 5. Callback

AIWorkerOS owns:

GET /api/civilization/auth/callback

Required query:

- code
- state

The callback:

1. validates temporary state
2. requires PKCE verifier
3. calls CivilizationOS exchange server-side
4. accepts actor only from successful exchange
5. creates AIWorkerOS local session
6. clears temporary cookies
7. redirects only to bounded local return path

Required headers:

Cache-Control: no-store
Referrer-Policy: no-referrer

## 6. Exchange Call

AIWorkerOS calls:

POST {CIVILIZATION_OS_PUBLIC_BASE_URL}/api/civilization/auth/handoff/exchange

JSON input:

- code
- state
- code_verifier

AIWorkerOS never receives:

- CIVILIZATION_SESSION_SIGNING_SECRET
- CIVILIZATION_AUTH_HANDOFF_SEAL_KEY
- civilization_os_server_session_v1

## 7. AIWorkerOS Session

Exact cookie:

aiworker_os_server_session_v1

Signing environment variable:

AIWORKER_SESSION_SIGNING_SECRET

Required cookie properties:

- HttpOnly
- Secure under HTTPS
- SameSite=Lax
- Path=/

The session preserves the actor as:

serverSessionActorKey

This value is the exact opaque server_session_actor_key returned by
CivilizationOS.

It is not owner_civilization_id.

## 8. Menu Guard

/aiworker-menu requires a valid AIWorkerOS server session.

Unauthenticated direct access must not render the protected menu.

Unauthenticated access enters the authentication start flow.

A valid AIWorkerOS session skips the login flow.

## 9. Browser Identity Is Not Authority

Protected paths must ignore caller-selected identity headers including:

- x-civilization-id
- x-owner-civilization-id

Authenticated actor identity comes only from the validated AIWorkerOS
server session.

## 10. BusinessOS Identity Boundary

server_session_actor_key and BusinessOS owner_civilization_id are
different semantic identity channels unless a separately approved
canonical binding proves equivalence.

AIWorkerOS must not derive owner_civilization_id using:

- UUID syntax alone
- hashing
- deterministic UUID generation
- auth.users.id assumption
- OAuth provider subject
- localStorage
- browser header
- test-login identity assumption

## 11. Current Worker Rental Rule

No approved canonical mapping currently exists from:

server_session_actor_key

to:

Worker Rental owner_civilization_id

Therefore protected Worker Rental owner-scoped operations fail closed
until such a mapping is canonically defined.

Exact response:

HTTP 403

error:

civilization_identity_not_bound

This remains true even when the actor string is UUID-shaped.

Authentication success alone is not ownership authorization.

## 12. Public Catalog

The existing Robot Rental public catalog may remain public where its
existing contract permits.

Public catalog access does not create authentication or authorization.

## 13. Future Owner Binding

A future approved resolver may map authenticated actor to canonical
owner_civilization_id.

That resolver requires its own canonical design.

Until then AIWorkerOS must not forward an owner identity derived from
the session actor.

## 14. Local Logout

AIWorkerOS local logout clears:

- aiworker_os_server_session_v1
- temporary authentication cookies

It does not claim to revoke the CivilizationOS session.

## 15. Acceptance

Later runtime acceptance must include:

- direct unauthenticated menu -> login
- incognito menu -> login
- valid CivilizationOS actor -> AIWorker session
- existing AIWorker session -> login skipped
- tampered handoff -> rejected
- expired handoff -> rejected
- wrong state -> rejected
- wrong verifier -> rejected
- logout -> menu protected again
- public catalog remains public where intended
- protected Business path without session -> 401
- authenticated but unbound actor -> 403
- browser identity headers ignored
