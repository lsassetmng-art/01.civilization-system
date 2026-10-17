# COMMON OS CROSS-OS AUTH HELPER BOUNDARY CANONICAL

status: canonical-proposed
layer: security
system: CommonOS

## 1. Purpose

Define the CommonOS boundary for reusable cross-OS authentication
mechanics.

CommonOS may provide reusable helpers.

CommonOS must not become authentication or authorization authority.

## 2. Allowed Helpers

CommonOS may provide authority-neutral helpers for:

- secure random state generation
- PKCE verifier generation
- PKCE S256 challenge calculation
- bounded local return-path validation
- no-store response helpers
- no-referrer response helpers
- secure-cookie option helpers
- shared types that do not reinterpret identity

## 3. Forbidden Authority

CommonOS must not own:

- CivilizationOS login authority
- CivilizationOS signed session
- CivilizationOS handoff sealing
- AIWorkerOS signed session
- BusinessOS owner authorization
- canonical identity creation
- actor-to-owner identity mapping
- authorization grants

## 4. Secret Exclusion

CommonOS client assets must never contain:

- CIVILIZATION_SESSION_SIGNING_SECRET
- CIVILIZATION_AUTH_HANDOFF_SEAL_KEY
- AIWORKER_SESSION_SIGNING_SECRET
- OAuth client secrets
- database credentials
- service-role credentials

## 5. Domain Ownership

CivilizationOS owns authentication truth.

AIWorkerOS owns its host-local consumer session.

BusinessOS owns commercial and owner authorization truth.

CommonOS remains reusable infrastructure only.

## 6. Identity Semantics

CommonOS helpers treat actor identifiers as opaque unless the owning
domain supplies an approved typed binding.

CommonOS must never reinterpret:

server_session_actor_key

as:

owner_civilization_id

based on UUID syntax or naming similarity.

## 7. Failure Rule

If the owning domain cannot prove required authentication or
authorization, CommonOS provides no fallback authority.

Ambiguous authority fails closed.

## 8. R13 Application

For CivilizationOS -> AIWorkerOS R13, CommonOS may later provide
generic PKCE, state, cookie, and response-header helpers.

CommonOS does not:

- issue the CivilizationOS handoff
- decrypt the CivilizationOS handoff
- create authenticated actor truth
- create BusinessOS owner mapping
- decide Worker Rental authorization
