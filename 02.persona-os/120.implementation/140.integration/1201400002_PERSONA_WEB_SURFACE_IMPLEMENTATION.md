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
