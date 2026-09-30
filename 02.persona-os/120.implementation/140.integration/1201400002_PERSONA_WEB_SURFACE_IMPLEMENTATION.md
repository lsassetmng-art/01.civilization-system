# ============================================================
# PERSONA WEB SURFACE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: integration
system: persona-os
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the implementation boundary for the
PersonaOS-owned Web Surface.

The Web Surface moves Persona UI ownership out of the
Civilization Portal application while preserving the existing
public Persona URL namespace.

# ============================================================
# 2. IMPLEMENTATION ROOT
# ============================================================

canonical_implementation_root:
02.persona-os/persona-os-web

framework:
Next.js App Router

language:
TypeScript + React

constraint:
The PersonaOS Web application must remain source-isolated from
the Civilization Portal application.

Portal filesystem imports are prohibited.

Portal runtime imports are prohibited.

# ============================================================
# 3. PUBLIC URL CONTRACT
# ============================================================

public_namespace:
/persona-menu

next_base_path:
/persona-menu

internal_application_root:
/

existing_public_url_policy:
preserve /persona-menu and /persona-menu/** during migration

public_url_owner_after_migration:
PersonaOS

# ============================================================
# 4. OWNERSHIP BOUNDARY
# ============================================================

PersonaOS owns:
- Persona home
- Persona create surfaces
- Persona view surfaces
- Persona change surfaces
- Persona delete surfaces
- PersonaBuilder-facing Persona creation/editing surfaces
- Persona Web Surface implementation

Civilization Portal owns:
- Civilization public portal entry
- Persona launcher / entry navigation only after migration

CivilizationOS owns:
- authentication
- login flow
- authenticated return handling

PersonaBuilder remains:
- governed draft and composition surface
- non-authoritative for final Persona canonical truth

PersonaOS remains:
- canonical Persona truth owner

# ============================================================
# 5. INITIAL PUBLIC TOPOLOGY
# ============================================================

initial_public_topology:
same public origin path mount

required_public_path:
/persona-menu/**

separate_origin_initial_release:
NO

deployment_path_router:
UNRESOLVED

public_traffic_switch:
PROHIBITED until the deployment path-routing mechanism is
selected, implemented, and validated.

The existence of next_base_path does not prove that the external
deployment router exists.

# ============================================================
# 6. NEXT.JS SOURCE POLICY
# ============================================================

tracked_source:
- package.json
- tsconfig.json
- next.config.mjs
- app/layout.tsx
- app/page.tsx
- app/globals.css
- .gitignore

generated_not_canonical_source:
- next-env.d.ts
- .next/
- node_modules/
- *.tsbuildinfo

tsconfig_policy:
- jsx = react-jsx
- include .next/types/**/*.ts
- include .next/dev/types/**/*.ts

next_env_policy:
next-env.d.ts is generated and managed by Next.js and must not be
treated as hand-maintained PersonaOS canonical source.

# ============================================================
# 7. BUILD VALIDATION POLICY
# ============================================================

package_build_script:
next build

Termux / Android arm64 validation:
next build --webpack

reason:
Next.js 16.2.3 Turbopack production build requires native
bindings unavailable on the current Android arm64 Termux
environment. WebAssembly bindings are sufficient for the
Webpack validation path.

constraint:
The Termux --webpack validation requirement is a local
validation constraint only. It does not select or freeze the
production deployment bundler.

# ============================================================
# 8. INITIAL SHELL BOUNDARY
# ============================================================

The initial PersonaOS Web Surface shell must not yet:
- migrate Persona business flows
- connect to PersonaOS database state
- perform API mutations
- integrate authentication logic
- read the visual parts catalog
- switch public traffic away from the current Portal route owner

The initial shell exists to establish:
- PersonaOS code ownership
- application boundary
- public path contract
- buildability
- future migration target

# ============================================================
# 9. VISUAL CATALOG BOUNDARY
# ============================================================

Persona visual catalog owner:
PersonaOS visual domain

