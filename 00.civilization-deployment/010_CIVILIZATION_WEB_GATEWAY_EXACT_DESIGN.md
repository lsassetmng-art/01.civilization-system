# Civilization Web Gateway Exact Design

status: canonical
system: civilization
layer: deployment
domain: shared-web-runtime
owner: CIVILIZATION_WEB_DEPLOYMENT
component: CIVILIZATION_WEB_GATEWAY

## 1. Purpose

Civilization Web Gateway is the shared same-origin deployment
boundary outside Portal and outside individual OS Web applications.

Its first governed routing migration is PersonaOS.

The gateway preserves one browser-visible public origin while
allowing /persona-menu/** to become runtime-owned by PersonaOS.

## 2. Physical ownership

Canonical design root:

00.civilization-deployment/

Canonical implementation root:

00.civilization-deployment/civilization-web-gateway/

The gateway is not owned by:

- Portal
- PersonaOS
- CivilizationOS
- CommonOS
- CommonUIRuntime

## 3. Runtime technology

Initial implementation:

- Node.js
- ECMAScript modules
- Node standard library
- node:http
- node:https when required for an HTTPS upstream
- no third-party reverse-proxy dependency
- no database client
- no business-domain package
- no authentication implementation

## 4. Production topology

Logical topology:

public Civilization origin
  -> Civilization Web Gateway
     -> /persona-menu and /persona-menu/** -> PersonaOS Web
     -> every other path                 -> Portal

The browser-visible public origin remains unchanged.

TLS termination may be supplied by the hosting or deployment
platform and is outside this application-routing decision.

## 5. Persona route predicate

Persona routing matches exactly when:

pathname === "/persona-menu"

or:

pathname.startsWith("/persona-menu/")

Must match:

- /persona-menu
- /persona-menu/
- /persona-menu/persona-create
- /persona-menu/persona-create/drafts
- /persona-menu/_next/**

Must not match:

- /persona-menu-other
- /persona-menu2
- /personas-menu

## 6. Raw path preservation

The parsed pathname is used only to choose the upstream.

The forwarded request target preserves the original request URL,
including:

- /persona-menu prefix
- path segments
- query string

The gateway must not strip /persona-menu.

Example:

incoming:
  /persona-menu/persona-create/drafts?resumeDraft=1

forwarded to PersonaOS:
  /persona-menu/persona-create/drafts?resumeDraft=1

PersonaOS itself owns basePath /persona-menu.

## 7. Routing state

Exact configuration key:

PERSONAOS_ROUTE_TARGET

Allowed values:

- portal
- persona

Missing or invalid values fail configuration validation.

When target is portal:

- Persona namespace routes to Portal.
- this is the migration-compatible pre-switch or rollback state.

When target is persona:

- Persona namespace routes to PersonaOS.
- PersonaOS failure must not trigger automatic Portal fallback.

## 8. Required environment configuration

Required configuration:

- CIVILIZATION_WEB_GATEWAY_HOST
- CIVILIZATION_WEB_GATEWAY_PORT
- CIVILIZATION_PORTAL_UPSTREAM_ORIGIN
- PERSONAOS_WEB_UPSTREAM_ORIGIN
- PERSONAOS_ROUTE_TARGET

Rules:

- production upstream origins are not source literals
- malformed origins fail startup validation
- unsupported route target fails startup validation
- secrets are not stored in source
- routing config contains no identity mapping

## 9. Request forwarding

The gateway preserves where present:

- HTTP method
- path
- query string
- request body
- cookies
- authorization header
- content type
- accepted content types
- locale-related request context
- CivilizationOS authentication/session request context

Request bodies should be streamed.

The gateway must not create or translate application identities.

## 10. Header boundary

Normal end-to-end headers are forwarded.

Hop-by-hop transport headers are handled at the proxy boundary and
must not be blindly copied.

Examples:

- connection
- keep-alive
- proxy-authenticate
- proxy-authorization
- te
- trailer
- transfer-encoding
- upgrade

Forwarded host, protocol, or address metadata may be supplied when
needed by the deployment environment.

Such metadata is not an authentication truth source.

## 11. Response forwarding

The gateway forwards:

- upstream status
- end-to-end response headers
- response body

Response bodies should be streamed.

The gateway does not rewrite Persona HTML into Portal HTML.

## 12. Authentication boundary

CivilizationOS remains authentication owner.

The gateway does not implement:

- login
- logout
- token issuance
- token refresh
- session ownership
- authorization policy
- identity translation

## 13. Portal boundary

Portal remains responsible for:

- launcher UI
- OS entry navigation
- locale handoff initiation
- CivilizationOS login handoff initiation

Portal is not the final Persona deployment router owner.

Portal-local next.config rewrites are not the canonical production
solution.

## 14. CommonOS boundary

CommonOS and CommonUIRuntime remain shared application foundation.

They do not become a network deployment router.

No CommonUIRuntime source is modified by this contract.

## 15. Failure contract

If a selected upstream cannot be reached before a valid response is
established, the initial gateway returns HTTP 502.

When:

PERSONAOS_ROUTE_TARGET=persona

PersonaOS transport failure must not automatically route that
request to Portal Persona pages.

Automatic application-owner fallback is prohibited.

## 16. Health behavior

R4 introduces no health-driven automatic failover.

There is:

- no required upstream polling
- no health-based Portal fallback
- no automatic mutation of PERSONAOS_ROUTE_TARGET

## 17. Explicit rollback

Before Portal Persona routes are removed, explicit rollback is:

PERSONAOS_ROUTE_TARGET=portal

followed by the deployment platform's normal restart or redeploy.

Rollback is an explicit operator action, not automatic failover.

## 18. Local isolated validation topology

Reference loopback topology:

Gateway:
  127.0.0.1:18080

Portal:
  127.0.0.1:18081

PersonaOS:
  127.0.0.1:18082

These ports are validation defaults only and are not production
port assignments.

The R4 isolated proof must bind loopback only.

## 19. Isolated routing proof

The validation must prove at minimum:

1. /persona-menu selects PersonaOS when target=persona.
2. /persona-menu/persona-create selects PersonaOS.
3. image-upload route selects PersonaOS.
4. AI-generate route selects PersonaOS.
5. parts-select route selects PersonaOS.
6. drafts route selects PersonaOS.
7. /persona-menu/_next/** selects PersonaOS.
8. /persona-menu-other selects Portal.
9. a normal Portal path selects Portal.
10. query strings arrive unchanged.
11. cookie headers arrive at selected upstream.
12. authorization headers arrive at selected upstream.
13. request bodies arrive at selected upstream.
14. upstream response status is preserved.
15. upstream response body is preserved.
16. target=portal sends Persona namespace to Portal.
17. target=persona with failed Persona upstream returns 502.
18. failed Persona upstream does not issue a Portal fallback.
19. invalid PERSONAOS_ROUTE_TARGET fails closed.

## 20. R4_R3 exact implementation scope

Initial implementation is limited to exactly four files:

1. 00.civilization-deployment/civilization-web-gateway/package.json
2. 00.civilization-deployment/civilization-web-gateway/server.mjs
3. 00.civilization-deployment/civilization-web-gateway/README.md
4. 00.civilization-deployment/civilization-web-gateway/tests/gateway-contract.test.mjs

No Portal source file is in the initial implementation scope.

No PersonaOS source file is in the initial implementation scope.

No CommonOS source file is in the initial implementation scope.

No CivilizationOS source file is in the initial implementation scope.

## 21. Package contract

The package provides gateway-local runtime and test scripts only.

Initial implementation has no third-party runtime dependency.

A package lock is not required because no third-party dependency
installation is required.

Adding a dependency or lock file requires separate scope review.

## 22. Implementation acceptance gates

Before traffic-switch consideration:

- exact four-file scope preserved
- syntax validation passes
- Node test suite passes
- isolated upstreams respond
- path predicate passes
- raw request URL preservation passes
- header and body forwarding pass
- target=portal passes
- target=persona passes
- failed Persona upstream returns 502
- no silent Portal fallback occurs
- public traffic remains unchanged

## 23. Traffic-switch gate

Gateway implementation and isolated proof do not authorize public
traffic switching.

A separate explicit traffic-switch GO is required.

Before that GO:

- existing public routing remains unchanged
- transitional Portal Persona routes remain
- PersonaOS remains additive
- production routing configuration is unchanged

## 24. Portal route removal gate

Portal Persona route deletion occurs only after traffic-switch proof.

The six transitional routes remain until:

- PersonaOS routing is live
- same-origin proof passes
- auth and locale behavior pass
- rollback evidence exists
- no required dependency remains on Portal Persona pages
- separate removal GO is given

## 25. Non-goals

This design does not:

- implement the gateway
- start a server
- bind a port
- change DNS
- change hosting
- change Portal Next.js config
- change PersonaOS Next.js config
- change CivilizationOS auth
- change CommonOS
- connect to a database
- perform an API write
- switch public traffic
- delete Portal routes
- stage
- commit
- push
