# R13 CIVILIZATIONOS -> AIWORKEROS CROSS-OS AUTH HANDOFF EXACT DESIGN

status: implementation-ready-draft
layer: implementation
domain: integration.authentication
system: civilization-os
owner: Boss
prepared_by: Zero

## 1. Purpose

Define the exact R13 authentication handoff from CivilizationOS to
AIWorkerOS when both systems operate on different HTTPS origins.

This design closes the previously unresolved cross-domain
authentication transport boundary.

It does not define BusinessOS ownership authorization.

## 2. Authentication Authority

CivilizationOS is the authentication authority.

Authoritative CivilizationOS authentication state remains:

civilization_os_server_session_v1

The authenticated actor exported from a valid signed server session is:

server_session_actor_key

server_session_actor_key is opaque authentication-subject data.

It must not be reinterpreted merely from syntax as:

- auth.users.id
- owner_civilization_id
- nation_id
- player identity
- canonical user UUID
- another downstream UUID identity

A UUID-looking actor key does not prove semantic identity equivalence.

## 3. Preserved Canonical Rules

The following existing rules remain unchanged:

- successful login creates no authorization grant
- bounded manual test login creates no DB row
- authentication and authorization remain separate
- external identity payload must not redefine canonical identity
- browser localStorage is not authentication authority
- arbitrary identity request headers are not authentication authority

## 4. Cross-Origin Boundary

CivilizationOS and AIWorkerOS use separate browser origins.

The CivilizationOS host-only signed session cookie is not shared with
AIWorkerOS.

AIWorkerOS must never receive:

- civilization_os_server_session_v1
- CIVILIZATION_SESSION_SIGNING_SECRET

A bounded cross-OS authentication handoff is therefore required.

## 5. Exact R13 Handoff Model

R13 uses:

stateless sealed opaque handoff

Properties:

- issued only after valid CivilizationOS signed-session proof
- actor taken only from that session
- audience-bound to AIWorkerOS
- state-bound
- PKCE-bound
- short-lived
- encrypted and authenticated by CivilizationOS
- opaque in browser-visible transport
- exchanged server-to-server

R13 does not use a PostgreSQL handoff table.

## 6. No Login-Time Persistence

The handoff must not create:

- auth_handoff_code row
- login identity row
- owner mapping row
- authorization row
- entitlement row

The transport must not require:

- PERSONA_DATABASE_URL
- DATABASE_URL

Exploratory DB-backed handoff DDL must not be applied under this design.

## 7. AIWorker-Initiated Entry

AIWorkerOS initiates authentication.

CivilizationOS receives:

- requested_os_code = aiworker
- handoff_state
- handoff_code_challenge
- handoff_code_challenge_method = S256

Existing bounded context may also include:

- locale_code
- language_code
- after_login_path
- return_to

Arbitrary external redirect origins are prohibited.

## 8. State

handoff_state is mandatory.

Requirements:

- cryptographically random
- URL-safe
- at least 32 random bytes before encoding
- retained in AIWorkerOS temporary HttpOnly state
- validated before AIWorker session creation
- bound into the sealed handoff as a hash

## 9. PKCE

PKCE is mandatory.

Exact method:

S256

AIWorkerOS creates:

code_verifier

and:

code_challenge = BASE64URL(SHA256(code_verifier))

CivilizationOS receives the challenge.

The verifier remains with AIWorkerOS until exchange.

## 10. Handoff Lifetime

Exact handoff lifetime:

120 seconds

Payload includes:

- issued_at
- expires_at

Reject:

- expired proof
- invalid time ordering
- lifetime greater than 120 seconds
- materially future-issued proof

## 11. Audience

Exact audience:

aiworker

Wrong audience fails closed.

## 12. Sealed Payload

The protected payload contains only:

- version = 1
- purpose = aiworker_auth_handoff
- audience_os_code = aiworker
- server_session_actor_key
- state_hash
- code_challenge
- code_challenge_method = S256
- nonce
- issued_at
- expires_at

It must not contain:

- CivilizationOS session cookie
- OAuth access token
- OAuth refresh token
- raw provider subject
- database credential
- authorization grant
- BusinessOS owner identity

## 13. Sealing Algorithm

Exact R13 algorithm:

AES-256-GCM

Requirements:

- 256-bit key
- random 96-bit IV for every handoff
- authenticated tag required
- authenticated-data context:
  civilization-aiworker-auth-handoff-v1

Browser transport:

v1.<iv_base64url>.<ciphertext_base64url>.<tag_base64url>

The browser-visible code must not expose server_session_actor_key.

## 14. Handoff Secret

CivilizationOS-only environment variable:

CIVILIZATION_AUTH_HANDOFF_SEAL_KEY

Representation:

base64url encoded 32-byte random key

Rules:

- server-only
- not NEXT_PUBLIC
- never sent to AIWorkerOS
- never stored in CommonOS
- distinct from CIVILIZATION_SESSION_SIGNING_SECRET
- distinct from AIWORKER_SESSION_SIGNING_SECRET

## 15. Callback

Successful issuance redirects only to the configured AIWorkerOS callback:

/api/civilization/auth/callback

Query parameters:

- code
- state

Required response policy:

Cache-Control: no-store
Referrer-Policy: no-referrer

## 16. Exchange Endpoint

CivilizationOS owns:

POST /api/civilization/auth/handoff/exchange

JSON input:

- code
- state
- code_verifier

Validation:

1. request shape
2. AES-GCM integrity
3. version
4. purpose
5. audience
6. issued_at
7. expires_at
8. state hash
9. PKCE S256
10. actor-key shape

Success returns only:

- ok = true
- server_session_actor_key

The CivilizationOS session cookie is never returned.

## 17. HTTP Semantics

- 200 valid exchange
- 400 malformed request
- 401 invalid or tampered proof
- 401 expired proof
- 401 wrong audience
- 401 wrong state
- 401 PKCE failure
- 503 handoff sealing configuration unavailable

All exchange responses use:

Cache-Control: no-store

The exchange is server-to-server.

Permissive browser CORS is not required.

## 18. Replay Boundary

This stateless R13 design does not claim globally durable single-use
consumption.

Replay resistance is bounded by:

- 120-second lifetime
- state binding
- PKCE verifier possession
- audience binding
- authenticated encryption
- AIWorker temporary-cookie deletion after successful callback

Strict durable single-use semantics require separately approved
stateful replay storage.

Reports must not claim strict single-use behavior.

## 19. Identity Mapping Rule

The handoff transports the authenticated actor exactly.

It does not map:

server_session_actor_key

to:

owner_civilization_id

or another canonical UUID.

OAuth identity, test-login identity, auth.users identity, and BusinessOS
owner identity remain distinct unless separately bound by canonical
authority.

## 20. Authorization Separation

The handoff proves authentication only.

It does not prove:

- Worker Rental ownership
- Business contract ownership
- company ownership
- nation authorization
- city authorization
- administrative authority

Downstream authorization remains domain-owned.

## 21. Logout

CivilizationOS owns its own session lifecycle.

AIWorkerOS local logout may clear AIWorkerOS-local session state.

Global coordinated logout is outside this R13 contract.

## 22. Acceptance

Later runtime acceptance must include:

- missing CivilizationOS session -> no handoff
- invalid session -> no handoff
- tampered code -> rejected
- expired code -> rejected
- wrong audience -> rejected
- wrong state -> rejected
- wrong PKCE verifier -> rejected
- valid handoff -> exact actor returned
- actor not visible in browser code
- session cookie not returned by exchange
- no DB write caused by handoff