Portal direct catalog read:
NO

Portal filesystem import from PersonaOS:
NO

# ============================================================
# 10. MIGRATION SAFETY
# ============================================================

Migration must be additive until the PersonaOS-owned route has
passed acceptance.

Existing Portal Persona routes must not be deleted solely because
the PersonaOS Web Surface shell exists.

Public traffic switching requires a separate GO gate after
deployment path routing is proven.

## R3 route migration exact implementation contract

R3 migrates the committed Portal Persona route implementation into
the PersonaOS-owned Web Surface while preserving the public
`/persona-menu/**` namespace.

### Migration source baseline

- development source commit: `0dcd80cbd6650e7fb8c062abf167df20ab5bfa95`
- source mode: committed Git tree snapshot
- uncommitted Portal worktree content is not migration input

### Route mapping

| Public URL | PersonaOS App Router path |
|---|---|
| `/persona-menu` | `app/page.tsx` |
| `/persona-menu/persona-create` | `app/persona-create/page.tsx` |
| `/persona-menu/persona-create/image-upload` | `app/persona-create/image-upload/page.tsx` |
| `/persona-menu/persona-create/ai-generate` | `app/persona-create/ai-generate/page.tsx` |
| `/persona-menu/persona-create/parts-select` | `app/persona-create/parts-select/page.tsx` |
| `/persona-menu/persona-create/drafts` | `app/persona-create/drafts/page.tsx` |

Next.js continues to use `basePath=/persona-menu`.

PersonaOS runtime source must not import implementation files from
the Portal filesystem. Required presentation dependencies become
PersonaOS-owned implementation files.

Portal remains the launcher boundary and CivilizationOS remains
the authentication owner.

### Draft continuity
- preserve browser storage identifier `portal.persona.create.aiGenerateDraft.v1`
- preserve browser storage identifier `portal.persona.create.imageUploadDraft.v1`

### Switch boundary

This migration implementation does not authorize Portal route
deletion or public traffic switching. SWITCH/REMOVE require a
separate post-build acceptance gate.

## R4 deployment path router exact design

status: canonical
system: persona-os
layer: web-surface
domain: deployment-routing
document_type: deployment-path-router-exact-design

### Purpose

R4 fixes the logical same-origin routing contract required before
public `/persona-menu/**` traffic can move from the transitional
Portal implementation to the PersonaOS-owned Web Surface.

This section does not select or create the physical deployment
adapter. Physical owner and physical repository path remain gated
by R4_R2.

### Baseline

- PersonaOS Web owns the migrated Persona UI.
- PersonaOS Web root is `02.persona-os/persona-os-web`.
- PersonaOS Web uses Next.js App Router.
- PersonaOS Web `basePath` is `/persona-menu`.
- the public Persona namespace remains `/persona-menu/**`.
- Portal remains the launcher / entry surface.
- CivilizationOS remains the authentication owner.
- Portal still contains the transitional six Persona routes.
- PersonaOS contains the migrated six Persona routes.
- public traffic has not yet switched.
- Portal Persona routes must not be deleted before switch proof.

### Public routing contract

The public request namespace is:

- `/persona-menu`
- `/persona-menu/**`

All requests in that namespace MUST be routed to the PersonaOS Web
runtime after the explicit traffic-switch gate is passed.

All public requests outside that namespace MUST continue to use
their existing upstream ownership unless a separate canonical
migration changes them.

### Same-origin requirement

The initial PersonaOS Web release MUST preserve the existing public
origin.

A browser-visible redirect from `/persona-menu/**` to a separate
PersonaOS origin is not the R4 target architecture.

A separate internal upstream is allowed only when the deployment
router keeps the browser-visible public origin unchanged.

### Router location and logical ownership

The canonical R4 router is a deployment/runtime boundary outside
the Portal application route tree and outside the PersonaOS
application route tree.

Portal Next.js is not the final owner of PersonaOS delivery.

PersonaOS Next.js is the owner of the Persona application and its
base path, but it is not required to own the shared public-origin
dispatch layer.

The physical deployment-router owner and repository path are:

- physical_router_owner: `UNRESOLVED_R4_R2`
- physical_router_path: `UNRESOLVED_R4_R2`

R4_R2 MUST resolve those fields before implementation mutation is
authorized.

### Exact path matching

PersonaOS upstream routing MUST match:

- pathname exactly `/persona-menu`
- pathname beginning `/persona-menu/`

A prefix lookalike such as `/persona-menu-other` MUST NOT match.

### Path preservation

The router MUST forward the complete `/persona-menu` path prefix to
PersonaOS unchanged.

Examples:

- `/persona-menu`
  -> PersonaOS upstream `/persona-menu`
- `/persona-menu/persona-create`
  -> PersonaOS upstream `/persona-menu/persona-create`
- `/persona-menu/persona-create/drafts?resume=1`
  -> PersonaOS upstream `/persona-menu/persona-create/drafts?resume=1`

The deployment router MUST NOT strip `/persona-menu`.

Reason:

PersonaOS Next.js itself owns `basePath: "/persona-menu"`.

Stripping the prefix would violate the PersonaOS runtime contract.

### Framework asset routing

The prefix rule MUST include PersonaOS framework assets and other
base-path-local resources.

Therefore requests including:

- `/persona-menu/_next/**`

MUST route to the same PersonaOS upstream.

No independent Portal ownership may intercept PersonaOS
base-path-local framework assets.

### Request preservation

Routing to PersonaOS MUST preserve normal HTTP request semantics,
including where present:

- HTTP method
- query string
- request body
- cookies
- authorization headers
- locale / language handoff context
- CivilizationOS authentication/session context
- ordinary request headers required by the runtime

The deployment router MUST NOT invent new authentication identity
fields or translate CivilizationOS identity semantics.

### Authentication boundary

CivilizationOS remains the authentication owner.

R4 routing does not authorize:

- a PersonaOS-specific login system
- a Portal-specific Persona authentication system
- duplicated token ownership
- new session identity mapping

The router transports the existing request context only.

### Portal responsibility after switch

Portal remains responsible for:

- launcher presentation
- entry navigation
- locale handoff
- CivilizationOS login handoff initiation

Portal MUST NOT remain the runtime implementation owner of
`/persona-menu/**` after the migration is accepted.

### Portal Next.js rewrite rule

A Portal-local `next.config.*` rewrite may be useful for an isolated
experiment, but it MUST NOT become the final canonical owner of
PersonaOS public delivery.

The final routing boundary must remain separable from Portal UI
implementation ownership.

### Failure behavior

After the traffic switch, if the PersonaOS upstream is unavailable,
the router MUST fail explicitly with an upstream/service failure
response appropriate to the deployment platform.

It MUST NOT silently fall back to the old Portal Persona
implementation.

Silent fallback is prohibited because it would make one public URL
resolve to different application owners depending on runtime
health.

### Dual implementation period

During R4, both implementations may physically remain present:

- Portal transitional Persona routes
- PersonaOS migrated Persona routes

This is permitted only as a migration state.

Before traffic switch:

- Portal may still serve the current public Persona traffic.

After traffic switch proof:

- PersonaOS MUST be the runtime owner of `/persona-menu/**`.
- Portal copies remain rollback material only until the removal
  gate.

Portal route deletion is a later gated operation.

### Required routing proof

Before public traffic switch, an isolated routing proof MUST show
all of the following:

- `/persona-menu` reaches PersonaOS
- `/persona-menu/persona-create` reaches PersonaOS
- `/persona-menu/persona-create/image-upload` reaches PersonaOS
- `/persona-menu/persona-create/ai-generate` reaches PersonaOS
- `/persona-menu/persona-create/parts-select` reaches PersonaOS
- `/persona-menu/persona-create/drafts` reaches PersonaOS
- `/persona-menu/_next/**` assets resolve from PersonaOS
- query strings survive routing
- cookies survive routing
- CivilizationOS auth handoff remains valid
- locale / language behavior remains valid
- non-Persona Portal routes remain on their previous owner
- `/persona-menu-other` does not enter the PersonaOS prefix route
- PersonaOS upstream failure does not fall back to Portal Persona

### Traffic-switch gate

Public traffic switch remains forbidden until:

1. R4_R2 resolves the physical router owner and implementation path.
2. the router implementation receives a separate explicit GO.
3. isolated router validation passes.
4. PersonaOS production build passes for the selected deployment
   topology.
5. the six migrated public routes pass through the router.
6. PersonaOS base-path assets pass through the router.
7. auth and locale handoff are verified.
8. non-Persona Portal routing is verified unchanged.
9. failure behavior is verified without Portal Persona fallback.
10. an explicit traffic-switch GO is given.

### Portal route removal gate

Deleting the six transitional Portal Persona routes is NOT part of
R4_R1.

Removal requires all of the following:

- public routing has switched to PersonaOS
- switch acceptance has passed
- rollback evidence exists
- no runtime dependency still requires the Portal Persona pages
- separate removal GO is given

### Non-goals

R4_R1 does not:

- implement a proxy
- select a port number
- select a hostname
- start PersonaOS
- start Portal
- open a network listener
- change DNS
- change hosting configuration
- change public traffic
- delete Portal Persona routes
- change CivilizationOS authentication ownership
- change Persona canonical truth ownership
- change database state
- add API writes
- stage, commit, or push repository changes

### R4_R2 decision requirement

R4_R2 MUST determine the exact physical deployment adapter.

The decision must identify:

- physical owner
- repository path
- runtime technology
- Portal upstream identity
- PersonaOS upstream identity
- local isolated-test topology
- production deployment topology
- configuration source for upstream addresses
- failure behavior
- health / readiness dependency, if any
- rollback mechanism
- exact files that would be mutated

No source mutation is authorized until that decision is complete.

## R4_R2 physical deployment adapter resolution

status: canonical
resolution_of: R4 deployment path router exact design

The R4_R1 unresolved physical router fields are resolved by the
shared Civilization deployment canonical.

Resolved values:

- physical_router_owner: CIVILIZATION_WEB_DEPLOYMENT
- physical_router_design_root: 00.civilization-deployment
- physical_router_design_contract: 00.civilization-deployment/010_CIVILIZATION_WEB_GATEWAY_EXACT_DESIGN.md
- physical_router_implementation_root: 00.civilization-deployment/civilization-web-gateway
- runtime_technology: Node.js ESM / Node standard HTTP transport
- final_portal_router_owner: NO
- commonos_router_owner: NO
- civilizationos_auth_owner: PRESERVED

The R4_R1 UNRESOLVED_R4_R2 lines remain historical canonical
record and are not rewritten in place.

This R4_R2 section supersedes their unresolved status.

### Persona routing state

Gateway routing key:

PERSONAOS_ROUTE_TARGET

Allowed values:

- portal
- persona

The public namespace remains:

- /persona-menu
- /persona-menu/**

PersonaOS routing preserves the complete /persona-menu prefix.

### Failure and rollback

When routing target is persona, PersonaOS upstream transport failure
fails explicitly and must not silently fall back to Portal.

Before Portal Persona route removal, explicit migration rollback may
use:

PERSONAOS_ROUTE_TARGET=portal

Automatic fallback is prohibited.

### R4_R3 exact implementation scope

R4_R3 is limited to:

- 00.civilization-deployment/civilization-web-gateway/package.json
- 00.civilization-deployment/civilization-web-gateway/server.mjs
- 00.civilization-deployment/civilization-web-gateway/README.md
- 00.civilization-deployment/civilization-web-gateway/tests/gateway-contract.test.mjs

R4_R3 does not modify:

- Portal source
- PersonaOS source
- CivilizationOS source
- CommonOS source
- database state
- public routing configuration

A separate explicit GO is required before R4_R3 implementation
mutation.
