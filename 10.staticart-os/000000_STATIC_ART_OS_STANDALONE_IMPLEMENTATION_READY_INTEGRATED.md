# ============================================================
# STATIC ART OS STANDALONE IMPLEMENTATION READY INTEGRATED
# ============================================================

status: integrated-canonical
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

purpose:
- Integrated review document for StaticArtOS standalone implementation-prep assets
- Combines roadmap, checks, skeletons, and operation files into one reading surface
- Does not replace canonical source files

root: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os

included_file_count: 267

file_order_source: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/046.final_integrated_rebuild/000001_STATIC_ART_OS_STANDALONE_FILE_ORDER.txt


<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000.index/000_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000.index/000_OVERVIEW.md

# ============================================================
# INDEX OVERVIEW
# ============================================================

status: active
system: StaticArtOS
folder: 000.index
owner: Boss
prepared_by: Zero

summary:


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000.index/000_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000.index/000_STATIC_ART_OS_DOCUMENT_BUNDLE_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000.index/000_STATIC_ART_OS_DOCUMENT_BUNDLE_INDEX.md

# ============================================================
# STATIC ART OS DOCUMENT BUNDLE INDEX
# ============================================================

status: implementation-ready
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
This index is the canonical entry point for the implementation-ready
document bundle of StaticArtOS.

document_set:
  - 010.overview/010_STATIC_ART_OS_IMPLEMENTATION_READY_OVERVIEW.md
  - 060.reference-integration/060130_STATIC_ART_OS_CX22073JW_REFERENCE_INTEGRATION_EXACTNESS.md
  - 120.exactness/120110_STATIC_ART_OS_DB_SCHEMA_EXACTNESS.md
  - 120.exactness/120120_STATIC_ART_OS_API_EXACTNESS.md
  - 120.exactness/120130_STATIC_ART_OS_SCREEN_STATEFLOW_EXACTNESS.md
  - 120.exactness/120140_STATIC_ART_OS_PERMISSION_POLICY_EXACTNESS.md
  - 130.development/130110_STATIC_ART_OS_ACCEPTANCE_AND_TEST_EXACTNESS.md
  - 999.summary/999900_STATIC_ART_OS_IMPLEMENTATION_READY_SUMMARY.md

bundle_objective:
  - Move StaticArtOS from integrated detailed design into implementation-ready design.
  - Freeze database, API, UI stateflow, permission, policy, reference integration, and acceptance criteria.
  - Make implementation start possible without major interpretation gaps.

canonical_reading_order:
  - overview
  - db exactness
  - api exactness
  - screen/stateflow exactness
  - permission/policy exactness
  - cx22073jw integration exactness
  - acceptance/test exactness
  - summary

implementation_ready_definition:
  - Database structure fixed
  - API contract fixed
  - Screen/stateflow fixed
  - Permission/policy fixed
  - CX22073JW boundary fixed
  - Acceptance criteria fixed

notes:
  - Projection surfaces are derived and must not become canonical write sources.
  - Exhibition Builder reads projection only.
  - Favorites, progress, and annotations must survive entitlement loss unless explicitly deleted by user.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000.index/000_STATIC_ART_OS_DOCUMENT_BUNDLE_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000_STATIC_ART_OS_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000_STATIC_ART_OS_INDEX.md

# ============================================================
# STATIC ART OS INDEX
# ============================================================

status: canonical-root-index
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Root Files

- 000_STATIC_ART_OS_OVERVIEW.md
- 000_STATIC_ART_OS_INDEX.md
- 00_STATIC_ART_OS_INTEGRATED.md

## 2. Root Folders

- 010.constitution
- 020.architecture
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development

## 3. Design Completion Policy

StaticArtOS design is considered complete only when the following are fixed:

- system boundary
- canonical ownership rules
- asset and entitlement model
- flow exactness
- integration exactness
- API request / response exactness
- schema exactness
- role permission exactness
- Exhibition Builder projection contract
- implementation-ready output set

## 4. Planned Document Groups

### 010.constitution
- definition and principles
- scope boundaries
- canonical ownership rules
- entitlement and subscription principles

### 020.architecture
- domain decomposition
- module boundaries
- source-of-truth rules
- projection and entitlement resolution

### 040.runtime
- runtime behavior
- entitlement resolution runtime
- reader / viewer runtime
- projection refresh runtime

### 050.flow
- upload flow
- review flow
- publish flow
- purchase flow
- subscription flow
- library flow
- reader / viewer flow
- exhibition projection flow

### 060.integration
- marketplace commercial integration
- entitlement reflection integration
- Exhibition Builder integration
- common component integration points

### 070.operations
- moderation
- audit
- rollback
- support handling
- release operations

### 080.policy
- rights policy
- subscription policy
- regional policy
- age policy
- delist and restriction policy

### 100.security
- access control
- entitlement guardrails
- secure asset access
- audit security policy

### 110.infrastructure
- storage and delivery assumptions
- indexing
- cache policy
- projection refresh infrastructure

### 120.implementation
- request / response exactness
- stateflow exactness
- permissions exactness
- validation exactness
- implementation contracts

### 130.development
- development rules
- migration policy
- testing policy
- release policy


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000_STATIC_ART_OS_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000_STATIC_ART_OS_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000_STATIC_ART_OS_OVERVIEW.md

# ============================================================
# STATIC ART OS OVERVIEW
# ============================================================

status: canonical-root-overview
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English
design_phase: implementation-ready-design

## 1. Definition

StaticArtOS is the independent operating system that canonically manages static visual works and publishing works, enables marketplace distribution and subscription access, supports library and reader/viewer consumption, and supplies eligible assets to Exhibition Builder.

## 2. Positioning

StaticArtOS is responsible for:

- canonical asset management for static visual works and publishing works
- creator-side upload, metadata, rights, and release management
- marketplace discovery and product listing
- purchase and subscription entitlement reflection
- owned library and shelf experience
- Kindle-like reading continuity for publishing assets
- viewer continuity for visual assets
- projection of eligible assets to Exhibition Builder

StaticArtOS is not responsible for:

- exhibition placement canonical state
- exhibition route or venue design
- live streaming
- video streaming platform behavior
- city or building design

## 3. Primary Goal

To unify the full lifecycle of static works and publishing works:

- create
- upload
- register
- review
- publish
- sell
- subscribe
- own
- read / view
- project to downstream eligible systems

## 4. Core Content Domains

### Visual Works
- artwork
- illustration
- poster
- photo_art
- static_visual

### Publishing Works
- book
- ebook
- booklet
- catalog
- collection_book
- material_booklet

## 5. Product Identity

StaticArtOS is simultaneously:

- a canonical asset OS
- a static art marketplace
- a Kindle-like reader system
- a visual viewer system
- a library / shelf system
- a rights and entitlement control plane
- an Exhibition Builder projection source

## 6. Cross-Cutting Requirements

- multilingual required
- multicurrency required
- multi-platform required
- subscription design required
- implementation-ready design required
- schema fixed as `staticart`

## 7. Minimum Platform Scope

### iPhone / Android
- browsing
- purchase entry
- sample access
- reader / viewer access
- library access
- favorites and bookmarks
- light metadata draft editing

### PC / Tablet
- full creator management
- bulk metadata editing
- review and governance
- release control
- analytics and operational screens

## 8. Strategic Differentiation

StaticArtOS differs from ordinary asset systems because it unifies:

- static visual assets and publishing assets in one OS
- marketplace and owned library behavior in one OS
- subscription and permanent ownership in one entitlement model
- creator rights, sales, and exhibition eligibility in one control plane
- downstream exhibition projection without moving canonical ownership out of StaticArtOS


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000_STATIC_ART_OS_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000_STATIC_ART_OS_ROADMAP.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000_STATIC_ART_OS_ROADMAP.md

# ============================================================
# STATIC ART OS ROADMAP
# ============================================================

status: active
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

objective:
Provide the canonical root roadmap for StaticArtOS standalone work
inside this chat scope.

scope_in_this_chat:
- StaticArtOS standalone implementation-prep
- Persona-side DB usage with PERSONA_DATABASE_URL
- No CX22073JW integration in this chat
- Exhibition Builder support only through local derived projection

phase_roadmap:
  phase_1:
    name: DB foundation
    status: prepared
    includes:
      - schema
      - enums
      - tables
      - indexes
      - apply / verify workflow

  phase_2:
    name: creator write backbone
    status: prepared
    includes:
      - asset create
      - detail read
      - localization
      - rights
      - sales
      - subscription
      - validator / guard / repository binding

  phase_3:
    name: governance and publish backbone
    status: prepared
    includes:
      - self check
      - review request
      - review decision
      - publish marketplace
      - publish library only
      - delist / restrict / archive
      - audit
      - projection enqueue

  phase_4:
    name: entitlement and access
    status: prepared
    includes:
      - entitlement resolution
      - access session
      - purchase reflection
      - subscription reflection
      - block handling

  phase_5:
    name: library and continuity
    status: prepared
    includes:
      - my library
      - continue reading
      - continue viewing
      - reader progress
      - viewer progress
      - favorite
      - annotation

  phase_6:
    name: admin and governance UI
    status: prepared
    includes:
      - review queue
      - review detail
      - audit detail
      - support_readonly behavior

  phase_7:
    name: acceptance and regression
    status: prepared
    includes:
      - lifecycle acceptance
      - governance acceptance
      - entitlement acceptance
      - library acceptance
      - policy acceptance
      - audit and permission acceptance

  phase_8:
    name: external integration
    status: deferred
    includes:
      - external knowledge/reference integration handled outside this chat

important_rules:
- PERSONA_DATABASE_URL is the Persona-side DB target
- projection remains derived
- restricted is stronger than delisted
- favorites survive entitlement loss
- subscription access never upgrades to permanent ownership

current_judgement:
- StaticArtOS standalone structure is organized and reviewable.
- External integration is intentionally out of scope in this chat.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000_STATIC_ART_OS_ROADMAP.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/00_STATIC_ART_OS_INTEGRATED.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/00_STATIC_ART_OS_INTEGRATED.md

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000_STATIC_ART_OS_INDEX.md -->
# ============================================================
# STATIC ART OS INDEX
# ============================================================

status: canonical-root-index
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Root Files

- 000_STATIC_ART_OS_OVERVIEW.md
- 000_STATIC_ART_OS_INDEX.md
- 00_STATIC_ART_OS_INTEGRATED.md

## 2. Root Folders

- 010.constitution
- 020.architecture
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development

## 3. Design Completion Policy

StaticArtOS design is considered complete only when the following are fixed:

- system boundary
- canonical ownership rules
- asset and entitlement model
- flow exactness
- integration exactness
- API request / response exactness
- schema exactness
- role permission exactness
- Exhibition Builder projection contract
- implementation-ready output set

## 4. Planned Document Groups

### 010.constitution
- definition and principles
- scope boundaries
- canonical ownership rules
- entitlement and subscription principles

### 020.architecture
- domain decomposition
- module boundaries
- source-of-truth rules
- projection and entitlement resolution

### 040.runtime
- runtime behavior
- entitlement resolution runtime
- reader / viewer runtime
- projection refresh runtime

### 050.flow
- upload flow
- review flow
- publish flow
- purchase flow
- subscription flow
- library flow
- reader / viewer flow
- exhibition projection flow

### 060.integration
- marketplace commercial integration
- entitlement reflection integration
- Exhibition Builder integration
- common component integration points

### 070.operations
- moderation
- audit
- rollback
- support handling
- release operations

### 080.policy
- rights policy
- subscription policy
- regional policy
- age policy
- delist and restriction policy

### 100.security
- access control
- entitlement guardrails
- secure asset access
- audit security policy

### 110.infrastructure
- storage and delivery assumptions
- indexing
- cache policy
- projection refresh infrastructure

### 120.implementation
- request / response exactness
- stateflow exactness
- permissions exactness
- validation exactness
- implementation contracts

### 130.development
- development rules
- migration policy
- testing policy
- release policy

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000_STATIC_ART_OS_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000_STATIC_ART_OS_OVERVIEW.md -->
# ============================================================
# STATIC ART OS OVERVIEW
# ============================================================

status: canonical-root-overview
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English
design_phase: implementation-ready-design

## 1. Definition

StaticArtOS is the independent operating system that canonically manages static visual works and publishing works, enables marketplace distribution and subscription access, supports library and reader/viewer consumption, and supplies eligible assets to Exhibition Builder.

## 2. Positioning

StaticArtOS is responsible for:

- canonical asset management for static visual works and publishing works
- creator-side upload, metadata, rights, and release management
- marketplace discovery and product listing
- purchase and subscription entitlement reflection
- owned library and shelf experience
- Kindle-like reading continuity for publishing assets
- viewer continuity for visual assets
- projection of eligible assets to Exhibition Builder

StaticArtOS is not responsible for:

- exhibition placement canonical state
- exhibition route or venue design
- live streaming
- video streaming platform behavior
- city or building design

## 3. Primary Goal

To unify the full lifecycle of static works and publishing works:

- create
- upload
- register
- review
- publish
- sell
- subscribe
- own
- read / view
- project to downstream eligible systems

## 4. Core Content Domains

### Visual Works
- artwork
- illustration
- poster
- photo_art
- static_visual

### Publishing Works
- book
- ebook
- booklet
- catalog
- collection_book
- material_booklet

## 5. Product Identity

StaticArtOS is simultaneously:

- a canonical asset OS
- a static art marketplace
- a Kindle-like reader system
- a visual viewer system
- a library / shelf system
- a rights and entitlement control plane
- an Exhibition Builder projection source

## 6. Cross-Cutting Requirements

- multilingual required
- multicurrency required
- multi-platform required
- subscription design required
- implementation-ready design required
- schema fixed as `staticart`

## 7. Minimum Platform Scope

### iPhone / Android
- browsing
- purchase entry
- sample access
- reader / viewer access
- library access
- favorites and bookmarks
- light metadata draft editing

### PC / Tablet
- full creator management
- bulk metadata editing
- review and governance
- release control
- analytics and operational screens

## 8. Strategic Differentiation

StaticArtOS differs from ordinary asset systems because it unifies:

- static visual assets and publishing assets in one OS
- marketplace and owned library behavior in one OS
- subscription and permanent ownership in one entitlement model
- creator rights, sales, and exhibition eligibility in one control plane
- downstream exhibition projection without moving canonical ownership out of StaticArtOS

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/000_STATIC_ART_OS_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.constitution/000_STATIC_ART_OS_CONSTITUTION_INDEX.md -->
# ============================================================
# STATIC ART OS CONSTITUTION INDEX
# ============================================================

status: canonical-index
layer: constitution
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_OS_CONSTITUTION_INDEX.md
- 000_STATIC_ART_OS_CONSTITUTION_OVERVIEW.md
- 00_STATIC_ART_OS_CONSTITUTION_INTEGRATED.md

## Scope

- constitutional purpose
- constitutional principles
- non-goals
- commercial rule
- reader and viewer rule
- subscription rule
- projection rule

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.constitution/000_STATIC_ART_OS_CONSTITUTION_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.constitution/000_STATIC_ART_OS_CONSTITUTION_OVERVIEW.md -->
# ============================================================
# STATIC ART OS CONSTITUTION OVERVIEW
# ============================================================

status: canonical-overview
layer: constitution
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Constitutional Purpose

StaticArtOS exists to canonically manage static visual and publishing assets, make them commercially usable, make them readable or viewable by entitled users, and project them to Exhibition Builder when eligible.

## 2. Constitutional Principles

### Principle 1: Canonical Asset Authority
Asset identity, metadata, rights, and version history must remain canonical inside StaticArtOS.

### Principle 2: Entitlement-Derived Visibility
Library visibility, read/view access, and downstream usability must be derived from entitlement state, not from ad hoc UI flags.

### Principle 3: Separation of Ownership and Subscription
Permanent ownership and subscription access are different entitlement types and must never be merged semantically.

### Principle 4: Rights Before Exposure
Marketplace exposure, library access, and exhibition projection must all be blocked when rights policy says so.

### Principle 5: Publishing and Visual Unity
StaticArtOS must support both publishing assets and static visual assets inside one unified OS, while allowing different consumption modes.

### Principle 6: Downstream Projection Without Canonical Transfer
StaticArtOS may project to downstream systems, but downstream systems must not become canonical owners of StaticArtOS asset master state.

### Principle 7: Cross-Device Continuity
Reading position, viewing continuity, favorites, and bookmarks must survive across supported device classes.

## 3. Constitutional Non-Goals

StaticArtOS does not own:

- exhibition placement canonical state
- venue layout canonical state
- live streaming logic
- video platform logic
- external settlement engines
- city design or building design

## 4. Constitutional Commercial Rule

StaticArtOS may contain the full marketplace experience, but commercial execution may integrate with Business-side systems. StaticArtOS remains the canonical owner of entitlement reflection after a successful commercial event.

## 5. Constitutional Reader Rule

StaticArtOS must provide a Kindle-like reading experience for eligible publishing assets, including continuity and user memory functions such as progress and bookmarks.

## 6. Constitutional Viewer Rule

StaticArtOS must provide an owned or entitled viewing experience for visual works, including continuity, zoom, full-screen, and collection navigation where applicable.

## 7. Constitutional Subscription Rule

The subscription model must behave as access entitlement, not as ownership transfer.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.constitution/000_STATIC_ART_OS_CONSTITUTION_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/020.architecture/000_STATIC_ART_ARCHITECTURE_DOMAIN_BOUNDARY.md -->
# ============================================================
# STATIC ART ARCHITECTURE DOMAIN BOUNDARY
# ============================================================

status: implementation-ready-architecture
layer: architecture
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Asset Master Domain

Responsibilities:
- asset identity
- asset type
- creator / publisher references
- canonical version pointer
- lifecycle state anchor

Must not own:
- user favorites
- reader progress
- marketplace ranking scores

## 2. Metadata Domain

Responsibilities:
- localized title
- localized subtitle
- localized description
- category mapping
- tag mapping
- creator-facing discoverability metadata

Must not own:
- entitlement
- payment result
- projection eligibility final decision

## 3. Rights Domain

Responsibilities:
- copyright ownership
- derivative policy
- commercial use policy
- exhibition policy
- regional restrictions
- age restrictions

Must be consulted before:
- marketplace exposure
- full sample access where restricted
- library open access
- exhibition projection

## 4. Sales Domain

Responsibilities:
- sale type
- price
- sale period
- limited sale flag
- marketplace status

Must not decide:
- permanent ownership on its own
- subscription access on its own

## 5. Subscription Domain

Responsibilities:
- subscription inclusion state
- subscription eligibility window
- creator opt-in state
- settlement group classification

Must not create:
- permanent ownership

## 6. Entitlement Domain

Responsibilities:
- owned permanent access
- subscription access
- expiration
- access blockage by policy overrides

This is the only domain allowed to determine:
- whether user can fully open an asset
- whether asset appears as owned or included
- whether library visibility applies

## 7. Library Projection Domain

Responsibilities:
- My Library visibility
- Continue Reading visibility
- Continue Viewing visibility
- Favorites projection
- Downloaded projection

Derived from:
- entitlement
- asset type
- user continuity signals

## 8. Reader / Viewer Continuity Domain

Responsibilities:
- progress
- last-opened
- bookmarks
- notes
- highlights
- sync version

Must not decide:
- entitlement

## 9. Exhibition Projection Domain

Responsibilities:
- projection payload for Exhibition Builder
- eligible / ineligible resolution output
- reason codes for projection failure

Derived from:
- asset publish state
- rights state
- entitlement policy
- restriction policy
- current version visibility

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/020.architecture/000_STATIC_ART_ARCHITECTURE_DOMAIN_BOUNDARY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/020.architecture/000_STATIC_ART_ARCHITECTURE_INDEX.md -->
# ============================================================
# STATIC ART ARCHITECTURE INDEX
# ============================================================

status: canonical-index
layer: architecture
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_ARCHITECTURE_INDEX.md
- 000_STATIC_ART_ARCHITECTURE_OVERVIEW.md
- 000_STATIC_ART_ARCHITECTURE_DOMAIN_BOUNDARY.md

## Scope

- architecture objective
- core domains
- source-of-truth rules
- dependency directions
- boundary rules

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/020.architecture/000_STATIC_ART_ARCHITECTURE_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/020.architecture/000_STATIC_ART_ARCHITECTURE_OVERVIEW.md -->
# ============================================================
# STATIC ART ARCHITECTURE OVERVIEW
# ============================================================

status: canonical-overview
layer: architecture
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Architecture Objective

The architecture of StaticArtOS must preserve canonical asset ownership while supporting marketplace distribution, subscription access, library projection, reader / viewer continuity, and Exhibition Builder projection.

## 2. Core Domains

- Asset Master Domain
- Metadata and Localization Domain
- Rights Domain
- Sales Domain
- Subscription Domain
- Entitlement Domain
- Library Projection Domain
- Reader / Viewer Continuity Domain
- Review and Release Domain
- Marketplace Discovery Domain
- Exhibition Projection Domain

## 3. Source-of-Truth Rules

### StaticArtOS is canonical for:
- asset identity
- metadata
- preview and sample definition
- rights state
- release state
- marketplace publish state
- subscription eligibility state
- entitlement state
- library projection state
- reader / viewer progress
- exhibition projection state

### StaticArtOS is not canonical for:
- payment settlement engine internals
- external accounting internals
- exhibition placement state

## 4. Domain Dependencies

Asset Master is the root domain.

Metadata, Rights, Sales, and Subscription depend on Asset Master.

Entitlement depends on successful commercial or subscription events.

Library Projection depends on Entitlement plus Rights.

Reader / Viewer Continuity depends on Entitlement plus Asset Type.

Exhibition Projection depends on:
- publish state
- restriction state
- rights state
- entitlement policy
- regional and age policy

## 5. Projection Principle

Projection domains must never become the write authority for asset master data. They are derived and refreshable views.

## 6. Consumption Principle

Consumption surfaces must not directly reason on raw sales or upload state. They must rely on resolved entitlement and policy outputs.

## 7. Subscription Principle

Subscription access must be represented as independent entitlement state and must not mutate permanent ownership records.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/020.architecture/000_STATIC_ART_ARCHITECTURE_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/040.runtime/000_STATIC_ART_RUNTIME_ENTITLEMENT_AND_CONSUMPTION_BEHAVIOR.md -->
# ============================================================
# STATIC ART RUNTIME ENTITLEMENT AND CONSUMPTION BEHAVIOR
# ============================================================

status: implementation-ready-runtime
layer: runtime
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Entitlement Resolution Order

1. asset exists and current version is visible
2. lifecycle state allows exposure
3. regional policy allows exposure
4. age policy allows exposure
5. rights policy allows requested action
6. ownership or subscription entitlement is checked
7. sample entitlement is checked if full entitlement is absent
8. action set is returned

## 2. Open Action Rules

### Sample Open
Allowed when:
- sample assets exist
- sample is published
- region and age policy allow sample exposure

### Full Reader Open
Allowed when:
- asset type is publishing
- entitlement state is owned_permanent or subscription_access or owned_and_subscription_access
- lifecycle state is published
- rights do not block full access

### Full Viewer Open
Allowed when:
- asset type is visual
- entitlement state is owned_permanent or subscription_access or owned_and_subscription_access
- lifecycle state is published
- rights do not block full access

## 3. Library Visibility Rules

### Visible in My Library
True when:
- entitlement state is owned_permanent or subscription_access or owned_and_subscription_access
- blocked flags are false

### Visible in Continue Reading
True when:
- asset type is publishing
- last-opened exists
- user still has a full-open entitlement

### Visible in Continue Viewing
True when:
- asset type is visual
- last-opened exists
- user still has a full-open entitlement

## 4. Subscription Expiry Runtime

When subscription expires:
- subscription_access is removed
- owned_permanent remains if present
- library visibility is recalculated
- progress history may remain stored
- full-open action is removed if no remaining entitlement exists

## 5. Rights Change Runtime

When rights are tightened:
- marketplace exposure may be removed
- library access may be blocked
- exhibition projection may be revoked
- progress and bookmark history remain stored unless deletion is mandated by policy

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/040.runtime/000_STATIC_ART_RUNTIME_ENTITLEMENT_AND_CONSUMPTION_BEHAVIOR.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/040.runtime/000_STATIC_ART_RUNTIME_INDEX.md -->
# ============================================================
# STATIC ART RUNTIME INDEX
# ============================================================

status: canonical-index
layer: runtime
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_RUNTIME_INDEX.md
- 000_STATIC_ART_RUNTIME_OVERVIEW.md
- 000_STATIC_ART_RUNTIME_ENTITLEMENT_AND_CONSUMPTION_BEHAVIOR.md

## Scope

- runtime responsibility
- entitlement resolution runtime
- reader and viewer runtime behavior
- library visibility runtime behavior
- projection refresh runtime behavior

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/040.runtime/000_STATIC_ART_RUNTIME_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/040.runtime/000_STATIC_ART_RUNTIME_OVERVIEW.md -->
# ============================================================
# STATIC ART RUNTIME OVERVIEW
# ============================================================

status: canonical-overview
layer: runtime
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Runtime Objective

StaticArtOS runtime must resolve whether a user can discover, open, read, view, favorite, bookmark, or project an asset based on policy, entitlement, asset type, and current publication status.

## 2. Runtime Inputs

- asset lifecycle state
- rights state
- subscription state
- ownership state
- regional policy
- age policy
- asset type
- platform type
- download availability
- current version visibility

## 3. Runtime Outputs

- marketplace card badges
- product detail actions
- sample-open availability
- full-open availability
- library visibility
- continue reading visibility
- continue viewing visibility
- exhibition projection eligibility
- reason codes for denial

## 4. Runtime Principles

- runtime must resolve from canonical data, not temporary UI assumptions
- runtime must treat ownership and subscription as different entitlement paths
- runtime must block access when policy or rights require blocking
- runtime must preserve allowed continuity data such as progress and bookmarks
- runtime must support platform-aware reader and viewer behavior

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/040.runtime/000_STATIC_ART_RUNTIME_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/050.flow/000_STATIC_ART_CORE_FLOW_INTEGRATED.md -->
# ============================================================
# STATIC ART CORE FLOW INTEGRATED
# ============================================================

status: integrated-canonical
layer: flow
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Creator Upload Flow

1. creator starts draft
2. creator selects asset type
3. files are uploaded
4. metadata is completed
5. preview and sample are configured
6. rights are configured
7. sales and subscription settings are configured
8. self-check is executed
9. review is submitted
10. approval or rework decision is returned
11. asset becomes published when approved

## 2. Marketplace Purchase Flow

1. user enters marketplace
2. user switches tab
3. user filters and sorts
4. user opens product detail
5. user opens sample if desired
6. user starts purchase
7. successful purchase event is received
8. entitlement is written as owned_permanent
9. library projection is refreshed
10. product detail changes to owned state
11. read or view action becomes available

## 3. Subscription Access Flow

1. user has active subscription
2. asset is subscription eligible
3. product detail shows included-in-subscription
4. user opens full content without permanent purchase
5. usage measurement is recorded
6. progress is saved
7. if subscription ends, full access is recalculated

## 4. Library Flow

1. entitlement state changes
2. library projection refresh runs
3. asset appears or disappears in My Library
4. continue reading or viewing is recalculated
5. favorites remain stored independent of entitlement
6. downloaded visibility recalculates by current entitlement and local cache

## 5. Reader and Viewer Flow

1. entitled user opens asset
2. correct surface is selected by asset type
3. last-opened location is restored when available
4. user reads or views
5. progress and last-opened are saved
6. bookmarks, notes, or highlights are saved when relevant
7. Continue Reading or Continue Viewing projections are refreshed

## 6. Restriction and Delist Flow

1. rights or policy change occurs
2. asset is reviewed for restriction impact
3. marketplace visibility is recalculated
4. library access is recalculated
5. projection eligibility is recalculated
6. denial reasons are stored for audit

## 7. Exhibition Projection Flow

1. asset is published and eligible
2. rights and entitlement rules are resolved
3. projection record is refreshed
4. CivilizationOS queries projection data
5. Exhibition Builder displays eligible assets only

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/050.flow/000_STATIC_ART_CORE_FLOW_INTEGRATED.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/050.flow/000_STATIC_ART_FLOW_INDEX.md -->
# ============================================================
# STATIC ART FLOW INDEX
# ============================================================

status: canonical-index
layer: flow
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_FLOW_INDEX.md
- 000_STATIC_ART_FLOW_OVERVIEW.md
- 000_STATIC_ART_CORE_FLOW_INTEGRATED.md

## Scope

- upload flow
- review and release flow
- purchase flow
- subscription flow
- library flow
- reader and viewer flow
- projection flow

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/050.flow/000_STATIC_ART_FLOW_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/050.flow/000_STATIC_ART_FLOW_OVERVIEW.md -->
# ============================================================
# STATIC ART FLOW OVERVIEW
# ============================================================

status: canonical-overview
layer: flow
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Flow Objective

StaticArtOS flows define how assets move from draft to marketplace visibility, how users gain access, how library and reader/viewer continuity are maintained, and how eligible assets become available to Exhibition Builder.

## 2. Core Flow Groups

- creator upload and metadata completion
- rights and commercial setup
- review and release
- marketplace discovery and purchase
- subscription access
- library and shelf refresh
- reading and viewing continuity
- restriction and delist
- exhibition projection refresh

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/050.flow/000_STATIC_ART_FLOW_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_COMMON_COMPONENT_PROMOTION_CANDIDATES.md -->

============================================================

STATIC ART COMMON COMPONENT PROMOTION CANDIDATES

============================================================

status: candidate-ledger
layer: integration
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

1. Purpose

This document lists the common component promotion candidates discovered after the implementation-ready design of StaticArtOS.

These components are candidates for promotion into shared application-level common components when they are proven reusable across multiple systems.

2. Promotion Policy

A component should be promoted only when:

its responsibility is stable

its API surface is stable

its state model is reusable

its permission rules are reusable

its UI or behavior is not overly StaticArtOS-specific

at least one other application can realistically adopt it


3. Common Component Candidate List

3.1 Asset Upload Common

Purpose:

reusable asset upload initiation

draft creation entry

file attachment orchestration


Expected reuse:

any asset-centric application with upload-first behavior


3.2 Asset Metadata Editor Common

Purpose:

title

subtitle

description

localization block editing

category and tag assignment


Expected reuse:

creator apps

publishing apps

marketplace apps

archive apps


3.3 Rights Policy Editor Common

Purpose:

exhibition permission

derivative permission

commercial permission

region scope

age policy


Expected reuse:

asset and content applications with policy-driven visibility


3.4 Sales Offer Editor Common

Purpose:

base price

base currency

sale type

sale period

listing status


Expected reuse:

marketplace-connected applications


3.5 Subscription Eligibility Editor Common

Purpose:

subscription inclusion flag

start / end window

creator opt-in

inclusion notes


Expected reuse:

subscription-supported content applications


3.6 Marketplace Listing Common

Purpose:

tab-based listing

card rendering

badge rendering

owned / included rendering


Expected reuse:

commerce-facing catalog applications


3.7 Marketplace Filter Panel Common

Purpose:

category filter

tag filter

language filter

creator filter

price range filter

ownership filter

subscription inclusion filter


Expected reuse:

search-heavy and discovery-heavy applications


3.8 Marketplace Sort Panel Common

Purpose:

newest

oldest

popularity

best selling

price ascending / descending

title ascending / descending


Expected reuse:

marketplace and asset discovery applications


3.9 Product Card Common

Purpose:

thumbnail

title

creator

type badge

price

owned badge

included badge

sample badge


Expected reuse:

catalog and commerce surfaces


3.10 Product Detail Summary Common

Purpose:

hero summary

creator summary

rights summary

price summary

subscription summary

action rendering


Expected reuse:

product detail surfaces across content marketplaces


3.11 Owned Badge Common

Purpose:

render permanent ownership state consistently


Expected reuse:

owned-library and purchase-driven systems


3.12 Subscription Included Badge Common

Purpose:

render included-in-subscription state consistently


Expected reuse:

subscription-based content systems


3.13 Sample Access Common

Purpose:

sample-open action

sample availability badge

sample eligibility rendering


Expected reuse:

preview-supported catalog systems


3.14 Library Shelf Common

Purpose:

owned content shelf

continue shelf

favorites shelf

downloaded shelf


Expected reuse:

library-oriented or content consumption systems


3.15 Continue Reading / Continue Viewing Common

Purpose:

resume cards

last-opened rendering

progress snippet rendering


Expected reuse:

content continuity systems


3.16 Bookmark Common

Purpose:

bookmark create

bookmark list

bookmark removal


Expected reuse:

reader and viewer experiences


3.17 Favorite Toggle Common

Purpose:

toggle favorite state

reflect favorite badge state


Expected reuse:

discovery, library, and collection systems


3.18 Reader Progress Sync Common

Purpose:

save progress

sync version

continue projection trigger


Expected reuse:

reading systems


3.19 Viewer Progress Sync Common

Purpose:

save last-opened

save view progress

continue projection trigger


Expected reuse:

viewing systems


3.20 Multilingual Label Common

Purpose:

label-key-based multilingual rendering

fallback language behavior


Expected reuse:

all multilingual apps


3.21 Multicurrency Price Display Common

Purpose:

base currency rendering

display currency rendering

historical amount label rendering


Expected reuse:

all commerce-connected apps


3.22 Review Queue Common

Purpose:

pending review list

review action buttons

approve / reject / rework / restrict behavior


Expected reuse:

governance-heavy applications


3.23 Restriction Policy Summary Common

Purpose:

blocked reason summary

restriction explanation rendering

denial reason badges


Expected reuse:

policy-driven access systems


3.24 Exhibition Eligibility Badge Common

Purpose:

render whether an asset is eligible for exhibition usage


Expected reuse:

creator systems and exhibition-connected systems


4. Promotion Priority

Priority A

Asset Metadata Editor Common

Rights Policy Editor Common

Marketplace Listing Common

Marketplace Filter Panel Common

Product Card Common

Library Shelf Common

Multilingual Label Common

Multicurrency Price Display Common


Priority B

Sales Offer Editor Common

Subscription Eligibility Editor Common

Sample Access Common

Review Queue Common

Favorite Toggle Common

Continue Reading / Continue Viewing Common


Priority C

Reader Progress Sync Common

Viewer Progress Sync Common

Restriction Policy Summary Common

Exhibition Eligibility Badge Common


5. Final Note

These are promotion candidates, not yet promoted shared components.

Promotion should be executed only after:

contract stability

adoption readiness

cross-app validation

naming and ownership review

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_COMMON_COMPONENT_PROMOTION_CANDIDATES.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_EXHIBITION_BUILDER_INTEGRATION_CONTRACT.md -->
# ============================================================
# STATIC ART EXHIBITION BUILDER INTEGRATION CONTRACT
# ============================================================

status: implementation-ready-integration
layer: integration
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This contract defines the projection payload that StaticArtOS provides to Exhibition Builder.

## 2. Required Projection Fields

- asset_id
- asset_type
- title
- creator_display_name
- short_description
- thumbnail_url
- preview_url
- entitlement_state
- exhibition_allowed
- additional_license_required
- price_label
- rights_summary
- current_version_no
- collection_ref
- series_ref
- usable_in_exhibition_builder

## 3. Eligibility Conditions

Projection is usable only when all are true:
- asset lifecycle is published
- asset is not restricted or archived
- rights policy allows exhibition
- regional policy allows exposure
- age policy allows exposure
- entitlement policy is satisfied when required
- current version is visible

## 4. Query Contract

### Read Eligible Assets

GET /v1/staticart/exhibition/projection?ownerUserId={userId}&eligibleOnly=true

### Response Shape

- items[]
  - assetId
  - assetType
  - title
  - creatorName
  - description
  - thumbnailUrl
  - previewUrl
  - entitlementState
  - exhibitionAllowed
  - additionalLicenseRequired
  - priceLabel
  - rightsSummary
  - usableInExhibitionBuilder

## 5. Mutation Rule

Exhibition Builder may read and reference projection data but may not mutate StaticArtOS canonical asset, rights, entitlement, or projection source records.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_EXHIBITION_BUILDER_INTEGRATION_CONTRACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_INTEGRATION_INDEX.md -->
# ============================================================
# STATIC ART INTEGRATION INDEX
# ============================================================

status: canonical-index
layer: integration
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_INTEGRATION_INDEX.md
- 000_STATIC_ART_INTEGRATION_OVERVIEW.md
- 000_STATIC_ART_EXHIBITION_BUILDER_INTEGRATION_CONTRACT.md
- 000_STATIC_ART_COMMON_COMPONENT_PROMOTION_CANDIDATES.md
- 000_STATIC_ART_CX22073_CANDIDATE_DATA_AREAS.md
- 00_STATIC_ART_INTEGRATION_INTEGRATED.md

## Scope

- commercial integration
- purchase reflection integration
- subscription integration
- projection integration
- downstream contract boundaries
- common component promotion candidate linkage
- CX22073 candidate data area linkage
- integrated integration ledger

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_INTEGRATION_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_INTEGRATION_OVERVIEW.md -->
# ============================================================
# STATIC ART INTEGRATION OVERVIEW
# ============================================================

status: canonical-overview
layer: integration
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Integration Objective

StaticArtOS integrates with external commercial and downstream systems while remaining the canonical owner of asset, entitlement, projection state, and post-design promotion candidates for shared components and CX22073 reference areas.

## 2. Integration Directions

### Commercial Direction
- purchase success events enter StaticArtOS
- subscription status events enter StaticArtOS
- settlement measurement events may leave StaticArtOS

### Downstream Direction
- Exhibition Builder reads projection payloads from StaticArtOS
- downstream systems do not mutate StaticArtOS asset master

### Promotion Direction
- common component promotion candidates are reviewed from StaticArtOS reusable surfaces
- CX22073 candidate data areas are reviewed from StaticArtOS reference and projection needs

## 3. Integration Principles

- inbound commercial events must be idempotent
- outbound projection data must be derived and refreshable
- ownership and subscription are resolved inside StaticArtOS after integration events arrive
- exact integration contracts must not rely on UI-only fields
- common component promotion must not blur domain ownership
- CX22073 placement must not blur canonical source-of-truth boundaries

## 4. Related Integration Documents

- 000_STATIC_ART_EXHIBITION_BUILDER_INTEGRATION_CONTRACT.md
- 000_STATIC_ART_COMMON_COMPONENT_PROMOTION_CANDIDATES.md
- 000_STATIC_ART_CX22073_CANDIDATE_DATA_AREAS.md
- 00_STATIC_ART_INTEGRATION_INTEGRATED.md

## 5. Integrated Document Rule

The integrated integration document must be treated as the consolidated reference point for:

- commercial integration principles
- subscription integration principles
- Exhibition Builder integration principles
- common component promotion candidate linkage
- CX22073 candidate data area linkage
- canonical ownership guardrails inside integration design

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_INTEGRATION_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/001_STATIC_ART_COMMON_COMPONENT_REVIEW_MATRIX.md -->
# ============================================================
# STATIC ART COMMON COMPONENT REVIEW MATRIX
# ============================================================

status: review-matrix
layer: integration
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document reviews the promotion candidates discovered in StaticArtOS
and prepares them for formal shared-component selection.

The matrix is not the final promotion decision.
It is the evaluation layer before official selection.

## 2. Review Columns

Each candidate is reviewed by:

- reuse_strength
- contract_stability
- ownership_clarity
- cross_app_readiness
- review_comment
- next_action

Allowed values:

- reuse_strength: high / medium / low
- contract_stability: high / medium / low
- ownership_clarity: clear / partial / unclear
- cross_app_readiness: ready / near-ready / later
- next_action: shortlist / hold / split / merge-review

## 3. Review Matrix

### 3.1 Priority A Candidates

| candidate | reuse_strength | contract_stability | ownership_clarity | cross_app_readiness | review_comment | next_action |
|---|---|---|---|---|---|---|
| Asset Metadata Editor Common | high | medium | partial | near-ready | likely reusable across creator and archive apps, but metadata contract needs exact normalization | shortlist |
| Rights Policy Editor Common | high | medium | partial | near-ready | strong reusable policy editor candidate, but policy scope boundaries need exact review | shortlist |
| Marketplace Listing Common | high | high | clear | ready | highly reusable catalog/listing surface family | shortlist |
| Marketplace Filter Panel Common | high | high | clear | ready | reusable discovery filter family across content marketplaces | shortlist |
| Product Card Common | high | high | clear | ready | strong reusable commerce/catalog card surface | shortlist |
| Library Shelf Common | high | medium | clear | near-ready | reusable, but shelf taxonomy should be stabilized first | shortlist |
| Multilingual Label Common | very-high | high | clear | ready | global cross-app foundation candidate | shortlist |
| Multicurrency Price Display Common | very-high | high | clear | ready | global commerce-connected foundation candidate | shortlist |

### 3.2 Priority B Candidates

| candidate | reuse_strength | contract_stability | ownership_clarity | cross_app_readiness | review_comment | next_action |
|---|---|---|---|---|---|---|
| Sales Offer Editor Common | medium | medium | partial | near-ready | useful but partially tied to marketplace price model details | hold |
| Subscription Eligibility Editor Common | medium | medium | partial | near-ready | reusable for subscription systems, but eligibility contract needs more stabilization | hold |
| Sample Access Common | medium | medium | clear | near-ready | reusable preview family, but sample policy logic may vary by app | hold |
| Review Queue Common | high | medium | partial | near-ready | useful governance surface, but review action model should be normalized first | shortlist |
| Favorite Toggle Common | high | high | clear | ready | small but highly reusable interaction common | shortlist |
| Continue Reading / Continue Viewing Common | high | medium | partial | near-ready | reusable continuity family, but unify reading vs viewing contract first | merge-review |

### 3.3 Priority C Candidates

| candidate | reuse_strength | contract_stability | ownership_clarity | cross_app_readiness | review_comment | next_action |
|---|---|---|---|---|---|---|
| Reader Progress Sync Common | medium | medium | partial | later | useful, but sync contract should be unified with viewer-progress family first | merge-review |
| Viewer Progress Sync Common | medium | medium | partial | later | useful, but sync contract should be unified with reader-progress family first | merge-review |
| Restriction Policy Summary Common | medium | medium | partial | later | useful for policy-heavy systems, but rule taxonomy needs more stabilization | hold |
| Exhibition Eligibility Badge Common | medium | high | partial | near-ready | reusable for exhibition-connected systems, but eligibility source contract needs review | hold |

## 4. Initial Shortlist Recommendation

### shortlist_now
- Asset Metadata Editor Common
- Rights Policy Editor Common
- Marketplace Listing Common
- Marketplace Filter Panel Common
- Product Card Common
- Library Shelf Common
- Multilingual Label Common
- Multicurrency Price Display Common
- Review Queue Common
- Favorite Toggle Common

### merge_review_first
- Continue Reading / Continue Viewing Common
- Reader Progress Sync Common
- Viewer Progress Sync Common

### hold_for_later
- Sales Offer Editor Common
- Subscription Eligibility Editor Common
- Sample Access Common
- Restriction Policy Summary Common
- Exhibition Eligibility Badge Common

## 5. Recommended Next Step

Create:

- 002_STATIC_ART_COMMON_COMPONENT_OFFICIAL_SELECTION.md

and move only:
- shortlist_now

into the first official selection pass.

## 6. Final Note

This matrix is a review layer only.
No candidate is officially promoted yet.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/001_STATIC_ART_COMMON_COMPONENT_REVIEW_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/000_STATIC_ART_OPERATIONS_INDEX.md -->
# ============================================================
# STATIC ART OPERATIONS INDEX
# ============================================================

status: canonical-index
layer: operations
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_OPERATIONS_INDEX.md
- 000_STATIC_ART_OPERATIONS_OVERVIEW.md
- 000_STATIC_ART_REVIEW_AND_RELEASE_OPERATIONS.md

## Scope

- moderation and review
- release operations
- rollback and restriction
- audit and support operations

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/000_STATIC_ART_OPERATIONS_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/000_STATIC_ART_OPERATIONS_OVERVIEW.md -->
# ============================================================
# STATIC ART OPERATIONS OVERVIEW
# ============================================================

status: canonical-overview
layer: operations
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Operations Objective

StaticArtOS operations must support safe release, rights review, subscription review, restriction handling, entitlement support, and projection audit.

## 2. Operational Domains

- metadata review
- rights review
- release review
- subscription inclusion review
- restriction handling
- delist handling
- projection audit
- user access support
- rollback support

## 3. Operational Principles

- no destructive deletion as the default path
- restriction and delist must preserve auditability
- release must have clear approval states
- user access support must inspect entitlement source and policy reason codes

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/000_STATIC_ART_OPERATIONS_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/000_STATIC_ART_REVIEW_AND_RELEASE_OPERATIONS.md -->
# ============================================================
# STATIC ART REVIEW AND RELEASE OPERATIONS
# ============================================================

status: implementation-ready-operations
layer: operations
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Review Types

- metadata review
- rights review
- marketplace review
- subscription review
- restriction review

## 2. Review Outcomes

- approved
- rejected
- returned_for_rework
- restricted

## 3. Release Preconditions

An asset may be released only when:
- required files exist
- required metadata exists
- rights review is approved
- sales review is approved when for-sale
- subscription review is approved when subscription-included
- publish window allows release

## 4. Rollback and Delist

Rollback means:
- new exposure is stopped
- marketplace visibility is removed or paused
- library access recalculates only when policy requires it
- projection eligibility is refreshed
- audit records are preserved

## 5. Support Investigation Inputs

Operations staff must be able to inspect:
- entitlement state
- entitlement source
- lifecycle state
- rights policy
- regional policy
- age policy
- current projection eligibility reason

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/000_STATIC_ART_REVIEW_AND_RELEASE_OPERATIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/080.policy/000_STATIC_ART_POLICY_INDEX.md -->
# ============================================================
# STATIC ART POLICY INDEX
# ============================================================

status: canonical-index
layer: policy
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_POLICY_INDEX.md
- 000_STATIC_ART_POLICY_OVERVIEW.md
- 000_STATIC_ART_RIGHTS_SUBSCRIPTION_AND_RESTRICTION_POLICY.md

## Scope

- rights policy
- subscription policy
- regional and age policy
- marketplace exposure policy
- delist and restriction policy

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/080.policy/000_STATIC_ART_POLICY_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/080.policy/000_STATIC_ART_POLICY_OVERVIEW.md -->
# ============================================================
# STATIC ART POLICY OVERVIEW
# ============================================================

status: canonical-overview
layer: policy
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Policy Objective

StaticArtOS policy determines what may be exposed, sold, subscribed to, read, viewed, or projected based on rights, geography, age, and operational status.

## 2. Policy Families

- rights exposure policy
- sales policy
- subscription inclusion policy
- regional policy
- age policy
- restriction and delist policy
- projection policy

## 3. Policy Precedence

The precedence order is:

1. restriction policy
2. rights policy
3. regional policy
4. age policy
5. entitlement policy
6. UI rendering policy

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/080.policy/000_STATIC_ART_POLICY_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/080.policy/000_STATIC_ART_RIGHTS_SUBSCRIPTION_AND_RESTRICTION_POLICY.md -->
# ============================================================
# STATIC ART RIGHTS SUBSCRIPTION AND RESTRICTION POLICY
# ============================================================

status: implementation-ready-policy
layer: policy
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Rights Policy

If exhibition_allowed is false:
- projection must be blocked
- exhibition badge must be hidden or rendered as not allowed

If commercial_use_allowed is false:
- commercial derivative downstream use must be blocked

If region_scope excludes user region:
- full access must be blocked
- sample access follows explicit sample region policy

## 2. Subscription Policy

Subscription access is allowed only when:
- user subscription is active
- asset subscription_eligible_flag is true
- current time is within subscription window if bounded
- region policy allows subscription access

Subscription access does not create:
- permanent ownership
- exhibition entitlement unless separately allowed by creator policy

## 3. Restriction Policy

Restriction may be triggered by:
- rights conflict
- regional legal requirement
- age classification requirement
- operational safety decision
- asset integrity or release quality issue

When restricted:
- marketplace exposure may be removed
- full access may be blocked
- projection is blocked
- audit reason must be preserved

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/080.policy/000_STATIC_ART_RIGHTS_SUBSCRIPTION_AND_RESTRICTION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/100.security/000_STATIC_ART_ACCESS_AND_ASSET_PROTECTION_POLICY.md -->
# ============================================================
# STATIC ART ACCESS AND ASSET PROTECTION POLICY
# ============================================================

status: implementation-ready-security
layer: security
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Access Control Classes

- creator
- publisher
- curator
- buyer
- subscriber
- reader
- collector
- admin

## 2. Protected Asset Classes

- full publishing content
- full visual content
- restricted previews
- rights case records
- review case records
- entitlement source details

## 3. Protection Rules

- full asset delivery requires current full entitlement
- sample asset delivery requires sample permission
- rights and review records are admin-only by default
- entitlement write endpoints accept only trusted integration or privileged internal actors
- user progress endpoints may only mutate the caller's own records unless admin support mode applies

## 4. Audit Rule

All changes to:
- rights policy
- restriction state
- entitlement state
- projection eligibility state

must be auditable with actor, timestamp, and reason.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/100.security/000_STATIC_ART_ACCESS_AND_ASSET_PROTECTION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/100.security/000_STATIC_ART_SECURITY_INDEX.md -->
# ============================================================
# STATIC ART SECURITY INDEX
# ============================================================

status: canonical-index
layer: security
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_SECURITY_INDEX.md
- 000_STATIC_ART_SECURITY_OVERVIEW.md
- 000_STATIC_ART_ACCESS_AND_ASSET_PROTECTION_POLICY.md

## Scope

- access control
- asset access security
- entitlement protection
- audit security

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/100.security/000_STATIC_ART_SECURITY_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/100.security/000_STATIC_ART_SECURITY_OVERVIEW.md -->
# ============================================================
# STATIC ART SECURITY OVERVIEW
# ============================================================

status: canonical-overview
layer: security
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Security Objective

StaticArtOS security must protect restricted assets, entitled content, user continuity data, and review decisions from unauthorized access or mutation.

## 2. Security Surfaces

- creator management surfaces
- admin governance surfaces
- full-content delivery
- sample delivery
- entitlement mutation endpoints
- projection read surfaces
- progress and bookmark data

## 3. Security Principles

- full content must require resolved entitlement
- admin mutations must require role-based authority
- review decisions must be auditable
- projection read must expose only allowed fields
- sample and full-content storage keys must not be treated as public truth

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/100.security/000_STATIC_ART_SECURITY_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/110.infrastructure/000_STATIC_ART_INFRASTRUCTURE_INDEX.md -->
# ============================================================
# STATIC ART INFRASTRUCTURE INDEX
# ============================================================

status: canonical-index
layer: infrastructure
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_INFRASTRUCTURE_INDEX.md
- 000_STATIC_ART_INFRASTRUCTURE_OVERVIEW.md
- 000_STATIC_ART_STORAGE_DELIVERY_AND_INDEXING_ASSUMPTIONS.md

## Scope

- storage assumptions
- delivery assumptions
- indexing assumptions
- cache and refresh assumptions

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/110.infrastructure/000_STATIC_ART_INFRASTRUCTURE_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/110.infrastructure/000_STATIC_ART_INFRASTRUCTURE_OVERVIEW.md -->
# ============================================================
# STATIC ART INFRASTRUCTURE OVERVIEW
# ============================================================

status: canonical-overview
layer: infrastructure
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Infrastructure Objective

Infrastructure must support secure asset storage, efficient preview and sample delivery, marketplace discovery indexing, progress synchronization, and projection refresh.

## 2. Infrastructure Responsibilities

- asset file storage
- preview storage
- sample storage
- metadata indexing
- marketplace filter indexing
- entitlement-aware content delivery
- reader and viewer sync persistence
- projection refresh scheduling

## 3. Infrastructure Principles

- canonical metadata and policy state must remain queryable
- search and filter indexes are derived, not canonical
- projection records are derived and refreshable
- content delivery must remain entitlement-aware

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/110.infrastructure/000_STATIC_ART_INFRASTRUCTURE_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/110.infrastructure/000_STATIC_ART_STORAGE_DELIVERY_AND_INDEXING_ASSUMPTIONS.md -->
# ============================================================
# STATIC ART STORAGE DELIVERY AND INDEXING ASSUMPTIONS
# ============================================================

status: implementation-ready-infrastructure
layer: infrastructure
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Storage Assumptions

Asset storage must distinguish:
- canonical full asset files
- preview assets
- sample assets
- derived thumbnails

## 2. Delivery Assumptions

Delivery paths must distinguish:
- sample delivery
- full entitled delivery
- projection thumbnail delivery

Full delivery must always depend on entitlement resolution.

## 3. Indexing Assumptions

Derived indexes must support:
- marketplace tab listing
- filter search
- sort ranking
- creator and publisher browse
- library visibility projection
- continue reading projection
- continue viewing projection
- exhibition projection lookup

## 4. Refresh Assumptions

Refresh must occur after:
- publish state change
- rights change
- subscription eligibility change
- entitlement change
- progress change
- restriction or delist change

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/110.infrastructure/000_STATIC_ART_STORAGE_DELIVERY_AND_INDEXING_ASSUMPTIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_API_EXACT_CONTRACT.md -->
# ============================================================
# STATIC ART API EXACT CONTRACT
# ============================================================

status: implementation-ready-api
layer: implementation
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Create Asset Draft

POST /v1/staticart/assets/draft

request:
{
  "assetType": "ebook",
  "creatorId": "creator_001",
  "publisherId": "publisher_001",
  "initialLanguage": "en"
}

response:
{
  "assetId": "ast_0001",
  "lifecycleState": "draft",
  "allowedNextActions": [
    "uploadFiles",
    "saveMetadata"
  ]
}

## 2. Save Metadata

PUT /v1/staticart/assets/{assetId}/metadata

request:
{
  "localizations": [
    {
      "languageCode": "en",
      "title": "The Quiet Museum",
      "subtitle": "Collected Static Works",
      "shortDescription": "A curated digital booklet.",
      "longDescription": "Full long description here."
    }
  ],
  "categoryIds": ["cat_booklet"],
  "tagIds": ["tag_curated", "tag_visual"]
}

response:
{
  "assetId": "ast_0001",
  "metadataCompleted": true,
  "allowedNextActions": [
    "saveRights",
    "saveSales",
    "uploadPreview"
  ]
}

## 3. Save Commercial Settings

PUT /v1/staticart/assets/{assetId}/commercial-settings

request:
{
  "rights": {
    "exhibitionAllowed": true,
    "commercialUseAllowed": false,
    "derivativeAllowed": false,
    "regionScope": ["JP", "US"],
    "ageRating": "general"
  },
  "sales": {
    "saleType": "buy_now",
    "baseCurrency": "USD",
    "basePrice": 9.99,
    "status": "for_sale"
  },
  "subscription": {
    "subscriptionEligible": true,
    "subscriptionStartAt": "2026-05-01T00:00:00Z",
    "subscriptionEndAt": null
  }
}

response:
{
  "assetId": "ast_0001",
  "rightsSaved": true,
  "salesSaved": true,
  "subscriptionSaved": true,
  "allowedNextActions": [
    "submitForReview"
  ]
}

## 4. Submit Review

POST /v1/staticart/assets/{assetId}/submit-review

request:
{
  "reviewTypes": [
    "metadata",
    "rights",
    "marketplace",
    "subscription"
  ]
}

response:
{
  "assetId": "ast_0001",
  "lifecycleState": "review_pending",
  "reviewStatus": "pending"
}

## 5. Marketplace List

GET /v1/staticart/marketplace/list?tab=ebook&sort=best_selling&subscriptionIncluded=true&language=en

response:
{
  "tab": "ebook",
  "sort": "best_selling",
  "filtersApplied": {
    "subscriptionIncluded": true,
    "language": "en"
  },
  "items": [
    {
      "assetId": "ast_0001",
      "title": "The Quiet Museum",
      "creatorName": "Studio North",
      "assetType": "ebook",
      "price": {
        "amount": 9.99,
        "currency": "USD"
      },
      "badges": [
        "subscription_included",
        "sample_available"
      ],
      "ownedState": "none",
      "thumbnailUrl": "..."
    }
  ],
  "nextCursor": "cur_002"
}

## 6. Product Detail

GET /v1/staticart/assets/{assetId}/detail

response:
{
  "assetId": "ast_0001",
  "assetType": "ebook",
  "title": "The Quiet Museum",
  "subtitle": "Collected Static Works",
  "description": "Full long description here.",
  "creator": {
    "creatorId": "creator_001",
    "displayName": "Studio North"
  },
  "rightsSummary": {
    "exhibitionAllowed": true,
    "commercialUseAllowed": false,
    "ageRating": "general"
  },
  "sales": {
    "saleType": "buy_now",
    "price": {
      "amount": 9.99,
      "currency": "USD"
    }
  },
  "subscription": {
    "included": true
  },
  "sampleAvailable": true,
  "ownedState": "none",
  "allowedActions": [
    "openSample",
    "purchase"
  ]
}

## 7. Reflect Purchase

POST /v1/staticart/entitlements/reflect-purchase

request:
{
  "externalTransactionId": "txn_10001",
  "userId": "usr_001",
  "assetId": "ast_0001",
  "entitlementType": "owned_permanent",
  "purchasedAt": "2026-04-16T08:00:00Z"
}

response:
{
  "assetId": "ast_0001",
  "userId": "usr_001",
  "entitlementState": "owned_permanent",
  "libraryVisible": true,
  "allowedActions": [
    "openReader",
    "favorite",
    "addBookmark"
  ]
}

## 8. Save Reader Progress

POST /v1/staticart/reader/progress

request:
{
  "userId": "usr_001",
  "assetId": "ast_0001",
  "currentLocator": "epubcfi(/6/8!/4/2/16)",
  "progressPercent": 42.3,
  "deviceType": "iphone"
}

response:
{
  "saved": true,
  "syncVersion": 18,
  "continueReadingVisible": true
}

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_API_EXACT_CONTRACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_IMPLEMENTATION_INDEX.md -->
# ============================================================
# STATIC ART IMPLEMENTATION INDEX
# ============================================================

status: canonical-index
layer: implementation
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_IMPLEMENTATION_INDEX.md
- 000_STATIC_ART_IMPLEMENTATION_OVERVIEW.md
- 000_STATIC_ART_API_EXACT_CONTRACT.md
- 000_STATIC_ART_STATE_PERMISSION_AND_VALIDATION_EXACTNESS.md

## Scope

- API exactness
- state exactness
- permission exactness
- validation exactness

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_IMPLEMENTATION_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_IMPLEMENTATION_OVERVIEW.md -->
# ============================================================
# STATIC ART IMPLEMENTATION OVERVIEW
# ============================================================

status: canonical-overview
layer: implementation
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Implementation-Ready Definition

StaticArtOS is implementation-ready only when the following are fixed without ambiguity:

- schema names
- table purposes
- state enums
- request and response payloads
- permission rules
- validation rules
- entitlement resolution rules
- projection contract rules

## 2. Fixed Schema

All StaticArtOS data belongs to schema `staticart`.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_IMPLEMENTATION_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_STATE_PERMISSION_AND_VALIDATION_EXACTNESS.md -->
# ============================================================
# STATIC ART STATE PERMISSION AND VALIDATION EXACTNESS
# ============================================================

status: implementation-ready-exactness
layer: implementation
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Lifecycle States

- draft
- files_uploaded
- metadata_completed
- self_check_passed
- review_pending
- approved
- rejected
- published_marketplace
- published_library_only
- delisted
- restricted
- replaced
- archived

## 2. Sales States

- not_for_sale
- for_sale
- preorder
- sale_paused
- sold_out_limited
- sale_ended

## 3. Subscription States

- not_included
- included_active
- included_scheduled
- included_paused
- included_ended

## 4. Entitlement States

- none
- sample_only
- subscription_access
- owned_permanent
- owned_and_subscription_access
- blocked_by_region
- blocked_by_age_policy
- blocked_by_rights_change

## 5. Permission Rules

### Creator
May:
- create and edit own drafts
- submit for review
- manage metadata, rights, sales, and subscription settings for allowed assets

May not:
- approve review as admin
- override restriction without admin authority

### Buyer / Reader / Subscriber
May:
- browse marketplace
- open owned or subscribed assets
- manage own favorites, bookmarks, and progress

May not:
- mutate asset master
- mutate rights or publish state

### Admin
May:
- review, approve, reject, restrict, and delist
- inspect audit and projection reason codes

## 6. Validation Rules

Asset creation requires:
- valid assetType
- creatorId
- initialLanguage

Marketplace publication requires:
- files present
- metadata present in at least one language
- rights configured
- review approved

Subscription inclusion requires:
- sales or distribution eligibility configured
- subscriptionEligible true
- creator or publisher opt-in where required

Reader progress save requires:
- valid full-open entitlement
- publishing asset type

Viewer progress save requires:
- valid full-open entitlement
- visual asset type

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_STATE_PERMISSION_AND_VALIDATION_EXACTNESS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/000_STATIC_ART_DEVELOPMENT_AND_RELEASE_RULES.md -->
# ============================================================
# STATIC ART DEVELOPMENT AND RELEASE RULES
# ============================================================

status: implementation-ready-development
layer: development
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Schema Rule

All StaticArtOS tables must be created under schema `staticart`.

## 2. Change Rule

Changes to:
- entitlement logic
- rights logic
- projection logic
- lifecycle states

must be additive or migration-safe and must preserve auditability.

## 3. Test Priority Rule

Highest priority tests:
- entitlement resolution
- subscription expiry behavior
- library visibility refresh
- reader and viewer access blocking
- projection eligibility resolution
- restriction behavior

## 4. Release Rule

A release is not acceptable unless:
- API contracts match implementation-ready design
- permission rules match implementation-ready design
- lifecycle states and entitlement states match implementation-ready design

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/000_STATIC_ART_DEVELOPMENT_AND_RELEASE_RULES.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/000_STATIC_ART_DEVELOPMENT_INDEX.md -->
# ============================================================
# STATIC ART DEVELOPMENT INDEX
# ============================================================

status: canonical-index
layer: development
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_DEVELOPMENT_INDEX.md
- 000_STATIC_ART_DEVELOPMENT_OVERVIEW.md
- 000_STATIC_ART_DEVELOPMENT_AND_RELEASE_RULES.md

## Scope

- development rules
- migration rules
- release rules
- testing direction

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/000_STATIC_ART_DEVELOPMENT_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/000_STATIC_ART_DEVELOPMENT_OVERVIEW.md -->
# ============================================================
# STATIC ART DEVELOPMENT OVERVIEW
# ============================================================

status: canonical-overview
layer: development
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Development Objective

Development must implement StaticArtOS without violating canonical ownership, entitlement separation, or projection contract rules.

## 2. Development Priorities

- schema correctness
- entitlement correctness
- policy correctness
- marketplace correctness
- reader and viewer continuity correctness
- projection correctness

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/000_STATIC_ART_DEVELOPMENT_OVERVIEW.md -->



<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/00_STATIC_ART_OS_INTEGRATED.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.constitution/000_STATIC_ART_OS_CONSTITUTION_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.constitution/000_STATIC_ART_OS_CONSTITUTION_INDEX.md

# ============================================================
# STATIC ART OS CONSTITUTION INDEX
# ============================================================

status: canonical-index
layer: constitution
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_OS_CONSTITUTION_INDEX.md
- 000_STATIC_ART_OS_CONSTITUTION_OVERVIEW.md
- 00_STATIC_ART_OS_CONSTITUTION_INTEGRATED.md

## Scope

- constitutional purpose
- constitutional principles
- non-goals
- commercial rule
- reader and viewer rule
- subscription rule
- projection rule


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.constitution/000_STATIC_ART_OS_CONSTITUTION_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.constitution/000_STATIC_ART_OS_CONSTITUTION_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.constitution/000_STATIC_ART_OS_CONSTITUTION_OVERVIEW.md

# ============================================================
# STATIC ART OS CONSTITUTION OVERVIEW
# ============================================================

status: canonical-overview
layer: constitution
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Constitutional Purpose

StaticArtOS exists to canonically manage static visual and publishing assets, make them commercially usable, make them readable or viewable by entitled users, and project them to Exhibition Builder when eligible.

## 2. Constitutional Principles

### Principle 1: Canonical Asset Authority
Asset identity, metadata, rights, and version history must remain canonical inside StaticArtOS.

### Principle 2: Entitlement-Derived Visibility
Library visibility, read/view access, and downstream usability must be derived from entitlement state, not from ad hoc UI flags.

### Principle 3: Separation of Ownership and Subscription
Permanent ownership and subscription access are different entitlement types and must never be merged semantically.

### Principle 4: Rights Before Exposure
Marketplace exposure, library access, and exhibition projection must all be blocked when rights policy says so.

### Principle 5: Publishing and Visual Unity
StaticArtOS must support both publishing assets and static visual assets inside one unified OS, while allowing different consumption modes.

### Principle 6: Downstream Projection Without Canonical Transfer
StaticArtOS may project to downstream systems, but downstream systems must not become canonical owners of StaticArtOS asset master state.

### Principle 7: Cross-Device Continuity
Reading position, viewing continuity, favorites, and bookmarks must survive across supported device classes.

## 3. Constitutional Non-Goals

StaticArtOS does not own:

- exhibition placement canonical state
- venue layout canonical state
- live streaming logic
- video platform logic
- external settlement engines
- city design or building design

## 4. Constitutional Commercial Rule

StaticArtOS may contain the full marketplace experience, but commercial execution may integrate with Business-side systems. StaticArtOS remains the canonical owner of entitlement reflection after a successful commercial event.

## 5. Constitutional Reader Rule

StaticArtOS must provide a Kindle-like reading experience for eligible publishing assets, including continuity and user memory functions such as progress and bookmarks.

## 6. Constitutional Viewer Rule

StaticArtOS must provide an owned or entitled viewing experience for visual works, including continuity, zoom, full-screen, and collection navigation where applicable.

## 7. Constitutional Subscription Rule

The subscription model must behave as access entitlement, not as ownership transfer.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.constitution/000_STATIC_ART_OS_CONSTITUTION_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.constitution/00_STATIC_ART_OS_CONSTITUTION_INTEGRATED.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.constitution/00_STATIC_ART_OS_CONSTITUTION_INTEGRATED.md

# ============================================================
# STATIC ART OS CONSTITUTION INTEGRATED
# ============================================================

status: integrated-canonical
layer: constitution
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Constitutional Identity

StaticArtOS is the canonical OS for:

- static visual asset identity
- publishing asset identity
- asset metadata and localization
- asset rights and release state
- marketplace visibility state
- subscription eligibility state
- permanent ownership and subscription entitlement state
- reader / viewer continuity
- exhibition projection eligibility

## 2. Constitutional Boundary

StaticArtOS does not canonically own:

- exhibition placement
- exhibition route design
- venue construction
- live or video streaming
- external accounting execution

## 3. Constitutional Entitlement Logic

All read, view, library, and projection behavior must resolve from entitlement state and rights state.

The OS must distinguish:

- sample-only access
- subscription access
- permanent ownership
- blocked access

No screen may bypass this distinction.

## 4. Constitutional Marketplace Logic

Marketplace rendering belongs inside StaticArtOS.

The marketplace must provide:

- asset-type tabs
- filtering
- sorting
- product detail
- sample entry
- owned-state rendering
- subscription-included rendering
- transition to reader / viewer after entitlement

## 5. Constitutional Subscription Logic

Subscription access must:

- depend on active subscription
- depend on asset subscription eligibility
- not create permanent ownership
- expire cleanly
- preserve allowed history such as progress where policy permits

## 6. Constitutional Projection Logic

Exhibition Builder may consume projection data from StaticArtOS but may not mutate StaticArtOS canonical asset state.

Projection eligibility requires:

- published state
- non-restricted state
- rights allowance
- entitlement allowance where required
- policy allowance for region and age

## 7. Constitutional Design Requirement

StaticArtOS design is not complete until implementation-ready contracts exist for:

- architecture
- runtime
- flow
- schema
- API requests and responses
- permissions
- projection contracts


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.constitution/00_STATIC_ART_OS_CONSTITUTION_INTEGRATED.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.overview/010_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.overview/010_INDEX.md

# ============================================================
# OVERVIEW INDEX
# ============================================================

status: active
system: StaticArtOS
folder: 010.overview
owner: Boss
prepared_by: Zero

purpose:
- Directory navigation entry point
- Repair-generated because INDEX was missing

subfolders:
- none

files:
- 010_INDEX.md
- 010_STATIC_ART_OS_IMPLEMENTATION_READY_OVERVIEW.md


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.overview/010_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.overview/010_STATIC_ART_OS_IMPLEMENTATION_READY_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.overview/010_STATIC_ART_OS_IMPLEMENTATION_READY_OVERVIEW.md

# ============================================================
# STATIC ART OS IMPLEMENTATION READY OVERVIEW
# ============================================================

status: implementation-ready
system: StaticArtOS
layer: overview
owner: Boss
prepared_by: Zero

objective:
StaticArtOS must support the full lifecycle of static visual works
and publishing-type static assets from draft creation to review,
publication, entitlement resolution, library continuity, and
Exhibition Builder projection.

scope:
  asset_families:
    - artwork
    - illustration
    - poster
    - photo_art
    - static_visual
    - book
    - ebook
    - booklet
    - catalog
    - collection_book
    - material_booklet

main_flows:
  creator_side:
    - asset draft creation
    - file upload
    - metadata completion
    - rights configuration
    - sales/subscription configuration
    - self check
    - review submission
    - publish / delist / archive
  buyer_side:
    - marketplace discovery
    - product detail
    - sample open
    - purchase
    - library entry
    - reader/viewer continuation
  governance_side:
    - review queue
    - decision
    - restriction
    - legal/policy override
    - audit and projection refresh

frozen_design_axes:
  - database exactness
  - api exactness
  - screen and stateflow exactness
  - permission and policy exactness
  - cx22073jw reference integration exactness
  - acceptance and test exactness

canonical_principles:
  - Canonical write and derived projection must be separated.
  - Entitlement is computed and may be blocked without destroying history.
  - Restriction is stronger than delist.
  - Exhibition Builder consumes only derived projection.
  - Reader continuity and viewer continuity must be separated.
  - Favorite must survive entitlement loss.
  - Subscription access must never be promoted into permanent ownership.

implementation_ready_judgement:
  - StaticArtOS is no longer treated as skeleton-only design.
  - StaticArtOS is treated as implementation-ready integrated detailed design.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.overview/010_STATIC_ART_OS_IMPLEMENTATION_READY_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/020.architecture/000_STATIC_ART_ARCHITECTURE_DOMAIN_BOUNDARY.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/020.architecture/000_STATIC_ART_ARCHITECTURE_DOMAIN_BOUNDARY.md

# ============================================================
# STATIC ART ARCHITECTURE DOMAIN BOUNDARY
# ============================================================

status: implementation-ready-architecture
layer: architecture
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Asset Master Domain

Responsibilities:
- asset identity
- asset type
- creator / publisher references
- canonical version pointer
- lifecycle state anchor

Must not own:
- user favorites
- reader progress
- marketplace ranking scores

## 2. Metadata Domain

Responsibilities:
- localized title
- localized subtitle
- localized description
- category mapping
- tag mapping
- creator-facing discoverability metadata

Must not own:
- entitlement
- payment result
- projection eligibility final decision

## 3. Rights Domain

Responsibilities:
- copyright ownership
- derivative policy
- commercial use policy
- exhibition policy
- regional restrictions
- age restrictions

Must be consulted before:
- marketplace exposure
- full sample access where restricted
- library open access
- exhibition projection

## 4. Sales Domain

Responsibilities:
- sale type
- price
- sale period
- limited sale flag
- marketplace status

Must not decide:
- permanent ownership on its own
- subscription access on its own

## 5. Subscription Domain

Responsibilities:
- subscription inclusion state
- subscription eligibility window
- creator opt-in state
- settlement group classification

Must not create:
- permanent ownership

## 6. Entitlement Domain

Responsibilities:
- owned permanent access
- subscription access
- expiration
- access blockage by policy overrides

This is the only domain allowed to determine:
- whether user can fully open an asset
- whether asset appears as owned or included
- whether library visibility applies

## 7. Library Projection Domain

Responsibilities:
- My Library visibility
- Continue Reading visibility
- Continue Viewing visibility
- Favorites projection
- Downloaded projection

Derived from:
- entitlement
- asset type
- user continuity signals

## 8. Reader / Viewer Continuity Domain

Responsibilities:
- progress
- last-opened
- bookmarks
- notes
- highlights
- sync version

Must not decide:
- entitlement

## 9. Exhibition Projection Domain

Responsibilities:
- projection payload for Exhibition Builder
- eligible / ineligible resolution output
- reason codes for projection failure

Derived from:
- asset publish state
- rights state
- entitlement policy
- restriction policy
- current version visibility


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/020.architecture/000_STATIC_ART_ARCHITECTURE_DOMAIN_BOUNDARY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/020.architecture/000_STATIC_ART_ARCHITECTURE_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/020.architecture/000_STATIC_ART_ARCHITECTURE_INDEX.md

# ============================================================
# STATIC ART ARCHITECTURE INDEX
# ============================================================

status: canonical-index
layer: architecture
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_ARCHITECTURE_INDEX.md
- 000_STATIC_ART_ARCHITECTURE_OVERVIEW.md
- 000_STATIC_ART_ARCHITECTURE_DOMAIN_BOUNDARY.md

## Scope

- architecture objective
- core domains
- source-of-truth rules
- dependency directions
- boundary rules


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/020.architecture/000_STATIC_ART_ARCHITECTURE_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/020.architecture/000_STATIC_ART_ARCHITECTURE_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/020.architecture/000_STATIC_ART_ARCHITECTURE_OVERVIEW.md

# ============================================================
# STATIC ART ARCHITECTURE OVERVIEW
# ============================================================

status: canonical-overview
layer: architecture
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Architecture Objective

The architecture of StaticArtOS must preserve canonical asset ownership while supporting marketplace distribution, subscription access, library projection, reader / viewer continuity, and Exhibition Builder projection.

## 2. Core Domains

- Asset Master Domain
- Metadata and Localization Domain
- Rights Domain
- Sales Domain
- Subscription Domain
- Entitlement Domain
- Library Projection Domain
- Reader / Viewer Continuity Domain
- Review and Release Domain
- Marketplace Discovery Domain
- Exhibition Projection Domain

## 3. Source-of-Truth Rules

### StaticArtOS is canonical for:
- asset identity
- metadata
- preview and sample definition
- rights state
- release state
- marketplace publish state
- subscription eligibility state
- entitlement state
- library projection state
- reader / viewer progress
- exhibition projection state

### StaticArtOS is not canonical for:
- payment settlement engine internals
- external accounting internals
- exhibition placement state

## 4. Domain Dependencies

Asset Master is the root domain.

Metadata, Rights, Sales, and Subscription depend on Asset Master.

Entitlement depends on successful commercial or subscription events.

Library Projection depends on Entitlement plus Rights.

Reader / Viewer Continuity depends on Entitlement plus Asset Type.

Exhibition Projection depends on:
- publish state
- restriction state
- rights state
- entitlement policy
- regional and age policy

## 5. Projection Principle

Projection domains must never become the write authority for asset master data. They are derived and refreshable views.

## 6. Consumption Principle

Consumption surfaces must not directly reason on raw sales or upload state. They must rely on resolved entitlement and policy outputs.

## 7. Subscription Principle

Subscription access must be represented as independent entitlement state and must not mutate permanent ownership records.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/020.architecture/000_STATIC_ART_ARCHITECTURE_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/040.runtime/000_STATIC_ART_RUNTIME_ENTITLEMENT_AND_CONSUMPTION_BEHAVIOR.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/040.runtime/000_STATIC_ART_RUNTIME_ENTITLEMENT_AND_CONSUMPTION_BEHAVIOR.md

# ============================================================
# STATIC ART RUNTIME ENTITLEMENT AND CONSUMPTION BEHAVIOR
# ============================================================

status: implementation-ready-runtime
layer: runtime
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Entitlement Resolution Order

1. asset exists and current version is visible
2. lifecycle state allows exposure
3. regional policy allows exposure
4. age policy allows exposure
5. rights policy allows requested action
6. ownership or subscription entitlement is checked
7. sample entitlement is checked if full entitlement is absent
8. action set is returned

## 2. Open Action Rules

### Sample Open
Allowed when:
- sample assets exist
- sample is published
- region and age policy allow sample exposure

### Full Reader Open
Allowed when:
- asset type is publishing
- entitlement state is owned_permanent or subscription_access or owned_and_subscription_access
- lifecycle state is published
- rights do not block full access

### Full Viewer Open
Allowed when:
- asset type is visual
- entitlement state is owned_permanent or subscription_access or owned_and_subscription_access
- lifecycle state is published
- rights do not block full access

## 3. Library Visibility Rules

### Visible in My Library
True when:
- entitlement state is owned_permanent or subscription_access or owned_and_subscription_access
- blocked flags are false

### Visible in Continue Reading
True when:
- asset type is publishing
- last-opened exists
- user still has a full-open entitlement

### Visible in Continue Viewing
True when:
- asset type is visual
- last-opened exists
- user still has a full-open entitlement

## 4. Subscription Expiry Runtime

When subscription expires:
- subscription_access is removed
- owned_permanent remains if present
- library visibility is recalculated
- progress history may remain stored
- full-open action is removed if no remaining entitlement exists

## 5. Rights Change Runtime

When rights are tightened:
- marketplace exposure may be removed
- library access may be blocked
- exhibition projection may be revoked
- progress and bookmark history remain stored unless deletion is mandated by policy


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/040.runtime/000_STATIC_ART_RUNTIME_ENTITLEMENT_AND_CONSUMPTION_BEHAVIOR.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/040.runtime/000_STATIC_ART_RUNTIME_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/040.runtime/000_STATIC_ART_RUNTIME_INDEX.md

# ============================================================
# STATIC ART RUNTIME INDEX
# ============================================================

status: canonical-index
layer: runtime
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_RUNTIME_INDEX.md
- 000_STATIC_ART_RUNTIME_OVERVIEW.md
- 000_STATIC_ART_RUNTIME_ENTITLEMENT_AND_CONSUMPTION_BEHAVIOR.md

## Scope

- runtime responsibility
- entitlement resolution runtime
- reader and viewer runtime behavior
- library visibility runtime behavior
- projection refresh runtime behavior


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/040.runtime/000_STATIC_ART_RUNTIME_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/040.runtime/000_STATIC_ART_RUNTIME_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/040.runtime/000_STATIC_ART_RUNTIME_OVERVIEW.md

# ============================================================
# STATIC ART RUNTIME OVERVIEW
# ============================================================

status: canonical-overview
layer: runtime
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Runtime Objective

StaticArtOS runtime must resolve whether a user can discover, open, read, view, favorite, bookmark, or project an asset based on policy, entitlement, asset type, and current publication status.

## 2. Runtime Inputs

- asset lifecycle state
- rights state
- subscription state
- ownership state
- regional policy
- age policy
- asset type
- platform type
- download availability
- current version visibility

## 3. Runtime Outputs

- marketplace card badges
- product detail actions
- sample-open availability
- full-open availability
- library visibility
- continue reading visibility
- continue viewing visibility
- exhibition projection eligibility
- reason codes for denial

## 4. Runtime Principles

- runtime must resolve from canonical data, not temporary UI assumptions
- runtime must treat ownership and subscription as different entitlement paths
- runtime must block access when policy or rights require blocking
- runtime must preserve allowed continuity data such as progress and bookmarks
- runtime must support platform-aware reader and viewer behavior


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/040.runtime/000_STATIC_ART_RUNTIME_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/050.flow/000_STATIC_ART_CORE_FLOW_INTEGRATED.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/050.flow/000_STATIC_ART_CORE_FLOW_INTEGRATED.md

# ============================================================
# STATIC ART CORE FLOW INTEGRATED
# ============================================================

status: integrated-canonical
layer: flow
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Creator Upload Flow

1. creator starts draft
2. creator selects asset type
3. files are uploaded
4. metadata is completed
5. preview and sample are configured
6. rights are configured
7. sales and subscription settings are configured
8. self-check is executed
9. review is submitted
10. approval or rework decision is returned
11. asset becomes published when approved

## 2. Marketplace Purchase Flow

1. user enters marketplace
2. user switches tab
3. user filters and sorts
4. user opens product detail
5. user opens sample if desired
6. user starts purchase
7. successful purchase event is received
8. entitlement is written as owned_permanent
9. library projection is refreshed
10. product detail changes to owned state
11. read or view action becomes available

## 3. Subscription Access Flow

1. user has active subscription
2. asset is subscription eligible
3. product detail shows included-in-subscription
4. user opens full content without permanent purchase
5. usage measurement is recorded
6. progress is saved
7. if subscription ends, full access is recalculated

## 4. Library Flow

1. entitlement state changes
2. library projection refresh runs
3. asset appears or disappears in My Library
4. continue reading or viewing is recalculated
5. favorites remain stored independent of entitlement
6. downloaded visibility recalculates by current entitlement and local cache

## 5. Reader and Viewer Flow

1. entitled user opens asset
2. correct surface is selected by asset type
3. last-opened location is restored when available
4. user reads or views
5. progress and last-opened are saved
6. bookmarks, notes, or highlights are saved when relevant
7. Continue Reading or Continue Viewing projections are refreshed

## 6. Restriction and Delist Flow

1. rights or policy change occurs
2. asset is reviewed for restriction impact
3. marketplace visibility is recalculated
4. library access is recalculated
5. projection eligibility is recalculated
6. denial reasons are stored for audit

## 7. Exhibition Projection Flow

1. asset is published and eligible
2. rights and entitlement rules are resolved
3. projection record is refreshed
4. CivilizationOS queries projection data
5. Exhibition Builder displays eligible assets only


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/050.flow/000_STATIC_ART_CORE_FLOW_INTEGRATED.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/050.flow/000_STATIC_ART_FLOW_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/050.flow/000_STATIC_ART_FLOW_INDEX.md

# ============================================================
# STATIC ART FLOW INDEX
# ============================================================

status: canonical-index
layer: flow
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_FLOW_INDEX.md
- 000_STATIC_ART_FLOW_OVERVIEW.md
- 000_STATIC_ART_CORE_FLOW_INTEGRATED.md

## Scope

- upload flow
- review and release flow
- purchase flow
- subscription flow
- library flow
- reader and viewer flow
- projection flow


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/050.flow/000_STATIC_ART_FLOW_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/050.flow/000_STATIC_ART_FLOW_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/050.flow/000_STATIC_ART_FLOW_OVERVIEW.md

# ============================================================
# STATIC ART FLOW OVERVIEW
# ============================================================

status: canonical-overview
layer: flow
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Flow Objective

StaticArtOS flows define how assets move from draft to marketplace visibility, how users gain access, how library and reader/viewer continuity are maintained, and how eligible assets become available to Exhibition Builder.

## 2. Core Flow Groups

- creator upload and metadata completion
- rights and commercial setup
- review and release
- marketplace discovery and purchase
- subscription access
- library and shelf refresh
- reading and viewing continuity
- restriction and delist
- exhibition projection refresh


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/050.flow/000_STATIC_ART_FLOW_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_COMMON_COMPONENT_PROMOTION_CANDIDATES.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_COMMON_COMPONENT_PROMOTION_CANDIDATES.md


============================================================

STATIC ART COMMON COMPONENT PROMOTION CANDIDATES

============================================================

status: candidate-ledger
layer: integration
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

1. Purpose

This document lists the common component promotion candidates discovered after the implementation-ready design of StaticArtOS.

These components are candidates for promotion into shared application-level common components when they are proven reusable across multiple systems.

2. Promotion Policy

A component should be promoted only when:

its responsibility is stable

its API surface is stable

its state model is reusable

its permission rules are reusable

its UI or behavior is not overly StaticArtOS-specific

at least one other application can realistically adopt it


3. Common Component Candidate List

3.1 Asset Upload Common

Purpose:

reusable asset upload initiation

draft creation entry

file attachment orchestration


Expected reuse:

any asset-centric application with upload-first behavior


3.2 Asset Metadata Editor Common

Purpose:

title

subtitle

description

localization block editing

category and tag assignment


Expected reuse:

creator apps

publishing apps

marketplace apps

archive apps


3.3 Rights Policy Editor Common

Purpose:

exhibition permission

derivative permission

commercial permission

region scope

age policy


Expected reuse:

asset and content applications with policy-driven visibility


3.4 Sales Offer Editor Common

Purpose:

base price

base currency

sale type

sale period

listing status


Expected reuse:

marketplace-connected applications


3.5 Subscription Eligibility Editor Common

Purpose:

subscription inclusion flag

start / end window

creator opt-in

inclusion notes


Expected reuse:

subscription-supported content applications


3.6 Marketplace Listing Common

Purpose:

tab-based listing

card rendering

badge rendering

owned / included rendering


Expected reuse:

commerce-facing catalog applications


3.7 Marketplace Filter Panel Common

Purpose:

category filter

tag filter

language filter

creator filter

price range filter

ownership filter

subscription inclusion filter


Expected reuse:

search-heavy and discovery-heavy applications


3.8 Marketplace Sort Panel Common

Purpose:

newest

oldest

popularity

best selling

price ascending / descending

title ascending / descending


Expected reuse:

marketplace and asset discovery applications


3.9 Product Card Common

Purpose:

thumbnail

title

creator

type badge

price

owned badge

included badge

sample badge


Expected reuse:

catalog and commerce surfaces


3.10 Product Detail Summary Common

Purpose:

hero summary

creator summary

rights summary

price summary

subscription summary

action rendering


Expected reuse:

product detail surfaces across content marketplaces


3.11 Owned Badge Common

Purpose:

render permanent ownership state consistently


Expected reuse:

owned-library and purchase-driven systems


3.12 Subscription Included Badge Common

Purpose:

render included-in-subscription state consistently


Expected reuse:

subscription-based content systems


3.13 Sample Access Common

Purpose:

sample-open action

sample availability badge

sample eligibility rendering


Expected reuse:

preview-supported catalog systems


3.14 Library Shelf Common

Purpose:

owned content shelf

continue shelf

favorites shelf

downloaded shelf


Expected reuse:

library-oriented or content consumption systems


3.15 Continue Reading / Continue Viewing Common

Purpose:

resume cards

last-opened rendering

progress snippet rendering


Expected reuse:

content continuity systems


3.16 Bookmark Common

Purpose:

bookmark create

bookmark list

bookmark removal


Expected reuse:

reader and viewer experiences


3.17 Favorite Toggle Common

Purpose:

toggle favorite state

reflect favorite badge state


Expected reuse:

discovery, library, and collection systems


3.18 Reader Progress Sync Common

Purpose:

save progress

sync version

continue projection trigger


Expected reuse:

reading systems


3.19 Viewer Progress Sync Common

Purpose:

save last-opened

save view progress

continue projection trigger


Expected reuse:

viewing systems


3.20 Multilingual Label Common

Purpose:

label-key-based multilingual rendering

fallback language behavior


Expected reuse:

all multilingual apps


3.21 Multicurrency Price Display Common

Purpose:

base currency rendering

display currency rendering

historical amount label rendering


Expected reuse:

all commerce-connected apps


3.22 Review Queue Common

Purpose:

pending review list

review action buttons

approve / reject / rework / restrict behavior


Expected reuse:

governance-heavy applications


3.23 Restriction Policy Summary Common

Purpose:

blocked reason summary

restriction explanation rendering

denial reason badges


Expected reuse:

policy-driven access systems


3.24 Exhibition Eligibility Badge Common

Purpose:

render whether an asset is eligible for exhibition usage


Expected reuse:

creator systems and exhibition-connected systems


4. Promotion Priority

Priority A

Asset Metadata Editor Common

Rights Policy Editor Common

Marketplace Listing Common

Marketplace Filter Panel Common

Product Card Common

Library Shelf Common

Multilingual Label Common

Multicurrency Price Display Common


Priority B

Sales Offer Editor Common

Subscription Eligibility Editor Common

Sample Access Common

Review Queue Common

Favorite Toggle Common

Continue Reading / Continue Viewing Common


Priority C

Reader Progress Sync Common

Viewer Progress Sync Common

Restriction Policy Summary Common

Exhibition Eligibility Badge Common


5. Final Note

These are promotion candidates, not yet promoted shared components.

Promotion should be executed only after:

contract stability

adoption readiness

cross-app validation

naming and ownership review


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_COMMON_COMPONENT_PROMOTION_CANDIDATES.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_EXHIBITION_BUILDER_INTEGRATION_CONTRACT.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_EXHIBITION_BUILDER_INTEGRATION_CONTRACT.md

# ============================================================
# STATIC ART EXHIBITION BUILDER INTEGRATION CONTRACT
# ============================================================

status: implementation-ready-integration
layer: integration
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This contract defines the projection payload that StaticArtOS provides to Exhibition Builder.

## 2. Required Projection Fields

- asset_id
- asset_type
- title
- creator_display_name
- short_description
- thumbnail_url
- preview_url
- entitlement_state
- exhibition_allowed
- additional_license_required
- price_label
- rights_summary
- current_version_no
- collection_ref
- series_ref
- usable_in_exhibition_builder

## 3. Eligibility Conditions

Projection is usable only when all are true:
- asset lifecycle is published
- asset is not restricted or archived
- rights policy allows exhibition
- regional policy allows exposure
- age policy allows exposure
- entitlement policy is satisfied when required
- current version is visible

## 4. Query Contract

### Read Eligible Assets

GET /v1/staticart/exhibition/projection?ownerUserId={userId}&eligibleOnly=true

### Response Shape

- items[]
  - assetId
  - assetType
  - title
  - creatorName
  - description
  - thumbnailUrl
  - previewUrl
  - entitlementState
  - exhibitionAllowed
  - additionalLicenseRequired
  - priceLabel
  - rightsSummary
  - usableInExhibitionBuilder

## 5. Mutation Rule

Exhibition Builder may read and reference projection data but may not mutate StaticArtOS canonical asset, rights, entitlement, or projection source records.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_EXHIBITION_BUILDER_INTEGRATION_CONTRACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_INTEGRATION_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_INTEGRATION_INDEX.md

# ============================================================
# STATIC ART INTEGRATION INDEX
# ============================================================

status: canonical-index
layer: integration
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_INTEGRATION_INDEX.md
- 000_STATIC_ART_INTEGRATION_OVERVIEW.md
- 000_STATIC_ART_EXHIBITION_BUILDER_INTEGRATION_CONTRACT.md
- 000_STATIC_ART_COMMON_COMPONENT_PROMOTION_CANDIDATES.md
- 000_STATIC_ART_CX22073_CANDIDATE_DATA_AREAS.md
- 00_STATIC_ART_INTEGRATION_INTEGRATED.md

## Scope

- commercial integration
- purchase reflection integration
- subscription integration
- projection integration
- downstream contract boundaries
- common component promotion candidate linkage
- CX22073 candidate data area linkage
- integrated integration ledger


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_INTEGRATION_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_INTEGRATION_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_INTEGRATION_OVERVIEW.md

# ============================================================
# STATIC ART INTEGRATION OVERVIEW
# ============================================================

status: canonical-overview
layer: integration
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Integration Objective

StaticArtOS integrates with external commercial and downstream systems while remaining the canonical owner of asset, entitlement, projection state, and post-design promotion candidates for shared components and CX22073 reference areas.

## 2. Integration Directions

### Commercial Direction
- purchase success events enter StaticArtOS
- subscription status events enter StaticArtOS
- settlement measurement events may leave StaticArtOS

### Downstream Direction
- Exhibition Builder reads projection payloads from StaticArtOS
- downstream systems do not mutate StaticArtOS asset master

### Promotion Direction
- common component promotion candidates are reviewed from StaticArtOS reusable surfaces
- CX22073 candidate data areas are reviewed from StaticArtOS reference and projection needs

## 3. Integration Principles

- inbound commercial events must be idempotent
- outbound projection data must be derived and refreshable
- ownership and subscription are resolved inside StaticArtOS after integration events arrive
- exact integration contracts must not rely on UI-only fields
- common component promotion must not blur domain ownership
- CX22073 placement must not blur canonical source-of-truth boundaries

## 4. Related Integration Documents

- 000_STATIC_ART_EXHIBITION_BUILDER_INTEGRATION_CONTRACT.md
- 000_STATIC_ART_COMMON_COMPONENT_PROMOTION_CANDIDATES.md
- 000_STATIC_ART_CX22073_CANDIDATE_DATA_AREAS.md
- 00_STATIC_ART_INTEGRATION_INTEGRATED.md

## 5. Integrated Document Rule

The integrated integration document must be treated as the consolidated reference point for:

- commercial integration principles
- subscription integration principles
- Exhibition Builder integration principles
- common component promotion candidate linkage
- CX22073 candidate data area linkage
- canonical ownership guardrails inside integration design


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/000_STATIC_ART_INTEGRATION_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/001_STATIC_ART_COMMON_COMPONENT_REVIEW_MATRIX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/001_STATIC_ART_COMMON_COMPONENT_REVIEW_MATRIX.md

# ============================================================
# STATIC ART COMMON COMPONENT REVIEW MATRIX
# ============================================================

status: review-matrix
layer: integration
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document reviews the promotion candidates discovered in StaticArtOS
and prepares them for formal shared-component selection.

The matrix is not the final promotion decision.
It is the evaluation layer before official selection.

## 2. Review Columns

Each candidate is reviewed by:

- reuse_strength
- contract_stability
- ownership_clarity
- cross_app_readiness
- review_comment
- next_action

Allowed values:

- reuse_strength: high / medium / low
- contract_stability: high / medium / low
- ownership_clarity: clear / partial / unclear
- cross_app_readiness: ready / near-ready / later
- next_action: shortlist / hold / split / merge-review

## 3. Review Matrix

### 3.1 Priority A Candidates

| candidate | reuse_strength | contract_stability | ownership_clarity | cross_app_readiness | review_comment | next_action |
|---|---|---|---|---|---|---|
| Asset Metadata Editor Common | high | medium | partial | near-ready | likely reusable across creator and archive apps, but metadata contract needs exact normalization | shortlist |
| Rights Policy Editor Common | high | medium | partial | near-ready | strong reusable policy editor candidate, but policy scope boundaries need exact review | shortlist |
| Marketplace Listing Common | high | high | clear | ready | highly reusable catalog/listing surface family | shortlist |
| Marketplace Filter Panel Common | high | high | clear | ready | reusable discovery filter family across content marketplaces | shortlist |
| Product Card Common | high | high | clear | ready | strong reusable commerce/catalog card surface | shortlist |
| Library Shelf Common | high | medium | clear | near-ready | reusable, but shelf taxonomy should be stabilized first | shortlist |
| Multilingual Label Common | very-high | high | clear | ready | global cross-app foundation candidate | shortlist |
| Multicurrency Price Display Common | very-high | high | clear | ready | global commerce-connected foundation candidate | shortlist |

### 3.2 Priority B Candidates

| candidate | reuse_strength | contract_stability | ownership_clarity | cross_app_readiness | review_comment | next_action |
|---|---|---|---|---|---|---|
| Sales Offer Editor Common | medium | medium | partial | near-ready | useful but partially tied to marketplace price model details | hold |
| Subscription Eligibility Editor Common | medium | medium | partial | near-ready | reusable for subscription systems, but eligibility contract needs more stabilization | hold |
| Sample Access Common | medium | medium | clear | near-ready | reusable preview family, but sample policy logic may vary by app | hold |
| Review Queue Common | high | medium | partial | near-ready | useful governance surface, but review action model should be normalized first | shortlist |
| Favorite Toggle Common | high | high | clear | ready | small but highly reusable interaction common | shortlist |
| Continue Reading / Continue Viewing Common | high | medium | partial | near-ready | reusable continuity family, but unify reading vs viewing contract first | merge-review |

### 3.3 Priority C Candidates

| candidate | reuse_strength | contract_stability | ownership_clarity | cross_app_readiness | review_comment | next_action |
|---|---|---|---|---|---|---|
| Reader Progress Sync Common | medium | medium | partial | later | useful, but sync contract should be unified with viewer-progress family first | merge-review |
| Viewer Progress Sync Common | medium | medium | partial | later | useful, but sync contract should be unified with reader-progress family first | merge-review |
| Restriction Policy Summary Common | medium | medium | partial | later | useful for policy-heavy systems, but rule taxonomy needs more stabilization | hold |
| Exhibition Eligibility Badge Common | medium | high | partial | near-ready | reusable for exhibition-connected systems, but eligibility source contract needs review | hold |

## 4. Initial Shortlist Recommendation

### shortlist_now
- Asset Metadata Editor Common
- Rights Policy Editor Common
- Marketplace Listing Common
- Marketplace Filter Panel Common
- Product Card Common
- Library Shelf Common
- Multilingual Label Common
- Multicurrency Price Display Common
- Review Queue Common
- Favorite Toggle Common

### merge_review_first
- Continue Reading / Continue Viewing Common
- Reader Progress Sync Common
- Viewer Progress Sync Common

### hold_for_later
- Sales Offer Editor Common
- Subscription Eligibility Editor Common
- Sample Access Common
- Restriction Policy Summary Common
- Exhibition Eligibility Badge Common

## 5. Recommended Next Step

Create:

- 002_STATIC_ART_COMMON_COMPONENT_OFFICIAL_SELECTION.md

and move only:
- shortlist_now

into the first official selection pass.

## 6. Final Note

This matrix is a review layer only.
No candidate is officially promoted yet.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/001_STATIC_ART_COMMON_COMPONENT_REVIEW_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/00_STATIC_ART_INTEGRATION_INTEGRATED.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/00_STATIC_ART_INTEGRATION_INTEGRATED.md

# ============================================================
# STATIC ART INTEGRATION INTEGRATED
# ============================================================

status: integrated-canonical
layer: integration
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Integration Identity

StaticArtOS integrates with commercial systems, subscription-supporting systems, and downstream projection-consuming systems while remaining the canonical owner of:

- asset identity
- rights state
- entitlement state
- library visibility logic
- projection source logic

Integration must never transfer canonical ownership of these responsibilities out of StaticArtOS.

## 2. Integration Scope

### Inbound Integration
- purchase success event intake
- subscription status event intake
- settlement-measurement-related event output preparation
- external entitlement-triggered refresh handling

### Outbound Integration
- Exhibition Builder projection query support
- marketplace-related derived output support
- promotion review support for common components
- promotion review support for CX22073 candidate data areas

## 3. Commercial Integration Principle

Commercial execution may happen outside StaticArtOS, but the following must be resolved inside StaticArtOS after successful commercial events arrive:

- owned entitlement creation
- subscription access entitlement creation
- library visibility refresh
- owned-state UI rendering
- read / view action availability
- projection eligibility refresh where relevant

Inbound commercial events must be:
- idempotent
- traceable
- audit-friendly
- non-destructive to canonical history

## 4. Subscription Integration Principle

Subscription integration must support an Amazon-like access model:

- active subscription grants access to included assets
- subscription access does not create permanent ownership
- subscription expiry removes access unless another entitlement path remains
- measurement events may be emitted for settlement-related downstream use

Subscription integration must not collapse:
- owned_permanent
- subscription_access
- sample_only

into a single semantic state.

## 5. Exhibition Builder Integration Principle

Exhibition Builder may consume only projection-ready data.

It may:
- query eligible assets
- display title, creator, description, rights summary, price label, and projection media
- reference asset identifiers during exhibition composition

It may not:
- mutate asset master state
- mutate rights state
- mutate entitlement state
- mutate projection source records

## 6. Exhibition Builder Required Projection Fields

StaticArtOS must be able to provide:

- asset_id
- asset_type
- title
- creator_display_name
- short_description
- thumbnail_url
- preview_url
- entitlement_state
- exhibition_allowed
- additional_license_required
- price_label
- rights_summary
- current_version_no
- collection_ref
- series_ref
- usable_in_exhibition_builder

## 7. Projection Eligibility Rules

An asset is projection-eligible only when all of the following are true:

- lifecycle state is published
- restriction state does not block exposure
- rights policy allows exhibition
- regional policy allows exposure
- age policy allows exposure
- entitlement policy allows exhibition usage when required
- current visible version is valid

## 8. Common Component Promotion Candidate Linkage

StaticArtOS implementation-ready design surfaced the following reusable component candidate families:

- asset upload and metadata editing
- rights and sales editing
- subscription eligibility editing
- marketplace listing, filtering, sorting, and product cards
- owned, included, and sample rendering badges
- library shelf and continue reading / viewing surfaces
- favorites, bookmarks, and continuity sync surfaces
- multilingual and multicurrency rendering
- review and restriction explanation surfaces

These candidates are documented separately in:

- 000_STATIC_ART_COMMON_COMPONENT_PROMOTION_CANDIDATES.md

Promotion is allowed only after:
- stability review
- cross-app reuse review
- ownership review
- contract review

## 9. CX22073 Candidate Data Area Linkage

StaticArtOS implementation-ready design also surfaced candidate reference and projection-oriented data areas for CX22073, including:

- static art asset summary areas
- publishing asset summary areas
- localized metadata areas
- rights policy areas
- sales offer areas
- marketplace listing projection areas
- subscription policy areas
- ownership and library-related areas
- reader continuity areas
- bookmark and favorite areas
- version history areas
- review case areas
- exhibition projection areas
- ranking and filter support areas
- settlement measurement support areas

These candidates are documented separately in:

- 000_STATIC_ART_CX22073_CANDIDATE_DATA_AREAS.md

Placement into CX22073 must not blur canonical ownership boundaries.

## 10. Integration Guardrails

The following must remain true at all times:

- StaticArtOS is the canonical owner of asset, rights, entitlement, and projection source logic
- derived indexes and projections are refreshable and non-canonical
- downstream systems consume projections and references, not master-state mutation rights
- promotion to shared components must not turn StaticArtOS-specific behavior into unstable common abstractions
- CX22073 storage must remain knowledge/reference-oriented, not canonical transaction-authority-oriented

## 11. Related Files

- 000_STATIC_ART_INTEGRATION_INDEX.md
- 000_STATIC_ART_INTEGRATION_OVERVIEW.md
- 000_STATIC_ART_EXHIBITION_BUILDER_INTEGRATION_CONTRACT.md
- 000_STATIC_ART_COMMON_COMPONENT_PROMOTION_CANDIDATES.md
- 000_STATIC_ART_CX22073_CANDIDATE_DATA_AREAS.md

## 12. Final Integration Conclusion

StaticArtOS integration is complete at the design level when:

- commercial event intake is exact
- subscription integration semantics are exact
- Exhibition Builder projection contract is exact
- common component promotion candidates are documented
- CX22073 candidate data areas are documented
- canonical ownership guardrails are explicit and preserved


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.integration/00_STATIC_ART_INTEGRATION_INTEGRATED.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.reference-integration/060130_STATIC_ART_OS_CX22073JW_REFERENCE_INTEGRATION_EXACTNESS.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.reference-integration/060130_STATIC_ART_OS_CX22073JW_REFERENCE_INTEGRATION_EXACTNESS.md

# ============================================================
# STATIC ART OS CX22073JW REFERENCE INTEGRATION EXACTNESS
# ============================================================

status: implementation-ready
system: StaticArtOS
layer: reference-integration
owner: Boss
prepared_by: Zero

foundation:
  - CX22073JW is not just storage.
  - CX22073JW is an AI-enabled knowledge and reference base.
  - StaticArtOS must send searchable, optimizable, cross-surface reference data.
  - Canonical write remains inside StaticArtOS.

official_reference_areas:
  - staticart_projection_search_area
  - staticart_preview_summary_area
  - staticart_rights_reference_area
  - staticart_continuity_signal_area
  - staticart_review_risk_reference_area
  - staticart_exhibition_reference_area

area_definitions:
  staticart_projection_search_area:
    role: marketplace/library/builder high-speed search and filter reference
    includes:
      - asset_id
      - visible title summary
      - asset_type
      - creator summary
      - badges
      - projection status
      - search tokens
      - language availability
      - lightweight filter fields
    excludes:
      - canonical sales source
      - canonical rights source
      - full file manifest

  staticart_preview_summary_area:
    role: product detail and preview rendering reference
    includes:
      - thumbnail refs
      - preview refs
      - sample availability summary
      - short description
      - presentation summary

  staticart_rights_reference_area:
    role: rights lookup and reasoning helper
    includes:
      - exhibition_allowed
      - derivative/commercial flags
      - age_rating
      - region_mode summary
      - effective block summary
      - rights summary text
      - latest effective window

  staticart_continuity_signal_area:
    role: continuation ordering and recency reference
    includes:
      - asset_id
      - user_id
      - last_opened_at
      - progress summary
      - favorite flag
      - device class summary
      - continue visibility signal

  staticart_review_risk_reference_area:
    role: review prioritization and governance monitoring reference
    includes:
      - asset_id
      - review round count
      - restriction history summary
      - reason code frequencies
      - integrity issue summary
      - risk tags

  staticart_exhibition_reference_area:
    role: safe lightweight read surface for Exhibition Builder
    includes:
      - asset_id
      - projection_status
      - usable_in_exhibition_builder
      - reason_codes
      - rights_summary_short
      - price_label
      - projection_refreshed_at

boundary:
  canonical_in_staticart:
    - asset_master
    - asset_version
    - asset_file
    - asset_localization
    - asset_rights_policy
    - asset_sales_offer
    - asset_subscription_rule
    - asset_review_request
    - asset_review_decision
    - user_asset_entitlement
    - user_reader_progress
    - user_viewer_progress
    - user_asset_annotation
    - user_asset_favorite
    - asset_audit_event

  reference_in_cx22073jw:
    - projection
    - summary
    - ranking
    - reference
    - risk
    - search

sync_direction:
  default: StaticArtOS canonical -> CX22073JW
  reverse_write: forbidden
  allowed_return_signals:
    - ai suggestion tag
    - risk hint
    - placement hint
  note:
    reverse signals must not overwrite canonical automatically

refresh_triggers:
  - publish
  - delist
  - restrict
  - archive
  - rights policy change
  - sales change
  - subscription change
  - localization change
  - projection refresh
  - progress save
  - favorite add/remove
  - review decision

retention:
  canonical:
    - preserve history
    - do not treat cx area as canonical backup
  cx22073jw:
    - keep latest reference-optimized surfaces
    - allow derived regeneration
    - keep tombstone-like summary for revoked/archived when useful
    - allow retention policy on continuity signals


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.reference-integration/060130_STATIC_ART_OS_CX22073JW_REFERENCE_INTEGRATION_EXACTNESS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.reference-integration/060_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.reference-integration/060_INDEX.md

# ============================================================
# REFERENCE INTEGRATION INDEX
# ============================================================

status: active
system: StaticArtOS
folder: 060.reference-integration
owner: Boss
prepared_by: Zero

purpose:
- Directory navigation entry point
- Repair-generated because INDEX was missing

subfolders:
- none

files:
- 060130_STATIC_ART_OS_CX22073JW_REFERENCE_INTEGRATION_EXACTNESS.md
- 060_INDEX.md


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.reference-integration/060_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.reference-integration/060_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.reference-integration/060_OVERVIEW.md

# ============================================================
# REFERENCE INTEGRATION OVERVIEW
# ============================================================

status: active
system: StaticArtOS
folder: 060.reference-integration
owner: Boss
prepared_by: Zero

summary:
- This folder belongs to StaticArtOS standalone implementation-prep flow.
- This overview was repair-generated because OVERVIEW was missing.
- Detailed semantics should continue to live in the canonical files already placed under this folder.

notes:
- Non-destructive generation only.
- Existing files were not overwritten.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.reference-integration/060_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/000_STATIC_ART_OPERATIONS_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/000_STATIC_ART_OPERATIONS_INDEX.md

# ============================================================
# STATIC ART OPERATIONS INDEX
# ============================================================

status: canonical-index
layer: operations
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_OPERATIONS_INDEX.md
- 000_STATIC_ART_OPERATIONS_OVERVIEW.md
- 000_STATIC_ART_REVIEW_AND_RELEASE_OPERATIONS.md

## Scope

- moderation and review
- release operations
- rollback and restriction
- audit and support operations


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/000_STATIC_ART_OPERATIONS_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/000_STATIC_ART_OPERATIONS_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/000_STATIC_ART_OPERATIONS_OVERVIEW.md

# ============================================================
# STATIC ART OPERATIONS OVERVIEW
# ============================================================

status: canonical-overview
layer: operations
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Operations Objective

StaticArtOS operations must support safe release, rights review, subscription review, restriction handling, entitlement support, and projection audit.

## 2. Operational Domains

- metadata review
- rights review
- release review
- subscription inclusion review
- restriction handling
- delist handling
- projection audit
- user access support
- rollback support

## 3. Operational Principles

- no destructive deletion as the default path
- restriction and delist must preserve auditability
- release must have clear approval states
- user access support must inspect entitlement source and policy reason codes


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/000_STATIC_ART_OPERATIONS_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/000_STATIC_ART_REVIEW_AND_RELEASE_OPERATIONS.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/000_STATIC_ART_REVIEW_AND_RELEASE_OPERATIONS.md

# ============================================================
# STATIC ART REVIEW AND RELEASE OPERATIONS
# ============================================================

status: implementation-ready-operations
layer: operations
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Review Types

- metadata review
- rights review
- marketplace review
- subscription review
- restriction review

## 2. Review Outcomes

- approved
- rejected
- returned_for_rework
- restricted

## 3. Release Preconditions

An asset may be released only when:
- required files exist
- required metadata exists
- rights review is approved
- sales review is approved when for-sale
- subscription review is approved when subscription-included
- publish window allows release

## 4. Rollback and Delist

Rollback means:
- new exposure is stopped
- marketplace visibility is removed or paused
- library access recalculates only when policy requires it
- projection eligibility is refreshed
- audit records are preserved

## 5. Support Investigation Inputs

Operations staff must be able to inspect:
- entitlement state
- entitlement source
- lifecycle state
- rights policy
- regional policy
- age policy
- current projection eligibility reason


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/000_STATIC_ART_REVIEW_AND_RELEASE_OPERATIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/070_ROADMAP.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/070_ROADMAP.md

# ============================================================
# 070 OPERATIONS ROADMAP
# ============================================================

status: active
system: StaticArtOS
owner: Boss
prepared_by: Zero

summary:
- This roadmap file was repair-generated for operations-oriented navigation.
- Detailed execution commands remain in the canonical operation and check files.

operation_flow:
- confirm PERSONA_DATABASE_URL
- run the relevant phase check or launcher
- record blockers
- update completion memo


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/070.operations/070_ROADMAP.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/080.policy/000_STATIC_ART_POLICY_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/080.policy/000_STATIC_ART_POLICY_INDEX.md

# ============================================================
# STATIC ART POLICY INDEX
# ============================================================

status: canonical-index
layer: policy
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_POLICY_INDEX.md
- 000_STATIC_ART_POLICY_OVERVIEW.md
- 000_STATIC_ART_RIGHTS_SUBSCRIPTION_AND_RESTRICTION_POLICY.md

## Scope

- rights policy
- subscription policy
- regional and age policy
- marketplace exposure policy
- delist and restriction policy


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/080.policy/000_STATIC_ART_POLICY_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/080.policy/000_STATIC_ART_POLICY_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/080.policy/000_STATIC_ART_POLICY_OVERVIEW.md

# ============================================================
# STATIC ART POLICY OVERVIEW
# ============================================================

status: canonical-overview
layer: policy
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Policy Objective

StaticArtOS policy determines what may be exposed, sold, subscribed to, read, viewed, or projected based on rights, geography, age, and operational status.

## 2. Policy Families

- rights exposure policy
- sales policy
- subscription inclusion policy
- regional policy
- age policy
- restriction and delist policy
- projection policy

## 3. Policy Precedence

The precedence order is:

1. restriction policy
2. rights policy
3. regional policy
4. age policy
5. entitlement policy
6. UI rendering policy


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/080.policy/000_STATIC_ART_POLICY_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/080.policy/000_STATIC_ART_RIGHTS_SUBSCRIPTION_AND_RESTRICTION_POLICY.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/080.policy/000_STATIC_ART_RIGHTS_SUBSCRIPTION_AND_RESTRICTION_POLICY.md

# ============================================================
# STATIC ART RIGHTS SUBSCRIPTION AND RESTRICTION POLICY
# ============================================================

status: implementation-ready-policy
layer: policy
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Rights Policy

If exhibition_allowed is false:
- projection must be blocked
- exhibition badge must be hidden or rendered as not allowed

If commercial_use_allowed is false:
- commercial derivative downstream use must be blocked

If region_scope excludes user region:
- full access must be blocked
- sample access follows explicit sample region policy

## 2. Subscription Policy

Subscription access is allowed only when:
- user subscription is active
- asset subscription_eligible_flag is true
- current time is within subscription window if bounded
- region policy allows subscription access

Subscription access does not create:
- permanent ownership
- exhibition entitlement unless separately allowed by creator policy

## 3. Restriction Policy

Restriction may be triggered by:
- rights conflict
- regional legal requirement
- age classification requirement
- operational safety decision
- asset integrity or release quality issue

When restricted:
- marketplace exposure may be removed
- full access may be blocked
- projection is blocked
- audit reason must be preserved


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/080.policy/000_STATIC_ART_RIGHTS_SUBSCRIPTION_AND_RESTRICTION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/100.security/000_STATIC_ART_ACCESS_AND_ASSET_PROTECTION_POLICY.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/100.security/000_STATIC_ART_ACCESS_AND_ASSET_PROTECTION_POLICY.md

# ============================================================
# STATIC ART ACCESS AND ASSET PROTECTION POLICY
# ============================================================

status: implementation-ready-security
layer: security
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Access Control Classes

- creator
- publisher
- curator
- buyer
- subscriber
- reader
- collector
- admin

## 2. Protected Asset Classes

- full publishing content
- full visual content
- restricted previews
- rights case records
- review case records
- entitlement source details

## 3. Protection Rules

- full asset delivery requires current full entitlement
- sample asset delivery requires sample permission
- rights and review records are admin-only by default
- entitlement write endpoints accept only trusted integration or privileged internal actors
- user progress endpoints may only mutate the caller's own records unless admin support mode applies

## 4. Audit Rule

All changes to:
- rights policy
- restriction state
- entitlement state
- projection eligibility state

must be auditable with actor, timestamp, and reason.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/100.security/000_STATIC_ART_ACCESS_AND_ASSET_PROTECTION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/100.security/000_STATIC_ART_SECURITY_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/100.security/000_STATIC_ART_SECURITY_INDEX.md

# ============================================================
# STATIC ART SECURITY INDEX
# ============================================================

status: canonical-index
layer: security
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_SECURITY_INDEX.md
- 000_STATIC_ART_SECURITY_OVERVIEW.md
- 000_STATIC_ART_ACCESS_AND_ASSET_PROTECTION_POLICY.md

## Scope

- access control
- asset access security
- entitlement protection
- audit security


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/100.security/000_STATIC_ART_SECURITY_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/100.security/000_STATIC_ART_SECURITY_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/100.security/000_STATIC_ART_SECURITY_OVERVIEW.md

# ============================================================
# STATIC ART SECURITY OVERVIEW
# ============================================================

status: canonical-overview
layer: security
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Security Objective

StaticArtOS security must protect restricted assets, entitled content, user continuity data, and review decisions from unauthorized access or mutation.

## 2. Security Surfaces

- creator management surfaces
- admin governance surfaces
- full-content delivery
- sample delivery
- entitlement mutation endpoints
- projection read surfaces
- progress and bookmark data

## 3. Security Principles

- full content must require resolved entitlement
- admin mutations must require role-based authority
- review decisions must be auditable
- projection read must expose only allowed fields
- sample and full-content storage keys must not be treated as public truth


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/100.security/000_STATIC_ART_SECURITY_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/110.infrastructure/000_STATIC_ART_INFRASTRUCTURE_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/110.infrastructure/000_STATIC_ART_INFRASTRUCTURE_INDEX.md

# ============================================================
# STATIC ART INFRASTRUCTURE INDEX
# ============================================================

status: canonical-index
layer: infrastructure
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_INFRASTRUCTURE_INDEX.md
- 000_STATIC_ART_INFRASTRUCTURE_OVERVIEW.md
- 000_STATIC_ART_STORAGE_DELIVERY_AND_INDEXING_ASSUMPTIONS.md

## Scope

- storage assumptions
- delivery assumptions
- indexing assumptions
- cache and refresh assumptions


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/110.infrastructure/000_STATIC_ART_INFRASTRUCTURE_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/110.infrastructure/000_STATIC_ART_INFRASTRUCTURE_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/110.infrastructure/000_STATIC_ART_INFRASTRUCTURE_OVERVIEW.md

# ============================================================
# STATIC ART INFRASTRUCTURE OVERVIEW
# ============================================================

status: canonical-overview
layer: infrastructure
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Infrastructure Objective

Infrastructure must support secure asset storage, efficient preview and sample delivery, marketplace discovery indexing, progress synchronization, and projection refresh.

## 2. Infrastructure Responsibilities

- asset file storage
- preview storage
- sample storage
- metadata indexing
- marketplace filter indexing
- entitlement-aware content delivery
- reader and viewer sync persistence
- projection refresh scheduling

## 3. Infrastructure Principles

- canonical metadata and policy state must remain queryable
- search and filter indexes are derived, not canonical
- projection records are derived and refreshable
- content delivery must remain entitlement-aware


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/110.infrastructure/000_STATIC_ART_INFRASTRUCTURE_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/110.infrastructure/000_STATIC_ART_STORAGE_DELIVERY_AND_INDEXING_ASSUMPTIONS.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/110.infrastructure/000_STATIC_ART_STORAGE_DELIVERY_AND_INDEXING_ASSUMPTIONS.md

# ============================================================
# STATIC ART STORAGE DELIVERY AND INDEXING ASSUMPTIONS
# ============================================================

status: implementation-ready-infrastructure
layer: infrastructure
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Storage Assumptions

Asset storage must distinguish:
- canonical full asset files
- preview assets
- sample assets
- derived thumbnails

## 2. Delivery Assumptions

Delivery paths must distinguish:
- sample delivery
- full entitled delivery
- projection thumbnail delivery

Full delivery must always depend on entitlement resolution.

## 3. Indexing Assumptions

Derived indexes must support:
- marketplace tab listing
- filter search
- sort ranking
- creator and publisher browse
- library visibility projection
- continue reading projection
- continue viewing projection
- exhibition projection lookup

## 4. Refresh Assumptions

Refresh must occur after:
- publish state change
- rights change
- subscription eligibility change
- entitlement change
- progress change
- restriction or delist change


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/110.infrastructure/000_STATIC_ART_STORAGE_DELIVERY_AND_INDEXING_ASSUMPTIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120110_STATIC_ART_OS_DB_SCHEMA_EXACTNESS.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120110_STATIC_ART_OS_DB_SCHEMA_EXACTNESS.md

# ============================================================
# STATIC ART OS DB SCHEMA EXACTNESS
# ============================================================

status: implementation-ready
system: StaticArtOS
layer: exactness
owner: Boss
prepared_by: Zero

schema_name: staticart

enum_fixed:
  asset_type:
    - artwork
    - illustration
    - poster
    - photo_art
    - static_visual
    - book
    - ebook
    - booklet
    - catalog
    - collection_book
    - material_booklet

  lifecycle_state:
    - draft
    - files_uploaded
    - metadata_completed
    - self_check_passed
    - review_pending
    - approved
    - rejected
    - published_marketplace
    - published_library_only
    - delisted
    - restricted
    - replaced
    - archived

  sales_state:
    - not_for_sale
    - for_sale
    - preorder
    - sale_paused
    - sold_out_limited
    - sale_ended

  subscription_state:
    - not_included
    - included_scheduled
    - included_active
    - included_paused
    - included_ended

  entitlement_state:
    - none
    - sample_only
    - subscription_access
    - owned_permanent
    - owned_and_subscription_access
    - blocked_by_region
    - blocked_by_age_policy
    - blocked_by_rights_change

  review_status:
    - pending
    - approved
    - rejected
    - rework_required
    - restricted

  file_role:
    - master_original
    - master_publish
    - preview_image
    - thumbnail
    - sample_file
    - reader_package
    - viewer_image
    - viewer_bundle
    - supplemental_file

  projection_status:
    - eligible
    - ineligible
    - revoked

canonical_tables:
  - staticart.asset_master
  - staticart.asset_version
  - staticart.asset_file
  - staticart.asset_localization
  - staticart.asset_category_map
  - staticart.asset_tag_map
  - staticart.asset_rights_policy
  - staticart.asset_sales_offer
  - staticart.asset_subscription_rule
  - staticart.asset_review_request
  - staticart.asset_review_decision
  - staticart.user_asset_entitlement
  - staticart.user_library_projection
  - staticart.user_reader_progress
  - staticart.user_viewer_progress
  - staticart.user_asset_annotation
  - staticart.user_asset_favorite
  - staticart.asset_exhibition_projection
  - staticart.asset_audit_event

derived_surfaces:
  - user_library_projection
  - asset_exhibition_projection
  - entitlement_effective_snapshot

core_table_roles:
  asset_master:
    role: canonical anchor of asset identity and current lifecycle
    keys:
      - asset_id pk
      - asset_code unique
      - asset_type
      - creator_id
      - publisher_id
      - current_version_no
      - lifecycle_state
      - is_current_version_visible
      - created_at
      - updated_at
      - archived_at

  asset_version:
    role: per-version entity record
    keys:
      - asset_id
      - version_no
      - version_label
      - is_visible
      - is_replace_target
      - published_at
      - created_at
      - created_by

  asset_file:
    role: file registry by asset/version/file_role
    keys:
      - file_id pk
      - asset_id
      - version_no
      - file_role
      - storage_key
      - mime_type
      - file_size_bytes
      - sha256
      - page_count
      - width_px
      - height_px
      - duration_ms
      - created_at

  asset_localization:
    role: language-scoped metadata
    keys:
      - asset_id
      - version_no
      - language_code
      - title
      - subtitle
      - short_description
      - long_description
      - created_at
      - updated_at

  asset_rights_policy:
    role: rights, region, age, exhibition availability
    keys:
      - asset_id pk
      - version_no
      - exhibition_allowed
      - commercial_use_allowed
      - derivative_allowed
      - additional_license_required
      - age_rating
      - region_mode
      - region_codes
      - rights_summary
      - rights_state
      - effective_from
      - effective_to
      - updated_at

  asset_sales_offer:
    role: canonical sale condition
    keys:
      - asset_id pk
      - sale_type
      - sales_state
      - base_currency
      - base_price
      - price_label_override
      - sale_start_at
      - sale_end_at
      - limited_sale_flag
      - inventory_cap
      - updated_at

  asset_subscription_rule:
    role: canonical subscription inclusion rule
    keys:
      - asset_id pk
      - subscription_state
      - subscription_eligible
      - creator_opt_in
      - settlement_group_code
      - subscription_start_at
      - subscription_end_at
      - updated_at

  asset_review_request:
    role: review submission record
    keys:
      - review_request_id pk
      - asset_id
      - review_round_no
      - submitted_by
      - submitted_at
      - review_status
      - requested_review_types
      - self_check_passed
      - closed_at

  asset_review_decision:
    role: decision record
    keys:
      - review_decision_id pk
      - review_request_id
      - decision_by
      - decision_status
      - decision_reason_code
      - decision_comment
      - decided_at

  user_asset_entitlement:
    role: effective entitlement snapshot by user and asset
    keys:
      - user_id
      - asset_id
      - has_owned_permanent
      - has_subscription_access
      - sample_available
      - blocking_reason_code
      - effective_entitlement_state
      - last_external_transaction_id
      - computed_at

  user_reader_progress:
    role: publishing continuity
    keys:
      - user_id
      - asset_id
      - current_locator
      - progress_percent
      - sync_version
      - last_device_type
      - last_opened_at
      - updated_at

  user_viewer_progress:
    role: visual continuity
    keys:
      - user_id
      - asset_id
      - current_frame_ref
      - current_page_no
      - zoom_ratio
      - sync_version
      - last_device_type
      - last_opened_at
      - updated_at

  asset_exhibition_projection:
    role: Exhibition Builder projection
    keys:
      - asset_id pk
      - version_no
      - projection_status
      - usable_in_exhibition_builder
      - entitlement_state
      - exhibition_allowed
      - additional_license_required
      - price_label
      - rights_summary
      - reason_codes
      - projection_refreshed_at

  asset_audit_event:
    role: audit trail for state and governance events
    keys:
      - audit_event_id pk
      - asset_id
      - user_id
      - event_type
      - from_state
      - to_state
      - reason_code
      - external_ref
      - detail_json
      - created_at

refresh_triggers:
  library_projection:
    - purchase reflection success
    - subscription start
    - subscription expiry
    - rights policy change
    - lifecycle_state change
    - reader progress save
    - viewer progress save
    - favorite add/remove

  exhibition_projection:
    - publish
    - delist
    - restrict
    - archive
    - rights policy change
    - region policy change
    - age policy change
    - version visibility change
    - entitlement policy change

state_transition_matrix:
  lifecycle:
    draft:
      - files_uploaded
      - archived
    files_uploaded:
      - metadata_completed
      - archived
    metadata_completed:
      - self_check_passed
      - files_uploaded
      - archived
    self_check_passed:
      - review_pending
      - metadata_completed
      - archived
    review_pending:
      - approved
      - rejected
      - restricted
    approved:
      - published_marketplace
      - published_library_only
      - archived
    rejected:
      - metadata_completed
      - self_check_passed
      - archived
    published_marketplace:
      - delisted
      - restricted
      - replaced
      - archived
    published_library_only:
      - published_marketplace
      - restricted
      - replaced
      - archived
    delisted:
      - published_marketplace
      - published_library_only
      - restricted
      - archived
    restricted:
      - review_pending
      - delisted
      - archived
    replaced:
      - archived
    archived: []

  sales:
    not_for_sale:
      - for_sale
      - preorder
    for_sale:
      - sale_paused
      - sold_out_limited
      - sale_ended
    preorder:
      - for_sale
      - sale_paused
      - sale_ended
    sale_paused:
      - for_sale
      - sale_ended
    sold_out_limited:
      - sale_ended
    sale_ended: []

  subscription:
    not_included:
      - included_scheduled
      - included_active
    included_scheduled:
      - included_active
      - included_paused
      - included_ended
    included_active:
      - included_paused
      - included_ended
    included_paused:
      - included_active
      - included_ended
    included_ended:
      - included_scheduled
      - included_active

rules:
  - published_marketplace and published_library_only cannot coexist
  - archived cannot return to published state
  - review_pending blocks creator-side metadata/rights/sales/subscription edits
  - restricted blocks marketplace exposure, full access delivery, and exhibition projection
  - blocked_by_* entitlement states are effective blocks, not history deletion


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120110_STATIC_ART_OS_DB_SCHEMA_EXACTNESS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120120_STATIC_ART_OS_API_EXACTNESS.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120120_STATIC_ART_OS_API_EXACTNESS.md

# ============================================================
# STATIC ART OS API EXACTNESS
# ============================================================

status: implementation-ready
system: StaticArtOS
layer: exactness
owner: Boss
prepared_by: Zero

base_path: /api/v1/staticart

common:
  content_type: application/json
  auth: bearer token
  required_write_headers:
    - X-Request-Id
    - Idempotency-Key

time_format: ISO8601 UTC
id_types:
  - asset_id uuid
  - file_id uuid
  - review_request_id uuid
  - review_decision_id uuid
  - annotation_id uuid

response_contract:
  success_shape:
    - ok=true
    - data
    - meta.request_id
  list_shape:
    - ok=true
    - data.items
    - meta.request_id
    - meta.next_cursor
  error_shape:
    - ok=false
    - error.code
    - error.message
    - error.details
    - error.retryable
    - meta.request_id

http_error_use:
  400: request structurally invalid
  401: unauthorized
  403: authenticated but forbidden
  404: not found or intentionally hidden
  409: state or version conflict
  410: gone due to archive/revoke semantics
  422: business rule failure
  429: rate limited
  500: unexpected server error
  503: infrastructure unavailable

fixed_error_codes:
  validation:
    - STATICART_VALIDATION_ERROR
    - STATICART_INVALID_ENUM
    - STATICART_REQUIRED_FIELD_MISSING
    - STATICART_INVALID_CURSOR
  auth_permission:
    - STATICART_UNAUTHORIZED
    - STATICART_FORBIDDEN
    - STATICART_ROLE_NOT_ALLOWED
    - STATICART_ASSET_NOT_OWNED_BY_ACTOR
  state_concurrency:
    - STATICART_ASSET_NOT_FOUND
    - STATICART_FILE_NOT_FOUND
    - STATICART_REVIEW_REQUEST_NOT_FOUND
    - STATICART_ASSET_STATE_CONFLICT
    - STATICART_REVIEW_ALREADY_PENDING
    - STATICART_VERSION_CONFLICT
    - STATICART_IDEMPOTENCY_REPLAY_MISMATCH
  publish_review_policy:
    - STATICART_REVIEW_SUBMISSION_PRECONDITION_FAILED
    - STATICART_PUBLISH_PRECONDITION_FAILED
    - STATICART_RIGHTS_POLICY_BLOCKED
    - STATICART_REGION_POLICY_BLOCKED
    - STATICART_AGE_POLICY_BLOCKED
    - STATICART_EXHIBITION_PROJECTION_INELIGIBLE
  entitlement_library:
    - STATICART_ENTITLEMENT_BLOCKED
    - STATICART_SAMPLE_NOT_AVAILABLE
    - STATICART_ACCESS_NOT_GRANTED
  infra:
    - STATICART_STORAGE_UPLOAD_FAILED
    - STATICART_EXTERNAL_PAYMENT_SYNC_FAILED
    - STATICART_EXTERNAL_SUBSCRIPTION_SYNC_FAILED
    - STATICART_RATE_LIMITED
    - STATICART_INTERNAL_ERROR

concurrency:
  version_token:
    usage: optimistic concurrency for write requests
  idempotency:
    same_key_same_body: return same result
    same_key_different_body: conflict 409

api_groups:
  canonical_write:
    - POST /assets
    - GET /assets/{asset_id}
    - PUT /assets/{asset_id}/localizations/{language_code}
    - PUT /assets/{asset_id}/categories
    - PUT /assets/{asset_id}/tags
    - POST /assets/{asset_id}/files:begin-upload
    - POST /assets/{asset_id}/files:complete-upload
    - PUT /assets/{asset_id}/rights-policy
    - PUT /assets/{asset_id}/sales-offer
    - PUT /assets/{asset_id}/subscription-rule
    - POST /assets/{asset_id}:run-self-check
    - POST /assets/{asset_id}/review-requests
    - POST /review-requests/{review_request_id}:decide
    - POST /assets/{asset_id}:publish-marketplace
    - POST /assets/{asset_id}:publish-library-only
    - POST /assets/{asset_id}:delist
    - POST /assets/{asset_id}:restrict
    - POST /assets/{asset_id}:archive

  entitlement_access:
    - GET /assets/{asset_id}/entitlement
    - POST /assets/{asset_id}:create-access-session

  library_continuity:
    - GET /library
    - GET /library/continue-reading
    - GET /library/continue-viewing
    - PUT /assets/{asset_id}/reader-progress
    - PUT /assets/{asset_id}/viewer-progress
    - POST /assets/{asset_id}/favorite
    - DELETE /assets/{asset_id}/favorite
    - POST /assets/{asset_id}/annotations

  derived_read:
    - GET /assets/{asset_id}/exhibition-projection
    - POST /assets/{asset_id}:refresh-projections

  internal_reflection:
    - POST /internal/purchases:reflect
    - POST /internal/subscriptions:reflect

api_rules:
  - Publish requires approved lifecycle and required file roles ready.
  - Self check must expose blockers with repair targets.
  - Review submission requires self_check_passed and no active pending review.
  - Full access session creation requires full entitlement and no rights/region/age/restriction block.
  - Reader progress and viewer progress must remain separate endpoints.
  - Favorite is allowed even when entitlement is sample_only.
  - Projection refresh endpoints are admin/internal only.

pagination:
  strategy: cursor only
  default_limit: 30
  max_limit: 100
  cursor: opaque
  offset_pagination: forbidden

search_filter:
  - query full-text style
  - asset_type exact filter
  - favorite boolean filter
  - entitlement_state filter on read projection only

implementation_prohibitions:
  - Do not publish without review approval.
  - Do not ignore rights block when creating access sessions.
  - Do not delete favorite when entitlement disappears.
  - Do not update entitlement canonical state from progress endpoints.
  - Do not perform canonical writes from derived projection APIs.
  - Do not convert subscription access into permanent ownership.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120120_STATIC_ART_OS_API_EXACTNESS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120130_STATIC_ART_OS_SCREEN_STATEFLOW_EXACTNESS.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120130_STATIC_ART_OS_SCREEN_STATEFLOW_EXACTNESS.md

# ============================================================
# STATIC ART OS SCREEN STATEFLOW EXACTNESS
# ============================================================

status: implementation-ready
system: StaticArtOS
layer: exactness
owner: Boss
prepared_by: Zero

platforms:
  - iPhone
  - Android
  - PC
  - tablet

screen_groups:
  creator_surface:
    - SA-CR-001 Asset Draft List
    - SA-CR-010 Create Asset
    - SA-CR-020 Asset Workspace
  marketplace_surface:
    - SA-MK-001 Marketplace List
    - SA-MK-010 Product Detail
    - SA-MK-020 Purchase Result Overlay
  library_surface:
    - SA-LB-001 My Library
    - SA-LB-010 Continue Reading
    - SA-LB-020 Continue Viewing
    - SA-RD-001 Reader
    - SA-RD-010 Reader Bookmark/Note Panel
    - SA-VW-001 Viewer
  admin_surface:
    - SA-AD-001 Review Queue
    - SA-AD-010 Review Detail
    - SA-AD-020 Restriction/Delist/Audit Detail

creator_workspace_tabs:
  - Files
  - Metadata
  - Preview / Sample
  - Rights
  - Sales
  - Subscription
  - Self Check
  - Review
  - Publish
  - Audit Summary

creator_flow:
  - Asset Draft List
  - Create Asset
  - Asset Workspace Files
  - Asset Workspace Metadata
  - Asset Workspace Preview/Sample
  - Asset Workspace Rights
  - Asset Workspace Sales
  - Asset Workspace Subscription
  - Asset Workspace Self Check
  - Asset Workspace Review
  - Asset Workspace Publish

creator_rules:
  - Files tab must display required file_role matrix by asset_type.
  - Metadata tab must become read-only during review_pending.
  - Preview/Sample tab must distinguish publishing sample vs visual sample.
  - Rights tab must preview marketplace/library/exhibition impact.
  - Self Check must list blockers and repair links.
  - Review tab submit becomes active only after self_check_passed and zero blockers.
  - Publish tab must expose marketplace publish, library-only publish, delist, archive according to state.

marketplace_rules:
  - Product cards show thumbnail, title, creator, asset_type, price, badges, owned state, sample availability.
  - Product detail must use allowed_actions as UI truth source.
  - Product detail blocked state may still show detail while disabling full-open CTA.
  - Purchase success overlay must show library-added and open-now actions.

library_rules:
  - My Library must separate All, Books, Visual, Favorites, Downloaded shelves.
  - Continue Reading must show progress_percent and locator summary.
  - Continue Viewing must show current page/frame and zoom summary.
  - Reader and Viewer must store continuity independently.
  - Sample mode must expose purchase/subscription CTA without pretending full access.
  - Favorite toggle must remain available where detail is visible and user is signed in.

reader_rules:
  - Reader focuses on chapter/body/bookmark/note/highlight.
  - Save triggers include page change, app background, manual close, interval save.

viewer_rules:
  - Viewer focuses on canvas/page strip/zoom/fullscreen/fit mode.
  - Save triggers include page change, zoom threshold change, background, close.

admin_rules:
  - Review Queue lists pending review items with risk badges and sortable metadata.
  - Review Detail must show asset summary, file readiness, metadata, rights, preview, self-check result, prior decisions.
  - Review Detail decision panel requires reason_code for reject/rework/restrict.
  - Restriction/Delist/Audit Detail must show blocking effects and affected surfaces.

ui_state_contract:
  every_screen_must_have:
    - loading state
    - empty state
    - error state
    - forbidden or read-only state where applicable

button_activation:
  review_submit:
    required:
      - lifecycle_state=self_check_passed
      - no pending review
      - required files complete
      - at least one localization
      - rights configured
  publish_marketplace:
    required:
      - lifecycle_state=approved
      - required publish files ready
      - metadata complete
      - rights configured
      - sales valid
      - not restricted
  full_open:
    required:
      - full entitlement state
      - published lifecycle exposure
      - no region block
      - no age block
      - no rights change block
      - not restricted
  favorite_toggle:
    required:
      - signed in
      - detail visible

stateflow:
  creator_main:
    - create success -> workspace files
    - required file complete -> files_uploaded
    - metadata sufficient -> metadata_completed
    - self check pass -> self_check_passed
    - submit review -> review_pending
    - review approve -> approved
    - publish marketplace -> published_marketplace
    - publish library only -> published_library_only
    - delist -> delisted
    - restrict -> restricted
    - archive -> archived

  creator_rework:
    - review decision rework_required or rejected
    - workspace reopened for editing
    - self check rerun
    - review resubmit with incremented round

  buyer_purchase:
    - marketplace list
    - product detail
    - sample or purchase
    - purchase success overlay
    - reader or viewer
    - my library

  continuity:
    - reader progress save -> continue reading projection refresh
    - viewer progress save -> continue viewing projection refresh

  restriction:
    - published asset
    - policy/review issue
    - restricted or delisted
    - marketplace/library/access/exhibition refreshed
    - audit recorded

asset_type_split:
  publishing:
    - Continue Reading
    - Reader
    - locator based continuity
    - chapter navigation
    - bookmark/note/highlight emphasis
  visual:
    - Continue Viewing
    - Viewer
    - page/frame continuity
    - zoom persistence
    - fullscreen and fit mode emphasis


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120130_STATIC_ART_OS_SCREEN_STATEFLOW_EXACTNESS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120140_STATIC_ART_OS_PERMISSION_POLICY_EXACTNESS.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120140_STATIC_ART_OS_PERMISSION_POLICY_EXACTNESS.md

# ============================================================
# STATIC ART OS PERMISSION POLICY EXACTNESS
# ============================================================

status: implementation-ready
system: StaticArtOS
layer: exactness
owner: Boss
prepared_by: Zero

actors:
  - guest
  - signed_in_user
  - library_user
  - creator_owner
  - publisher_operator
  - review_admin
  - policy_admin
  - support_readonly
  - internal_integration
  - exhibition_builder_reader

ownership_boundary:
  permission_evaluation_axes:
    - actor role
    - asset ownership
    - publisher ownership
    - lifecycle_state
    - review_status
    - entitlement_state
    - restriction state

permission_summary:
  guest:
    allow:
      - marketplace list read
      - product detail read
      - sample availability read
    deny:
      - favorite
      - full open
      - library
      - annotation
      - progress save

  signed_in_user:
    allow:
      - marketplace read
      - favorite add/remove
      - sample open
      - purchase start
      - entitlement read
    conditional:
      - full open only when entitlement allows
      - library only when projection allows visibility
    deny:
      - creator workspace
      - review surface
      - policy surface
      - canonical write

  library_user:
    allow:
      - my library
      - continue reading/viewing
      - full open
      - progress save
      - annotations
      - favorite

  creator_owner:
    allow:
      - own asset draft create
      - own asset files update
      - own asset metadata update
      - own asset rights update
      - own asset sales update
      - own asset subscription update
      - self check
      - review request create
      - publish marketplace
      - publish library only
      - delist
      - archive
      - audit summary read
    deny:
      - self approval
      - review decision
      - policy override

  publisher_operator:
    allow:
      - publisher governed asset operational updates
      - sales/subscription/publish operation
      - delist
      - audit summary read
    deny:
      - review decision
      - legal override

  review_admin:
    allow:
      - review queue read
      - review detail read
      - approve
      - reject
      - rework_required
      - restrict
      - audit read
      - projection refresh request
    deny:
      - direct creator metadata edits
      - purchase reflection
      - arbitrary rights rewrite

  policy_admin:
    allow:
      - region override
      - age override
      - legal block
      - restriction issue
      - restriction release flow start
      - projection revoke
      - audit read
      - emergency delist
    deny:
      - fake purchase grants

  support_readonly:
    allow:
      - asset read
      - review history read
      - audit read
      - entitlement snapshot read
      - projection snapshot read
    deny:
      - all writes

  internal_integration:
    allow:
      - purchase reflect
      - subscription reflect
      - refresh projections
      - entitlement recompute
      - internal audit write
    deny:
      - creator metadata update
      - review decision
      - arbitrary rights change

  exhibition_builder_reader:
    allow:
      - exhibition projection read
      - eligibility reason read
    deny:
      - projection write
      - canonical write
      - entitlement write

endpoint_classes:
  creator_workspace:
    actors:
      - creator_owner
      - publisher_operator
    conditions:
      - asset or publisher ownership must match
      - review_pending blocks creator-side edits
      - archived blocks publish resurrection
      - restricted blocks publish
  review_surface:
    actors:
      - review_admin
      - policy_admin partial
  marketplace_detail_entitlement:
    actors:
      - guest
      - signed_in_user
      - library_user
  library_progress_annotations:
    actors:
      - signed_in_user
      - library_user
    conditions:
      - visibility and entitlement checks must pass for open/progress
      - favorite allowed even with sample_only
  internal_reflection:
    actors:
      - internal_integration
      - review_admin partial
      - policy_admin partial

hard_denies:
  - archived asset publish
  - creator edit during review_pending
  - full open without entitlement
  - exhibition_builder_reader projection write
  - support_readonly write
  - creator self-approval
  - internal_integration rights policy update
  - restricted asset full access session issue

audit_required_operations:
  - review decide
  - publish marketplace
  - publish library only
  - delist
  - restrict
  - archive
  - rights policy change
  - purchase reflect
  - subscription reflect
  - projection revoke
  - emergency override

policy_priority:
  - legal_or_emergency_override
  - restriction_state
  - rights_policy
  - region_policy
  - age_policy
  - entitlement_resolution
  - ui_preference_visibility_tuning

age_rating_enum:
  - all_ages
  - age_12_plus
  - age_15_plus
  - age_18_plus
  - adults_only

age_policy_rules:
  - rating unset blocks publish
  - sample passes same age gate as full access
  - adults_only default exposure is highly restricted

region_policy:
  region_mode_enum:
    - global
    - allow_list
    - deny_list
  rules:
    - global allows all regions
    - allow_list allows only listed regions
    - deny_list blocks only listed regions
    - unknown region default behavior is detail/sample-visible but full-block unless stricter override is set

sample_policy:
  allowed_if:
    - sample source exists
    - detail exposure allowed
    - no age/region block
    - rights allow sample
    - not restricted
  prohibited:
    - full-resolution ownership-equivalent export
    - permanent offline
    - premium full-bundle behavior

restriction_policy:
  effects:
    - marketplace exposure stop or block
    - full access session stop
    - sample stop
    - exhibition projection revoke
    - new purchase stop
    - library shelf may remain while open is blocked
  preserved:
    - audit
    - favorite
    - progress
    - annotations
    - purchase history
    - entitlement history

delist_policy:
  effects:
    - marketplace new exposure stop
    - existing owner full open generally preserved
    - subscription access follows current rights and entitlement rules

rights_change_policy:
  - keep purchase history
  - apply blocked_by_rights_change as effective block when needed
  - allow restoration if later unblocked
  - do not delete favorites, progress, annotations

coexistence_policy:
  - permanent ownership plus subscription -> owned_and_subscription_access
  - subscription end with permanent ownership -> owned_permanent
  - subscription end without ownership -> none or blocked state
  - subscription never upgrades to permanent ownership

exhibition_policy:
  eligible_only_if:
    - published lifecycle
    - not restricted
    - exhibition_allowed=true
    - no region/age/rights conflict
    - projection refreshed
    - builder read conditions satisfied
  projection_states:
    - eligible
    - ineligible
    - revoked

reason_codes:
  restriction_block_examples:
    - policy_violation_under_review
    - legal_hold
    - region_block_applied
    - age_policy_block_applied
    - rights_changed_block
    - creator_requested_delist
    - publisher_requested_delist
    - unsafe_metadata_under_review
    - asset_integrity_check_failed
  publish_blocker_examples:
    - missing_required_file_role
    - missing_localization
    - rights_policy_incomplete
    - sales_offer_invalid
    - subscription_rule_invalid
    - review_not_approved
    - sample_policy_not_satisfied


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120140_STATIC_ART_OS_PERMISSION_POLICY_EXACTNESS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120_INDEX.md

# ============================================================
# EXACTNESS INDEX
# ============================================================

status: active
system: StaticArtOS
folder: 120.exactness
owner: Boss
prepared_by: Zero

purpose:
- Directory navigation entry point
- Repair-generated because INDEX was missing

subfolders:
- none

files:
- 120110_STATIC_ART_OS_DB_SCHEMA_EXACTNESS.md
- 120120_STATIC_ART_OS_API_EXACTNESS.md
- 120130_STATIC_ART_OS_SCREEN_STATEFLOW_EXACTNESS.md
- 120140_STATIC_ART_OS_PERMISSION_POLICY_EXACTNESS.md
- 120_INDEX.md


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120_OVERVIEW.md

# ============================================================
# EXACTNESS OVERVIEW
# ============================================================

status: active
system: StaticArtOS
folder: 120.exactness
owner: Boss
prepared_by: Zero

summary:
- This folder belongs to StaticArtOS standalone implementation-prep flow.
- This overview was repair-generated because OVERVIEW was missing.
- Detailed semantics should continue to live in the canonical files already placed under this folder.

notes:
- Non-destructive generation only.
- Existing files were not overwritten.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_API_EXACT_CONTRACT.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_API_EXACT_CONTRACT.md

# ============================================================
# STATIC ART API EXACT CONTRACT
# ============================================================

status: implementation-ready-api
layer: implementation
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Create Asset Draft

POST /v1/staticart/assets/draft

request:
{
  "assetType": "ebook",
  "creatorId": "creator_001",
  "publisherId": "publisher_001",
  "initialLanguage": "en"
}

response:
{
  "assetId": "ast_0001",
  "lifecycleState": "draft",
  "allowedNextActions": [
    "uploadFiles",
    "saveMetadata"
  ]
}

## 2. Save Metadata

PUT /v1/staticart/assets/{assetId}/metadata

request:
{
  "localizations": [
    {
      "languageCode": "en",
      "title": "The Quiet Museum",
      "subtitle": "Collected Static Works",
      "shortDescription": "A curated digital booklet.",
      "longDescription": "Full long description here."
    }
  ],
  "categoryIds": ["cat_booklet"],
  "tagIds": ["tag_curated", "tag_visual"]
}

response:
{
  "assetId": "ast_0001",
  "metadataCompleted": true,
  "allowedNextActions": [
    "saveRights",
    "saveSales",
    "uploadPreview"
  ]
}

## 3. Save Commercial Settings

PUT /v1/staticart/assets/{assetId}/commercial-settings

request:
{
  "rights": {
    "exhibitionAllowed": true,
    "commercialUseAllowed": false,
    "derivativeAllowed": false,
    "regionScope": ["JP", "US"],
    "ageRating": "general"
  },
  "sales": {
    "saleType": "buy_now",
    "baseCurrency": "USD",
    "basePrice": 9.99,
    "status": "for_sale"
  },
  "subscription": {
    "subscriptionEligible": true,
    "subscriptionStartAt": "2026-05-01T00:00:00Z",
    "subscriptionEndAt": null
  }
}

response:
{
  "assetId": "ast_0001",
  "rightsSaved": true,
  "salesSaved": true,
  "subscriptionSaved": true,
  "allowedNextActions": [
    "submitForReview"
  ]
}

## 4. Submit Review

POST /v1/staticart/assets/{assetId}/submit-review

request:
{
  "reviewTypes": [
    "metadata",
    "rights",
    "marketplace",
    "subscription"
  ]
}

response:
{
  "assetId": "ast_0001",
  "lifecycleState": "review_pending",
  "reviewStatus": "pending"
}

## 5. Marketplace List

GET /v1/staticart/marketplace/list?tab=ebook&sort=best_selling&subscriptionIncluded=true&language=en

response:
{
  "tab": "ebook",
  "sort": "best_selling",
  "filtersApplied": {
    "subscriptionIncluded": true,
    "language": "en"
  },
  "items": [
    {
      "assetId": "ast_0001",
      "title": "The Quiet Museum",
      "creatorName": "Studio North",
      "assetType": "ebook",
      "price": {
        "amount": 9.99,
        "currency": "USD"
      },
      "badges": [
        "subscription_included",
        "sample_available"
      ],
      "ownedState": "none",
      "thumbnailUrl": "..."
    }
  ],
  "nextCursor": "cur_002"
}

## 6. Product Detail

GET /v1/staticart/assets/{assetId}/detail

response:
{
  "assetId": "ast_0001",
  "assetType": "ebook",
  "title": "The Quiet Museum",
  "subtitle": "Collected Static Works",
  "description": "Full long description here.",
  "creator": {
    "creatorId": "creator_001",
    "displayName": "Studio North"
  },
  "rightsSummary": {
    "exhibitionAllowed": true,
    "commercialUseAllowed": false,
    "ageRating": "general"
  },
  "sales": {
    "saleType": "buy_now",
    "price": {
      "amount": 9.99,
      "currency": "USD"
    }
  },
  "subscription": {
    "included": true
  },
  "sampleAvailable": true,
  "ownedState": "none",
  "allowedActions": [
    "openSample",
    "purchase"
  ]
}

## 7. Reflect Purchase

POST /v1/staticart/entitlements/reflect-purchase

request:
{
  "externalTransactionId": "txn_10001",
  "userId": "usr_001",
  "assetId": "ast_0001",
  "entitlementType": "owned_permanent",
  "purchasedAt": "2026-04-16T08:00:00Z"
}

response:
{
  "assetId": "ast_0001",
  "userId": "usr_001",
  "entitlementState": "owned_permanent",
  "libraryVisible": true,
  "allowedActions": [
    "openReader",
    "favorite",
    "addBookmark"
  ]
}

## 8. Save Reader Progress

POST /v1/staticart/reader/progress

request:
{
  "userId": "usr_001",
  "assetId": "ast_0001",
  "currentLocator": "epubcfi(/6/8!/4/2/16)",
  "progressPercent": 42.3,
  "deviceType": "iphone"
}

response:
{
  "saved": true,
  "syncVersion": 18,
  "continueReadingVisible": true
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_API_EXACT_CONTRACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_IMPLEMENTATION_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_IMPLEMENTATION_INDEX.md

# ============================================================
# STATIC ART IMPLEMENTATION INDEX
# ============================================================

status: canonical-index
layer: implementation
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_IMPLEMENTATION_INDEX.md
- 000_STATIC_ART_IMPLEMENTATION_OVERVIEW.md
- 000_STATIC_ART_API_EXACT_CONTRACT.md
- 000_STATIC_ART_STATE_PERMISSION_AND_VALIDATION_EXACTNESS.md

## Scope

- API exactness
- state exactness
- permission exactness
- validation exactness


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_IMPLEMENTATION_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_IMPLEMENTATION_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_IMPLEMENTATION_OVERVIEW.md

# ============================================================
# STATIC ART IMPLEMENTATION OVERVIEW
# ============================================================

status: canonical-overview
layer: implementation
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Implementation-Ready Definition

StaticArtOS is implementation-ready only when the following are fixed without ambiguity:

- schema names
- table purposes
- state enums
- request and response payloads
- permission rules
- validation rules
- entitlement resolution rules
- projection contract rules

## 2. Fixed Schema

All StaticArtOS data belongs to schema `staticart`.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_IMPLEMENTATION_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_STATE_PERMISSION_AND_VALIDATION_EXACTNESS.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_STATE_PERMISSION_AND_VALIDATION_EXACTNESS.md

# ============================================================
# STATIC ART STATE PERMISSION AND VALIDATION EXACTNESS
# ============================================================

status: implementation-ready-exactness
layer: implementation
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Lifecycle States

- draft
- files_uploaded
- metadata_completed
- self_check_passed
- review_pending
- approved
- rejected
- published_marketplace
- published_library_only
- delisted
- restricted
- replaced
- archived

## 2. Sales States

- not_for_sale
- for_sale
- preorder
- sale_paused
- sold_out_limited
- sale_ended

## 3. Subscription States

- not_included
- included_active
- included_scheduled
- included_paused
- included_ended

## 4. Entitlement States

- none
- sample_only
- subscription_access
- owned_permanent
- owned_and_subscription_access
- blocked_by_region
- blocked_by_age_policy
- blocked_by_rights_change

## 5. Permission Rules

### Creator
May:
- create and edit own drafts
- submit for review
- manage metadata, rights, sales, and subscription settings for allowed assets

May not:
- approve review as admin
- override restriction without admin authority

### Buyer / Reader / Subscriber
May:
- browse marketplace
- open owned or subscribed assets
- manage own favorites, bookmarks, and progress

May not:
- mutate asset master
- mutate rights or publish state

### Admin
May:
- review, approve, reject, restrict, and delist
- inspect audit and projection reason codes

## 6. Validation Rules

Asset creation requires:
- valid assetType
- creatorId
- initialLanguage

Marketplace publication requires:
- files present
- metadata present in at least one language
- rights configured
- review approved

Subscription inclusion requires:
- sales or distribution eligibility configured
- subscriptionEligible true
- creator or publisher opt-in where required

Reader progress save requires:
- valid full-open entitlement
- publishing asset type

Viewer progress save requires:
- valid full-open entitlement
- visual asset type


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.implementation/000_STATIC_ART_STATE_PERMISSION_AND_VALIDATION_EXACTNESS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121100_STATIC_ART_OS_DB_IMPLEMENTATION_PREP_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121100_STATIC_ART_OS_DB_IMPLEMENTATION_PREP_INDEX.md

# ============================================================
# STATIC ART OS DB IMPLEMENTATION PREP INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
This file groups the database implementation-preparation files
for StaticArtOS.

files:
  - 121110_STATIC_ART_OS_DDL_MIGRATION_ORDER.md
  - 121120_STATIC_ART_OS_TABLE_DDL_SKELETON.md
  - 121130_STATIC_ART_OS_ENUM_AND_CONSTRAINT_SKELETON.md
  - 121140_STATIC_ART_OS_PROJECTION_REFRESH_JOB_SKELETON.md

objective:
  - Freeze migration order
  - Freeze table creation order
  - Freeze enum and constraint direction
  - Freeze projection refresh job boundaries


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121100_STATIC_ART_OS_DB_IMPLEMENTATION_PREP_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121110_STATIC_ART_OS_DDL_MIGRATION_ORDER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121110_STATIC_ART_OS_DDL_MIGRATION_ORDER.md

# ============================================================
# STATIC ART OS DDL MIGRATION ORDER
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

goal:
Define the safe creation order for the StaticArtOS schema and tables.

phase_order:
  - Phase 1: create schema and enums
  - Phase 2: create canonical anchor tables
  - Phase 3: create metadata and file tables
  - Phase 4: create rights/sales/subscription tables
  - Phase 5: create review and audit tables
  - Phase 6: create entitlement and continuity tables
  - Phase 7: create derived projection tables
  - Phase 8: create indexes and refresh jobs

detailed_order:
  - create schema staticart
  - create enum asset_type
  - create enum lifecycle_state
  - create enum sales_state
  - create enum subscription_state
  - create enum entitlement_state
  - create enum review_status
  - create enum file_role
  - create enum projection_status
  - create table asset_master
  - create table asset_version
  - create table asset_file
  - create table asset_localization
  - create table asset_category_map
  - create table asset_tag_map
  - create table asset_rights_policy
  - create table asset_sales_offer
  - create table asset_subscription_rule
  - create table asset_review_request
  - create table asset_review_decision
  - create table user_asset_entitlement
  - create table user_library_projection
  - create table user_reader_progress
  - create table user_viewer_progress
  - create table user_asset_annotation
  - create table user_asset_favorite
  - create table asset_exhibition_projection
  - create table asset_audit_event
  - create indexes
  - create refresh and recompute jobs

rules:
  - canonical tables must exist before derived projection tables
  - audit table must exist before production event wiring
  - enum changes are additive only
  - archived state must not require destructive migration rollback


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121110_STATIC_ART_OS_DDL_MIGRATION_ORDER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121120_STATIC_ART_OS_TABLE_DDL_SKELETON.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121120_STATIC_ART_OS_TABLE_DDL_SKELETON.md

# ============================================================
# STATIC ART OS TABLE DDL SKELETON
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
This file is the table-by-table DDL skeleton checklist
before actual SQL creation.

table_groups:
  canonical_anchor:
    - asset_master
    - asset_version

  files_metadata:
    - asset_file
    - asset_localization
    - asset_category_map
    - asset_tag_map

  policy_commerce:
    - asset_rights_policy
    - asset_sales_offer
    - asset_subscription_rule

  governance:
    - asset_review_request
    - asset_review_decision
    - asset_audit_event

  user_resolution_and_continuity:
    - user_asset_entitlement
    - user_library_projection
    - user_reader_progress
    - user_viewer_progress
    - user_asset_annotation
    - user_asset_favorite

  projection:
    - asset_exhibition_projection

ddl_checklist_template:
  required_items:
    - table purpose
    - primary key
    - foreign key
    - unique constraints
    - check constraints
    - nullable policy
    - created_at / updated_at policy
    - index plan
    - refresh or recompute dependency
    - audit impact

notes:
  - user_reader_progress and user_viewer_progress must remain separate.
  - user_library_projection is derived.
  - asset_exhibition_projection is derived and read only for downstream consumers.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121120_STATIC_ART_OS_TABLE_DDL_SKELETON.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121130_STATIC_ART_OS_ENUM_AND_CONSTRAINT_SKELETON.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121130_STATIC_ART_OS_ENUM_AND_CONSTRAINT_SKELETON.md

# ============================================================
# STATIC ART OS ENUM AND CONSTRAINT SKELETON
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

enum_targets:
  - asset_type
  - lifecycle_state
  - sales_state
  - subscription_state
  - entitlement_state
  - review_status
  - file_role
  - projection_status

constraint_targets:
  lifecycle_rules:
    - published_marketplace and published_library_only cannot coexist
    - archived cannot return to published states
    - restricted blocks full-access delivery
  sales_rules:
    - for_sale and preorder require base_price and base_currency
  subscription_rules:
    - included states require subscription_eligible=true
  projection_rules:
    - projection tables are not canonical write targets
  ownership_rules:
    - subscription_access never upgrades to owned_permanent
  review_rules:
    - pending review blocks creator-side edits on governed fields

implementation_checkpoints:
  - enum creation order fixed
  - check constraints mapped
  - trigger-required rules separated from pure check constraints
  - conflict-prone rules marked for app/service enforcement


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121130_STATIC_ART_OS_ENUM_AND_CONSTRAINT_SKELETON.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121140_STATIC_ART_OS_PROJECTION_REFRESH_JOB_SKELETON.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121140_STATIC_ART_OS_PROJECTION_REFRESH_JOB_SKELETON.md

# ============================================================
# STATIC ART OS PROJECTION REFRESH JOB SKELETON
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

jobs:
  - recompute_user_asset_entitlement
  - refresh_user_library_projection
  - refresh_asset_exhibition_projection
  - publish_cx22073jw_reference_payload

refresh_triggers:
  - purchase reflection
  - subscription reflection
  - lifecycle change
  - rights policy change
  - age policy change
  - region policy change
  - progress save
  - favorite add/remove
  - review decision

job_boundaries:
  entitlement:
    source:
      - asset visibility
      - lifecycle
      - rights
      - age
      - region
      - ownership
      - subscription
      - sample availability
    output:
      - effective entitlement state
      - block reason
  library:
    source:
      - entitlement snapshot
      - favorite state
      - reader progress
      - viewer progress
    output:
      - shelf visibility
      - continue reading visibility
      - continue viewing visibility
  exhibition:
    source:
      - lifecycle
      - rights
      - restriction
      - projection eligibility
    output:
      - eligible/ineligible/revoked
      - reason codes
  cx22073jw:
    source:
      - projection
      - preview summary
      - rights summary
      - continuity signals
      - review risk summary
    output:
      - reference areas only

rules:
  - recompute jobs must be idempotent
  - failed refresh must not corrupt canonical tables
  - cx22073jw publish is one-way from canonical source


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121140_STATIC_ART_OS_PROJECTION_REFRESH_JOB_SKELETON.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121150_STATIC_ART_OS_SQL_SKELETON_PACK_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121150_STATIC_ART_OS_SQL_SKELETON_PACK_INDEX.md

# ============================================================
# STATIC ART OS SQL SKELETON PACK INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero
db_review_participant: Sato

purpose:
This pack provides the first executable SQL skeleton set for
StaticArtOS database implementation preparation.

included_files:
  - sql/001_staticart_schema_and_enums.sql
  - sql/010_staticart_asset_master.sql
  - sql/020_staticart_asset_version.sql
  - sql/030_staticart_files_and_metadata.sql
  - sql/040_staticart_policy_and_commerce.sql
  - sql/050_staticart_review_and_audit.sql
  - sql/060_staticart_entitlement_and_continuity.sql
  - sql/070_staticart_projection_tables.sql
  - sql/900_staticart_phase1_apply_runner.sh

phase_scope:
  - schema
  - enums
  - canonical anchor tables
  - metadata and file tables
  - policy and commerce tables
  - governance and audit tables
  - entitlement and continuity tables
  - projection tables

important_rules:
  - projection tables are derived and never canonical write sources
  - reader continuity and viewer continuity remain separate
  - additive evolution only
  - apply order must follow runner order


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121150_STATIC_ART_OS_SQL_SKELETON_PACK_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121160_STATIC_ART_OS_PHASE1_VERIFICATION_PACK_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121160_STATIC_ART_OS_PHASE1_VERIFICATION_PACK_INDEX.md

# ============================================================
# STATIC ART OS PHASE 1 VERIFICATION PACK INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 1 verification
owner: Boss
prepared_by: Zero
db_review_participant: Sato

purpose:
This pack provides the canonical verification blocks for
StaticArtOS Phase 1 database implementation on Persona side.

verification_target:
  - schema existence
  - enum existence
  - table existence
  - key index existence
  - reader/viewer continuity separation
  - projection table presence as derived surface
  - runner environment correctness

important_rules:
  - PERSONA_DATABASE_URL only
  - DATABASE_URL must not be used here
  - Verification is read/check only
  - Projection remains derived and must not be treated as canonical source

files:
  - verification/911_staticart_phase1_env_check.sh
  - verification/912_staticart_phase1_schema_enum_verify.sh
  - verification/913_staticart_phase1_table_verify.sh
  - verification/914_staticart_phase1_index_verify.sh
  - verification/915_staticart_phase1_integrity_verify.sh
  - verification/990_staticart_phase1_full_verify.sh


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121160_STATIC_ART_OS_PHASE1_VERIFICATION_PACK_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121170_STATIC_ART_OS_PHASE1_OPERATION_MANUAL.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121170_STATIC_ART_OS_PHASE1_OPERATION_MANUAL.md

# ============================================================
# STATIC ART OS PHASE 1 OPERATION MANUAL
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 1
owner: Boss
prepared_by: Zero
db_review_participant: Sato

objective:
Provide the canonical run order for StaticArtOS Phase 1
Persona-side DB apply and verification.

environment_rule:
  - PERSONA_DATABASE_URL is the only DB connection target for StaticArtOS Persona-side DB work.
  - DATABASE_URL must not be used for this Phase 1 workflow.

required_inputs:
  - sql/001_staticart_schema_and_enums.sql
  - sql/010_staticart_asset_master.sql
  - sql/020_staticart_asset_version.sql
  - sql/030_staticart_files_and_metadata.sql
  - sql/040_staticart_policy_and_commerce.sql
  - sql/050_staticart_review_and_audit.sql
  - sql/060_staticart_entitlement_and_continuity.sql
  - sql/070_staticart_projection_tables.sql
  - sql/900_staticart_phase1_apply_runner.sh
  - verification/911_staticart_phase1_env_check.sh
  - verification/912_staticart_phase1_schema_enum_verify.sh
  - verification/913_staticart_phase1_table_verify.sh
  - verification/914_staticart_phase1_index_verify.sh
  - verification/915_staticart_phase1_integrity_verify.sh
  - verification/990_staticart_phase1_full_verify.sh

run_order:
  1:
    name: precheck environment
    command:
      - bash verification/911_staticart_phase1_env_check.sh
  2:
    name: confirm SQL review
    rule:
      - Sato review must be completed before apply.
  3:
    name: apply phase 1 SQL
    command:
      - bash sql/900_staticart_phase1_apply_runner.sh
  4:
    name: run full verification
    command:
      - bash verification/990_staticart_phase1_full_verify.sh
  5:
    name: record result
    output:
      - mark Phase 1 complete or blocked
      - record missing table/index/enum if any

hard_stops:
  - stop if PERSONA_DATABASE_URL is not set
  - stop if Sato review is not complete
  - stop if SQL apply runner fails
  - stop if verification reports any NG item

phase_1_complete_definition:
  - schema staticart exists
  - all required enums exist
  - all required tables exist
  - all required indexes exist
  - reader/viewer continuity tables are separate
  - projection table exists
  - no ERP-side DB usage occurred

important_notes:
  - Projection remains derived and must not become canonical source.
  - Reader continuity and viewer continuity must remain separate.
  - Favorites surviving entitlement loss is a later behavior requirement; Phase 1 only establishes storage surfaces.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121170_STATIC_ART_OS_PHASE1_OPERATION_MANUAL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/121.db-implementation-prep"
SQLBASE="$BASE/sql"
VERIFYBASE="$BASE/verification"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PHASE1 APPLY / VERIFY WORKFLOW
============================================================

Usage:
  bash 121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh precheck
  bash 121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh apply
  bash 121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh verify
  bash 121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh full
  bash 121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh help

Modes:
  precheck  : check PERSONA_DATABASE_URL and file presence only
  apply     : run Phase 1 SQL apply runner
  verify    : run Phase 1 full verification
  full      : precheck -> apply -> verify
TEXT
}

require_persona_env() {
  if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
    echo "ERROR: PERSONA_DATABASE_URL is not set"
    exit 1
  fi
}

require_files() {
  for f in \
    "$SQLBASE/001_staticart_schema_and_enums.sql" \
    "$SQLBASE/010_staticart_asset_master.sql" \
    "$SQLBASE/020_staticart_asset_version.sql" \
    "$SQLBASE/030_staticart_files_and_metadata.sql" \
    "$SQLBASE/040_staticart_policy_and_commerce.sql" \
    "$SQLBASE/050_staticart_review_and_audit.sql" \
    "$SQLBASE/060_staticart_entitlement_and_continuity.sql" \
    "$SQLBASE/070_staticart_projection_tables.sql" \
    "$SQLBASE/900_staticart_phase1_apply_runner.sh" \
    "$VERIFYBASE/911_staticart_phase1_env_check.sh" \
    "$VERIFYBASE/990_staticart_phase1_full_verify.sh"
  do
    if [ ! -f "$f" ]; then
      echo "ERROR: missing file -> $f"
      exit 1
    fi
  done
}

run_precheck() {
  printf '\n============================================================\n'
  printf 'STATICART PHASE1 PRECHECK\n'
  printf '============================================================\n'
  require_persona_env
  require_files
  bash "$VERIFYBASE/911_staticart_phase1_env_check.sh"
  echo "OK: precheck passed"
}

run_apply() {
  printf '\n============================================================\n'
  printf 'STATICART PHASE1 APPLY\n'
  printf '============================================================\n'
  require_persona_env
  require_files
  echo "NOTICE: SQL review with Sato must be completed before apply"
  bash "$SQLBASE/900_staticart_phase1_apply_runner.sh"
}

run_verify() {
  printf '\n============================================================\n'
  printf 'STATICART PHASE1 VERIFY\n'
  printf '============================================================\n'
  require_persona_env
  require_files
  bash "$VERIFYBASE/990_staticart_phase1_full_verify.sh"
}

case "$MODE" in
  precheck)
    run_precheck
    ;;
  apply)
    run_apply
    ;;
  verify)
    run_verify
    ;;
  full)
    run_precheck
    run_apply
    run_verify
    ;;
  help|--help|-h)
    show_help
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121190_STATIC_ART_OS_PHASE1_COMPLETION_MEMO_TEMPLATE.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121190_STATIC_ART_OS_PHASE1_COMPLETION_MEMO_TEMPLATE.md

# ============================================================
# STATIC ART OS PHASE 1 COMPLETION MEMO TEMPLATE
# ============================================================

status: template
system: StaticArtOS
phase: Phase 1
owner: Boss
prepared_by: Zero
db_review_participant: Sato

execution_date:
review_status:
  - sql_review_completed: yes_or_no
  - reviewer: Sato

environment:
  - PERSONA_DATABASE_URL used: yes_or_no
  - DATABASE_URL used: no

apply_result:
  - apply_runner_completed: yes_or_no
  - failed_sql_file: optional
  - notes: optional

verification_result:
  - schema_exists: yes_or_no
  - enums_exist: yes_or_no
  - tables_exist: yes_or_no
  - indexes_exist: yes_or_no
  - reader_viewer_separated: yes_or_no
  - projection_table_exists: yes_or_no

final_judgement:
  - phase_1_complete: yes_or_no
  - blockers: optional
  - next_phase_allowed: yes_or_no


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121190_STATIC_ART_OS_PHASE1_COMPLETION_MEMO_TEMPLATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121_OVERVIEW.md

# ============================================================
# DB IMPLEMENTATION PREP OVERVIEW
# ============================================================

status: active
system: StaticArtOS
folder: 121.db-implementation-prep
owner: Boss
prepared_by: Zero

summary:
- This folder belongs to StaticArtOS standalone implementation-prep flow.
- This overview was repair-generated because OVERVIEW was missing.
- Detailed semantics should continue to live in the canonical files already placed under this folder.

notes:
- Non-destructive generation only.
- Existing files were not overwritten.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/001_staticart_schema_and_enums.sql -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/001_staticart_schema_and_enums.sql

-- ============================================================
-- STATICART PHASE 1 : SCHEMA AND ENUMS
-- reviewer: Sato
-- ============================================================

create schema if not exists staticart;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'asset_type' and n.nspname = 'staticart'
  ) then
    create type staticart.asset_type as enum (
      'artwork',
      'illustration',
      'poster',
      'photo_art',
      'static_visual',
      'book',
      'ebook',
      'booklet',
      'catalog',
      'collection_book',
      'material_booklet'
    );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'lifecycle_state' and n.nspname = 'staticart'
  ) then
    create type staticart.lifecycle_state as enum (
      'draft',
      'files_uploaded',
      'metadata_completed',
      'self_check_passed',
      'review_pending',
      'approved',
      'rejected',
      'published_marketplace',
      'published_library_only',
      'delisted',
      'restricted',
      'replaced',
      'archived'
    );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'sales_state' and n.nspname = 'staticart'
  ) then
    create type staticart.sales_state as enum (
      'not_for_sale',
      'for_sale',
      'preorder',
      'sale_paused',
      'sold_out_limited',
      'sale_ended'
    );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'subscription_state' and n.nspname = 'staticart'
  ) then
    create type staticart.subscription_state as enum (
      'not_included',
      'included_scheduled',
      'included_active',
      'included_paused',
      'included_ended'
    );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'entitlement_state' and n.nspname = 'staticart'
  ) then
    create type staticart.entitlement_state as enum (
      'none',
      'sample_only',
      'subscription_access',
      'owned_permanent',
      'owned_and_subscription_access',
      'blocked_by_region',
      'blocked_by_age_policy',
      'blocked_by_rights_change'
    );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'review_status' and n.nspname = 'staticart'
  ) then
    create type staticart.review_status as enum (
      'pending',
      'approved',
      'rejected',
      'rework_required',
      'restricted'
    );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'file_role' and n.nspname = 'staticart'
  ) then
    create type staticart.file_role as enum (
      'master_original',
      'master_publish',
      'preview_image',
      'thumbnail',
      'sample_file',
      'reader_package',
      'viewer_image',
      'viewer_bundle',
      'supplemental_file'
    );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'projection_status' and n.nspname = 'staticart'
  ) then
    create type staticart.projection_status as enum (
      'eligible',
      'ineligible',
      'revoked'
    );
  end if;
end
$$;


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/001_staticart_schema_and_enums.sql -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/010_staticart_asset_master.sql -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/010_staticart_asset_master.sql

-- ============================================================
-- STATICART PHASE 1 : ASSET MASTER
-- reviewer: Sato
-- ============================================================

create table if not exists staticart.asset_master (
  asset_id uuid primary key,
  asset_code text not null unique,
  asset_type staticart.asset_type not null,
  creator_id uuid not null,
  publisher_id uuid null,
  current_version_no integer not null check (current_version_no >= 1),
  lifecycle_state staticart.lifecycle_state not null,
  is_current_version_visible boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  archived_at timestamptz null,
  constraint asset_master_archived_state_ck
    check (
      archived_at is null
      or lifecycle_state = 'archived'
    )
);

create index if not exists idx_staticart_asset_master_creator_lifecycle
  on staticart.asset_master (creator_id, lifecycle_state);

create index if not exists idx_staticart_asset_master_type_lifecycle
  on staticart.asset_master (asset_type, lifecycle_state);


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/010_staticart_asset_master.sql -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/020_staticart_asset_version.sql -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/020_staticart_asset_version.sql

-- ============================================================
-- STATICART PHASE 1 : ASSET VERSION
-- reviewer: Sato
-- ============================================================

create table if not exists staticart.asset_version (
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  version_no integer not null,
  version_label text null,
  is_visible boolean not null default false,
  is_replace_target boolean not null default false,
  published_at timestamptz null,
  created_at timestamptz not null default now(),
  created_by uuid not null,
  primary key (asset_id, version_no)
);

create unique index if not exists uq_staticart_asset_version_one_visible
  on staticart.asset_version (asset_id)
  where is_visible = true;


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/020_staticart_asset_version.sql -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/030_staticart_files_and_metadata.sql -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/030_staticart_files_and_metadata.sql

-- ============================================================
-- STATICART PHASE 1 : FILES AND METADATA
-- reviewer: Sato
-- ============================================================

create table if not exists staticart.asset_file (
  file_id uuid primary key,
  asset_id uuid not null,
  version_no integer not null,
  file_role staticart.file_role not null,
  storage_key text not null,
  mime_type text not null,
  file_size_bytes bigint not null check (file_size_bytes >= 0),
  sha256 text not null,
  page_count integer null check (page_count is null or page_count >= 0),
  width_px integer null check (width_px is null or width_px >= 0),
  height_px integer null check (height_px is null or height_px >= 0),
  duration_ms bigint null check (duration_ms is null or duration_ms >= 0),
  created_at timestamptz not null default now(),
  constraint asset_file_asset_version_fk
    foreign key (asset_id, version_no)
    references staticart.asset_version(asset_id, version_no)
    on delete cascade,
  constraint asset_file_role_uq
    unique (asset_id, version_no, file_role)
);

create table if not exists staticart.asset_localization (
  asset_id uuid not null,
  version_no integer not null,
  language_code text not null,
  title text not null,
  subtitle text null,
  short_description text null,
  long_description text null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  primary key (asset_id, version_no, language_code),
  constraint asset_localization_asset_version_fk
    foreign key (asset_id, version_no)
    references staticart.asset_version(asset_id, version_no)
    on delete cascade
);

create table if not exists staticart.asset_category_map (
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  category_id text not null,
  primary key (asset_id, category_id)
);

create table if not exists staticart.asset_tag_map (
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  tag_id text not null,
  primary key (asset_id, tag_id)
);

create index if not exists idx_staticart_asset_localization_lang
  on staticart.asset_localization (language_code);

create index if not exists idx_staticart_asset_category_map_category
  on staticart.asset_category_map (category_id);

create index if not exists idx_staticart_asset_tag_map_tag
  on staticart.asset_tag_map (tag_id);


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/030_staticart_files_and_metadata.sql -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/040_staticart_policy_and_commerce.sql -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/040_staticart_policy_and_commerce.sql

-- ============================================================
-- STATICART PHASE 1 : POLICY AND COMMERCE
-- reviewer: Sato
-- ============================================================

create table if not exists staticart.asset_rights_policy (
  asset_id uuid primary key references staticart.asset_master(asset_id) on delete cascade,
  version_no integer not null,
  exhibition_allowed boolean not null,
  commercial_use_allowed boolean not null,
  derivative_allowed boolean not null,
  additional_license_required boolean not null default false,
  age_rating text not null,
  region_mode text not null check (region_mode in ('global', 'allow_list', 'deny_list')),
  region_codes text[] not null default '{}',
  rights_summary text null,
  rights_state text not null,
  effective_from timestamptz not null,
  effective_to timestamptz null,
  updated_at timestamptz not null default now(),
  constraint asset_rights_policy_asset_version_fk
    foreign key (asset_id, version_no)
    references staticart.asset_version(asset_id, version_no)
    on delete cascade,
  constraint asset_rights_policy_region_mode_ck
    check (
      (region_mode = 'global' and coalesce(array_length(region_codes, 1), 0) = 0)
      or (region_mode in ('allow_list', 'deny_list'))
    )
);

create table if not exists staticart.asset_sales_offer (
  asset_id uuid primary key references staticart.asset_master(asset_id) on delete cascade,
  sale_type text not null,
  sales_state staticart.sales_state not null,
  base_currency text null,
  base_price numeric(12,2) null,
  price_label_override text null,
  sale_start_at timestamptz null,
  sale_end_at timestamptz null,
  limited_sale_flag boolean not null default false,
  inventory_cap integer null check (inventory_cap is null or inventory_cap >= 0),
  updated_at timestamptz not null default now(),
  constraint asset_sales_offer_price_required_ck
    check (
      sales_state not in ('for_sale', 'preorder')
      or (base_currency is not null and base_price is not null)
    )
);

create table if not exists staticart.asset_subscription_rule (
  asset_id uuid primary key references staticart.asset_master(asset_id) on delete cascade,
  subscription_state staticart.subscription_state not null,
  subscription_eligible boolean not null,
  creator_opt_in boolean not null,
  settlement_group_code text null,
  subscription_start_at timestamptz null,
  subscription_end_at timestamptz null,
  updated_at timestamptz not null default now(),
  constraint asset_subscription_rule_state_ck
    check (
      subscription_state = 'not_included'
      or subscription_eligible = true
    )
);


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/040_staticart_policy_and_commerce.sql -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/050_staticart_review_and_audit.sql -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/050_staticart_review_and_audit.sql

-- ============================================================
-- STATICART PHASE 1 : REVIEW AND AUDIT
-- reviewer: Sato
-- ============================================================

create table if not exists staticart.asset_review_request (
  review_request_id uuid primary key,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  review_round_no integer not null check (review_round_no >= 1),
  submitted_by uuid not null,
  submitted_at timestamptz not null default now(),
  review_status staticart.review_status not null,
  requested_review_types text[] not null default '{}',
  self_check_passed boolean not null,
  closed_at timestamptz null,
  constraint asset_review_request_round_uq
    unique (asset_id, review_round_no)
);

create table if not exists staticart.asset_review_decision (
  review_decision_id uuid primary key,
  review_request_id uuid not null references staticart.asset_review_request(review_request_id) on delete cascade,
  decision_by uuid not null,
  decision_status staticart.review_status not null,
  decision_reason_code text null,
  decision_comment text null,
  decided_at timestamptz not null default now()
);

create table if not exists staticart.asset_audit_event (
  audit_event_id uuid primary key,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  user_id uuid null,
  event_type text not null,
  from_state text null,
  to_state text null,
  reason_code text null,
  external_ref text null,
  detail_json jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

create index if not exists idx_staticart_asset_review_request_asset
  on staticart.asset_review_request (asset_id, submitted_at desc);

create index if not exists idx_staticart_asset_audit_event_asset
  on staticart.asset_audit_event (asset_id, created_at desc);

create index if not exists idx_staticart_asset_audit_event_event_type
  on staticart.asset_audit_event (event_type, created_at desc);


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/050_staticart_review_and_audit.sql -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/060_staticart_entitlement_and_continuity.sql -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/060_staticart_entitlement_and_continuity.sql

-- ============================================================
-- STATICART PHASE 1 : ENTITLEMENT AND CONTINUITY
-- reviewer: Sato
-- ============================================================

create table if not exists staticart.user_asset_entitlement (
  user_id uuid not null,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  has_owned_permanent boolean not null default false,
  has_subscription_access boolean not null default false,
  sample_available boolean not null default false,
  blocking_reason_code text null,
  effective_entitlement_state staticart.entitlement_state not null,
  last_external_transaction_id text null,
  computed_at timestamptz not null default now(),
  primary key (user_id, asset_id)
);

create table if not exists staticart.user_library_projection (
  user_id uuid not null,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  visible_in_library boolean not null,
  visible_in_continue_reading boolean not null,
  visible_in_continue_viewing boolean not null,
  favorite_state boolean not null default false,
  downloadable_now boolean not null default false,
  last_opened_at timestamptz null,
  projection_refreshed_at timestamptz not null default now(),
  primary key (user_id, asset_id)
);

create table if not exists staticart.user_reader_progress (
  user_id uuid not null,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  current_locator text not null,
  progress_percent numeric(5,2) not null check (progress_percent >= 0 and progress_percent <= 100),
  sync_version bigint not null check (sync_version >= 0),
  last_device_type text null,
  last_opened_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  primary key (user_id, asset_id)
);

create table if not exists staticart.user_viewer_progress (
  user_id uuid not null,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  current_frame_ref text null,
  current_page_no integer null check (current_page_no is null or current_page_no >= 0),
  zoom_ratio numeric(8,4) null check (zoom_ratio is null or zoom_ratio > 0),
  sync_version bigint not null check (sync_version >= 0),
  last_device_type text null,
  last_opened_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  primary key (user_id, asset_id)
);

create table if not exists staticart.user_asset_annotation (
  annotation_id uuid primary key,
  user_id uuid not null,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  annotation_type text not null check (annotation_type in ('bookmark', 'note', 'highlight')),
  locator text not null,
  payload_json jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists staticart.user_asset_favorite (
  user_id uuid not null,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  created_at timestamptz not null default now(),
  primary key (user_id, asset_id)
);

create index if not exists idx_staticart_user_library_projection_opened
  on staticart.user_library_projection (user_id, last_opened_at desc);

create index if not exists idx_staticart_user_reader_progress_opened
  on staticart.user_reader_progress (user_id, last_opened_at desc);

create index if not exists idx_staticart_user_viewer_progress_opened
  on staticart.user_viewer_progress (user_id, last_opened_at desc);

create index if not exists idx_staticart_user_asset_annotation_user_asset
  on staticart.user_asset_annotation (user_id, asset_id, updated_at desc);


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/060_staticart_entitlement_and_continuity.sql -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/070_staticart_projection_tables.sql -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/070_staticart_projection_tables.sql

-- ============================================================
-- STATICART PHASE 1 : PROJECTION TABLES
-- reviewer: Sato
-- ============================================================

create table if not exists staticart.asset_exhibition_projection (
  asset_id uuid primary key references staticart.asset_master(asset_id) on delete cascade,
  version_no integer not null,
  projection_status staticart.projection_status not null,
  usable_in_exhibition_builder boolean not null,
  entitlement_state staticart.entitlement_state not null,
  exhibition_allowed boolean not null,
  additional_license_required boolean not null,
  price_label text null,
  rights_summary text null,
  reason_codes text[] not null default '{}',
  projection_refreshed_at timestamptz not null default now(),
  constraint asset_exhibition_projection_asset_version_fk
    foreign key (asset_id, version_no)
    references staticart.asset_version(asset_id, version_no)
    on delete cascade
);

create index if not exists idx_staticart_asset_exhibition_projection_status
  on staticart.asset_exhibition_projection (projection_status, projection_refreshed_at desc);

-- IMPORTANT:
-- This table is derived.
-- Downstream consumers must not treat it as canonical write source.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/070_staticart_projection_tables.sql -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/900_staticart_phase1_apply_runner.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/900_staticart_phase1_apply_runner.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql"

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

run_sql() {
  local file="$1"
  printf '\n============================================================\n'
  printf 'APPLY: %s\n' "$file"
  printf 'DB   : PERSONA_DATABASE_URL\n'
  printf '============================================================\n'
  psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 -f "$file"
}

run_sql "$BASE/001_staticart_schema_and_enums.sql"
run_sql "$BASE/010_staticart_asset_master.sql"
run_sql "$BASE/020_staticart_asset_version.sql"
run_sql "$BASE/030_staticart_files_and_metadata.sql"
run_sql "$BASE/040_staticart_policy_and_commerce.sql"
run_sql "$BASE/050_staticart_review_and_audit.sql"
run_sql "$BASE/060_staticart_entitlement_and_continuity.sql"
run_sql "$BASE/070_staticart_projection_tables.sql"

printf '\n============================================================\n'
printf 'STATICART PHASE1 SQL APPLY DONE\n'
printf '============================================================\n'


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql/900_staticart_phase1_apply_runner.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/911_staticart_phase1_env_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/911_staticart_phase1_env_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

printf '\n============================================================\n'
printf 'STATICART PHASE1 ENV CHECK\n'
printf '============================================================\n'

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

echo "OK: PERSONA_DATABASE_URL is set"

if [ -n "${DATABASE_URL:-}" ]; then
  echo "INFO: DATABASE_URL is also set"
  echo "INFO: StaticArtOS Persona-side verification still uses PERSONA_DATABASE_URL only"
else
  echo "INFO: DATABASE_URL is not set"
fi

echo "OK: verification target is Persona side"


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/911_staticart_phase1_env_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/912_staticart_phase1_schema_enum_verify.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/912_staticart_phase1_schema_enum_verify.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

psql "$PERSONA_DATABASE_URL" <<'SQL'
\pset footer off
\pset tuples_only on

\echo ============================================================
\echo STATICART PHASE1 SCHEMA / ENUM VERIFY
\echo ============================================================

with expected_schema as (
  select 'staticart'::text as schema_name
),
actual_schema as (
  select nspname as schema_name
  from pg_namespace
  where nspname = 'staticart'
)
select
  case
    when exists(select 1 from actual_schema) then 'OK  schema staticart exists'
    else 'NG  schema staticart missing'
  end
;

with expected_enum(type_name) as (
  values
    ('asset_type'),
    ('lifecycle_state'),
    ('sales_state'),
    ('subscription_state'),
    ('entitlement_state'),
    ('review_status'),
    ('file_role'),
    ('projection_status')
)
select
  case
    when t.typname is not null then 'OK  enum ' || e.type_name
    else 'NG  enum ' || e.type_name
  end
from expected_enum e
left join pg_type t
  on t.typname = e.type_name
left join pg_namespace n
  on n.oid = t.typnamespace
 and n.nspname = 'staticart'
order by e.type_name;
SQL


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/912_staticart_phase1_schema_enum_verify.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/913_staticart_phase1_table_verify.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/913_staticart_phase1_table_verify.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

psql "$PERSONA_DATABASE_URL" <<'SQL'
\pset footer off
\pset tuples_only on

\echo ============================================================
\echo STATICART PHASE1 TABLE VERIFY
\echo ============================================================

with expected_table(table_name) as (
  values
    ('asset_master'),
    ('asset_version'),
    ('asset_file'),
    ('asset_localization'),
    ('asset_category_map'),
    ('asset_tag_map'),
    ('asset_rights_policy'),
    ('asset_sales_offer'),
    ('asset_subscription_rule'),
    ('asset_review_request'),
    ('asset_review_decision'),
    ('user_asset_entitlement'),
    ('user_library_projection'),
    ('user_reader_progress'),
    ('user_viewer_progress'),
    ('user_asset_annotation'),
    ('user_asset_favorite'),
    ('asset_exhibition_projection'),
    ('asset_audit_event')
)
select
  case
    when c.relname is not null then 'OK  table ' || e.table_name
    else 'NG  table ' || e.table_name
  end
from expected_table e
left join pg_class c
  on c.relname = e.table_name
left join pg_namespace n
  on n.oid = c.relnamespace
 and n.nspname = 'staticart'
 and c.relkind = 'r'
order by e.table_name;
SQL


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/913_staticart_phase1_table_verify.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/914_staticart_phase1_index_verify.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/914_staticart_phase1_index_verify.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

psql "$PERSONA_DATABASE_URL" <<'SQL'
\pset footer off
\pset tuples_only on

\echo ============================================================
\echo STATICART PHASE1 INDEX VERIFY
\echo ============================================================

with expected_index(index_name) as (
  values
    ('idx_staticart_asset_master_creator_lifecycle'),
    ('idx_staticart_asset_master_type_lifecycle'),
    ('uq_staticart_asset_version_one_visible'),
    ('idx_staticart_asset_localization_lang'),
    ('idx_staticart_asset_category_map_category'),
    ('idx_staticart_asset_tag_map_tag'),
    ('idx_staticart_asset_review_request_asset'),
    ('idx_staticart_asset_audit_event_asset'),
    ('idx_staticart_asset_audit_event_event_type'),
    ('idx_staticart_user_library_projection_opened'),
    ('idx_staticart_user_reader_progress_opened'),
    ('idx_staticart_user_viewer_progress_opened'),
    ('idx_staticart_user_asset_annotation_user_asset'),
    ('idx_staticart_asset_exhibition_projection_status')
)
select
  case
    when c.relname is not null then 'OK  index ' || e.index_name
    else 'NG  index ' || e.index_name
  end
from expected_index e
left join pg_class c
  on c.relname = e.index_name
left join pg_namespace n
  on n.oid = c.relnamespace
 and n.nspname = 'staticart'
 and c.relkind = 'i'
order by e.index_name;
SQL


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/914_staticart_phase1_index_verify.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/915_staticart_phase1_integrity_verify.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/915_staticart_phase1_integrity_verify.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

psql "$PERSONA_DATABASE_URL" <<'SQL'
\pset footer off
\pset tuples_only on

\echo ============================================================
\echo STATICART PHASE1 INTEGRITY VERIFY
\echo ============================================================

-- reader / viewer continuity separation
select
  case
    when exists (
      select 1
      from information_schema.tables
      where table_schema = 'staticart'
        and table_name = 'user_reader_progress'
    )
    and exists (
      select 1
      from information_schema.tables
      where table_schema = 'staticart'
        and table_name = 'user_viewer_progress'
    )
    then 'OK  reader/viewer continuity tables are separate'
    else 'NG  reader/viewer continuity separation missing'
  end
;

-- projection table presence
select
  case
    when exists (
      select 1
      from information_schema.tables
      where table_schema = 'staticart'
        and table_name = 'asset_exhibition_projection'
    )
    then 'OK  projection table exists'
    else 'NG  projection table missing'
  end
;

-- key column existence checks
with expected_column(table_name, column_name) as (
  values
    ('asset_master', 'asset_id'),
    ('asset_master', 'lifecycle_state'),
    ('asset_version', 'is_visible'),
    ('asset_file', 'file_role'),
    ('asset_rights_policy', 'region_mode'),
    ('asset_sales_offer', 'sales_state'),
    ('asset_subscription_rule', 'subscription_state'),
    ('asset_review_request', 'review_status'),
    ('user_asset_entitlement', 'effective_entitlement_state'),
    ('user_reader_progress', 'current_locator'),
    ('user_viewer_progress', 'current_page_no'),
    ('asset_exhibition_projection', 'projection_status'),
    ('asset_audit_event', 'event_type')
)
select
  case
    when c.column_name is not null
      then 'OK  column ' || e.table_name || '.' || e.column_name
    else 'NG  column ' || e.table_name || '.' || e.column_name
  end
from expected_column e
left join information_schema.columns c
  on c.table_schema = 'staticart'
 and c.table_name = e.table_name
 and c.column_name = e.column_name
order by e.table_name, e.column_name;
SQL


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/915_staticart_phase1_integrity_verify.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/990_staticart_phase1_full_verify.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/990_staticart_phase1_full_verify.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification"

printf '\n============================================================\n'
printf 'STATICART PHASE1 FULL VERIFY START\n'
printf '============================================================\n'

bash "$BASE/911_staticart_phase1_env_check.sh"
bash "$BASE/912_staticart_phase1_schema_enum_verify.sh"
bash "$BASE/913_staticart_phase1_table_verify.sh"
bash "$BASE/914_staticart_phase1_index_verify.sh"
bash "$BASE/915_staticart_phase1_integrity_verify.sh"

printf '\n============================================================\n'
printf 'STATICART PHASE1 FULL VERIFY DONE\n'
printf '============================================================\n'


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification/990_staticart_phase1_full_verify.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122100_STATIC_ART_OS_API_IMPLEMENTATION_PREP_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122100_STATIC_ART_OS_API_IMPLEMENTATION_PREP_INDEX.md

# ============================================================
# STATIC ART OS API IMPLEMENTATION PREP INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

files:
  - 122110_STATIC_ART_OS_ENDPOINT_IMPLEMENTATION_LEDGER.md
  - 122120_STATIC_ART_OS_OPENAPI_SKELETON.md
  - 122130_STATIC_ART_OS_ERROR_MAPPING_SKELETON.md
  - 122140_STATIC_ART_OS_IDEMPOTENCY_AND_CONCURRENCY_SKELETON.md

objective:
  - Convert exact API design into endpoint-by-endpoint implementation units
  - Freeze error mapping
  - Freeze idempotency and concurrency behavior


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122100_STATIC_ART_OS_API_IMPLEMENTATION_PREP_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122110_STATIC_ART_OS_ENDPOINT_IMPLEMENTATION_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122110_STATIC_ART_OS_ENDPOINT_IMPLEMENTATION_LEDGER.md

# ============================================================
# STATIC ART OS ENDPOINT IMPLEMENTATION LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

endpoint_groups:
  creator_write:
    - POST /api/v1/staticart/assets
    - PUT /api/v1/staticart/assets/{asset_id}/localizations/{language_code}
    - PUT /api/v1/staticart/assets/{asset_id}/categories
    - PUT /api/v1/staticart/assets/{asset_id}/tags
    - POST /api/v1/staticart/assets/{asset_id}/files:begin-upload
    - POST /api/v1/staticart/assets/{asset_id}/files:complete-upload
    - PUT /api/v1/staticart/assets/{asset_id}/rights-policy
    - PUT /api/v1/staticart/assets/{asset_id}/sales-offer
    - PUT /api/v1/staticart/assets/{asset_id}/subscription-rule
    - POST /api/v1/staticart/assets/{asset_id}:run-self-check
    - POST /api/v1/staticart/assets/{asset_id}/review-requests
    - POST /api/v1/staticart/assets/{asset_id}:publish-marketplace
    - POST /api/v1/staticart/assets/{asset_id}:publish-library-only
    - POST /api/v1/staticart/assets/{asset_id}:delist
    - POST /api/v1/staticart/assets/{asset_id}:restrict
    - POST /api/v1/staticart/assets/{asset_id}:archive

  review_governance:
    - POST /api/v1/staticart/review-requests/{review_request_id}:decide

  read_access:
    - GET /api/v1/staticart/assets/{asset_id}
    - GET /api/v1/staticart/assets/{asset_id}/entitlement
    - POST /api/v1/staticart/assets/{asset_id}:create-access-session
    - GET /api/v1/staticart/assets/{asset_id}/exhibition-projection

  library_continuity:
    - GET /api/v1/staticart/library
    - GET /api/v1/staticart/library/continue-reading
    - GET /api/v1/staticart/library/continue-viewing
    - PUT /api/v1/staticart/assets/{asset_id}/reader-progress
    - PUT /api/v1/staticart/assets/{asset_id}/viewer-progress
    - POST /api/v1/staticart/assets/{asset_id}/favorite
    - DELETE /api/v1/staticart/assets/{asset_id}/favorite
    - POST /api/v1/staticart/assets/{asset_id}/annotations

  internal:
    - POST /api/v1/staticart/internal/purchases:reflect
    - POST /api/v1/staticart/internal/subscriptions:reflect
    - POST /api/v1/staticart/assets/{asset_id}:refresh-projections

endpoint_task_template:
  required_fields:
    - endpoint path
    - method
    - actor/permission
    - request body
    - response body
    - status codes
    - canonical table touch points
    - derived refresh impact
    - audit event requirement
    - idempotency requirement
    - version_token rule

priority_order:
  - asset create and detail
  - file upload begin/complete
  - localization/rights/sales/subscription writes
  - self check and review submission
  - review decision
  - publish and restriction actions
  - entitlement and access session
  - library and continuity
  - internal reflection


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122110_STATIC_ART_OS_ENDPOINT_IMPLEMENTATION_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122120_STATIC_ART_OS_OPENAPI_SKELETON.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122120_STATIC_ART_OS_OPENAPI_SKELETON.md

# ============================================================
# STATIC ART OS OPENAPI SKELETON
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

openapi_sections:
  - info
  - servers
  - security
  - tags
  - paths
  - components.schemas
  - components.parameters
  - components.responses
  - components.headers
  - components.securitySchemes

core_schema_targets:
  - AssetSummary
  - AssetDetail
  - LocalizationWriteRequest
  - RightsPolicyWriteRequest
  - SalesOfferWriteRequest
  - SubscriptionRuleWriteRequest
  - SelfCheckResult
  - ReviewRequestCreateRequest
  - ReviewDecisionRequest
  - PublishActionRequest
  - EntitlementResponse
  - AccessSessionRequest
  - AccessSessionResponse
  - LibraryItem
  - ReaderProgressRequest
  - ViewerProgressRequest
  - FavoriteResponse
  - AnnotationCreateRequest
  - ExhibitionProjectionResponse
  - PurchaseReflectRequest
  - SubscriptionReflectRequest
  - ErrorResponse

rules:
  - success and error shapes must stay consistent across endpoints
  - request_id must appear in response meta
  - cursor pagination components must be reusable
  - error code enum must match fixed error contract


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122120_STATIC_ART_OS_OPENAPI_SKELETON.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122130_STATIC_ART_OS_ERROR_MAPPING_SKELETON.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122130_STATIC_ART_OS_ERROR_MAPPING_SKELETON.md

# ============================================================
# STATIC ART OS ERROR MAPPING SKELETON
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

mapping_groups:
  validation:
    - STATICART_VALIDATION_ERROR -> 400
    - STATICART_INVALID_ENUM -> 400
    - STATICART_REQUIRED_FIELD_MISSING -> 400
    - STATICART_INVALID_CURSOR -> 400

  auth_permission:
    - STATICART_UNAUTHORIZED -> 401
    - STATICART_FORBIDDEN -> 403
    - STATICART_ROLE_NOT_ALLOWED -> 403
    - STATICART_ASSET_NOT_OWNED_BY_ACTOR -> 403

  not_found_conflict:
    - STATICART_ASSET_NOT_FOUND -> 404
    - STATICART_FILE_NOT_FOUND -> 404
    - STATICART_REVIEW_REQUEST_NOT_FOUND -> 404
    - STATICART_ASSET_STATE_CONFLICT -> 409
    - STATICART_REVIEW_ALREADY_PENDING -> 409
    - STATICART_VERSION_CONFLICT -> 409
    - STATICART_IDEMPOTENCY_REPLAY_MISMATCH -> 409

  business_rule:
    - STATICART_REVIEW_SUBMISSION_PRECONDITION_FAILED -> 422
    - STATICART_PUBLISH_PRECONDITION_FAILED -> 422
    - STATICART_RIGHTS_POLICY_BLOCKED -> 422 or 403 depending on surface
    - STATICART_REGION_POLICY_BLOCKED -> 403
    - STATICART_AGE_POLICY_BLOCKED -> 403
    - STATICART_EXHIBITION_PROJECTION_INELIGIBLE -> 422
    - STATICART_ENTITLEMENT_BLOCKED -> 403
    - STATICART_SAMPLE_NOT_AVAILABLE -> 403
    - STATICART_ACCESS_NOT_GRANTED -> 403

  infra:
    - STATICART_STORAGE_UPLOAD_FAILED -> 503 or 500
    - STATICART_EXTERNAL_PAYMENT_SYNC_FAILED -> 503
    - STATICART_EXTERNAL_SUBSCRIPTION_SYNC_FAILED -> 503
    - STATICART_RATE_LIMITED -> 429
    - STATICART_INTERNAL_ERROR -> 500

rules:
  - 409 is for conflict and state mismatch
  - 422 is for valid shape but unmet business precondition
  - 403 is for policy or permission block after auth


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122130_STATIC_ART_OS_ERROR_MAPPING_SKELETON.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122140_STATIC_ART_OS_IDEMPOTENCY_AND_CONCURRENCY_SKELETON.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122140_STATIC_ART_OS_IDEMPOTENCY_AND_CONCURRENCY_SKELETON.md

# ============================================================
# STATIC ART OS IDEMPOTENCY AND CONCURRENCY SKELETON
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

idempotency_required_endpoints:
  - POST /assets
  - POST /assets/{asset_id}/files:begin-upload
  - POST /assets/{asset_id}/files:complete-upload
  - POST /assets/{asset_id}:run-self-check
  - POST /assets/{asset_id}/review-requests
  - POST /review-requests/{review_request_id}:decide
  - POST /assets/{asset_id}:publish-marketplace
  - POST /assets/{asset_id}:publish-library-only
  - POST /assets/{asset_id}:delist
  - POST /assets/{asset_id}:restrict
  - POST /assets/{asset_id}:archive
  - POST /assets/{asset_id}/favorite
  - POST /assets/{asset_id}/annotations
  - POST /internal/purchases:reflect
  - POST /internal/subscriptions:reflect

version_token_required_endpoints:
  - localization put
  - categories put
  - tags put
  - rights-policy put
  - sales-offer put
  - subscription-rule put
  - action endpoints touching lifecycle

progress_sync_version:
  reader:
    - stale sync_version -> 409
  viewer:
    - stale sync_version -> 409

rules:
  - same idempotency key with same body returns original result
  - same idempotency key with different body returns 409
  - optimistic concurrency is mandatory on governed asset writes


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122140_STATIC_ART_OS_IDEMPOTENCY_AND_CONCURRENCY_SKELETON.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122150_STATIC_ART_OS_OPENAPI_FILE_PACK_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122150_STATIC_ART_OS_OPENAPI_FILE_PACK_INDEX.md

# ============================================================
# STATIC ART OS OPENAPI FILE PACK INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
This pack provides the canonical OpenAPI skeleton files for
StaticArtOS API implementation.

files:
  - openapi/staticart.openapi.yaml
  - openapi/components/staticart.common.schemas.yaml
  - openapi/components/staticart.error.codes.yaml
  - openapi/routes/staticart.route.stub.ledger.md

objective:
  - Freeze the OpenAPI top-level document
  - Freeze common schema direction
  - Freeze error code component direction
  - Freeze route stub implementation ledger


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122150_STATIC_ART_OS_OPENAPI_FILE_PACK_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122160_STATIC_ART_OS_API_SOURCE_SKELETON_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122160_STATIC_ART_OS_API_SOURCE_SKELETON_INDEX.md

# ============================================================
# STATIC ART OS API SOURCE SKELETON INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
This file defines the initial source-skeleton layout for
StaticArtOS API implementation.

source_root:
  - 122.api-implementation-prep/source-skeleton/staticart-api

main_units:
  - contracts
  - core
  - guards
  - validators
  - routes
  - services
  - repositories
  - jobs

implementation_objective:
  - Separate route, validation, permission, service, repository, and jobs
  - Keep projection handling out of canonical write logic
  - Keep entitlement resolution separate from route handlers
  - Make later framework binding possible without redesign

important_rules:
  - Route handlers do not embed SQL directly
  - Services do not return raw HTTP responses
  - Repositories do not decide permission
  - Projection refresh is queued from services, not from repositories
  - Reader continuity and viewer continuity remain separate


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122160_STATIC_ART_OS_API_SOURCE_SKELETON_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122170_STATIC_ART_OS_PHASE2_BINDING_TASK_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122170_STATIC_ART_OS_PHASE2_BINDING_TASK_LEDGER.md

# ============================================================
# STATIC ART OS PHASE 2 BINDING TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 2
owner: Boss
prepared_by: Zero

phase_objective:
Phase 2 establishes the creator-side write backbone by binding
route, validator, guard, service, and repository layers together.

phase_scope:
  - asset create
  - asset detail read
  - localization write
  - rights policy write
  - sales offer write
  - subscription rule write
  - governed write validation
  - version_token handling
  - response/error envelope consistency

task_units:
  - P2-T001 bind asset create endpoint
  - P2-T002 bind asset detail endpoint
  - P2-T003 bind localization write endpoint
  - P2-T004 bind rights policy write endpoint
  - P2-T005 bind sales offer write endpoint
  - P2-T006 bind subscription rule write endpoint
  - P2-T007 bind route validators and permission guards
  - P2-T008 bind repository interfaces to Persona-side DB access
  - P2-T009 verify canonical response and error envelopes
  - P2-T010 verify Phase 2 exit criteria

task_details:
  P2-T001:
    objective:
      - connect POST /assets route to AssetService.createDraft
      - connect AssetService.createDraft to repository createDraft
    exit_condition:
      - draft creation persists correctly
      - success envelope returns canonical fields

  P2-T002:
    objective:
      - connect GET /assets/{asset_id}
      - return asset detail through canonical response envelope
    exit_condition:
      - existing asset is readable
      - missing asset returns canonical not-found error

  P2-T003:
    objective:
      - connect localization write route
      - enforce version_token validation
      - enforce creator/publisher ownership guard
    exit_condition:
      - localization write persists
      - stale version_token path is handled

  P2-T004:
    objective:
      - connect rights policy write route
      - enforce region_mode and required field validation
    exit_condition:
      - rights policy persists
      - invalid region_mode path fails correctly

  P2-T005:
    objective:
      - connect sales offer write route
      - enforce price requirements for for_sale and preorder
    exit_condition:
      - valid sales offer persists
      - invalid offer fails with canonical error shape

  P2-T006:
    objective:
      - connect subscription rule write route
      - enforce included-state validation
    exit_condition:
      - valid subscription rule persists
      - invalid rule fails correctly

  P2-T007:
    objective:
      - bind validators before service calls
      - bind permission guard before repository calls
    exit_condition:
      - routes do not bypass validator/guard layers

  P2-T008:
    objective:
      - bind repository implementations to Persona-side DB access
      - keep SQL out of route handlers
    environment_rule:
      - PERSONA_DATABASE_URL only for Persona-side DB work
    exit_condition:
      - repository layer talks to Persona-side DB only

  P2-T009:
    objective:
      - unify success envelope
      - unify error envelope
    exit_condition:
      - all Phase 2 endpoints return canonical envelope shapes

  P2-T010:
    objective:
      - verify creator write backbone end-to-end
    exit_condition:
      - Phase 2 marked complete or blocked with named blocker

important_rules:
  - route handlers do not embed SQL directly
  - services do not return raw HTTP responses
  - repositories do not decide permission
  - projection refresh is not part of Phase 2 write persistence
  - PERSONA_DATABASE_URL is the Persona-side DB target


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122170_STATIC_ART_OS_PHASE2_BINDING_TASK_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122180_STATIC_ART_OS_PHASE2_ENDPOINT_SERVICE_REPOSITORY_MATRIX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122180_STATIC_ART_OS_PHASE2_ENDPOINT_SERVICE_REPOSITORY_MATRIX.md

# ============================================================
# STATIC ART OS PHASE 2 ENDPOINT SERVICE REPOSITORY MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 2
owner: Boss
prepared_by: Zero

matrix:
  - endpoint: POST /api/v1/staticart/assets
    route_class: AssetsRoute.createAsset
    service_method: AssetService.createDraft
    repository_method: AssetRepository.createDraft
    validator_focus:
      - asset_type required
      - creator_id required
      - initial_language_code required
    guard_focus:
      - creator_owner
      - publisher_operator

  - endpoint: GET /api/v1/staticart/assets/{asset_id}
    route_class: AssetsRoute.getAssetDetail
    service_method: AssetService.getAssetDetail
    repository_method: AssetRepository.getDetail
    validator_focus:
      - asset_id required
    guard_focus:
      - surface visibility only

  - endpoint: PUT /api/v1/staticart/assets/{asset_id}/localizations/{language_code}
    route_class: AssetsRoute.putLocalization
    service_method: AssetService.upsertLocalization
    repository_method: AssetRepository.upsertLocalization
    validator_focus:
      - version_token required
      - title required
      - language_code required
    guard_focus:
      - creator_owner
      - publisher_operator
      - ownership/publisher boundary

  - endpoint: PUT /api/v1/staticart/assets/{asset_id}/rights-policy
    route_class: AssetsRoute.putRightsPolicy
    service_method: AssetService.updateRightsPolicy
    repository_method: AssetRepository.updateRightsPolicy
    validator_focus:
      - version_token required
      - region_mode enum
      - region_codes consistency
      - age_rating required
    guard_focus:
      - creator_owner
      - publisher_operator
      - no review_pending edit bypass

  - endpoint: PUT /api/v1/staticart/assets/{asset_id}/sales-offer
    route_class: AssetsRoute.putSalesOffer
    service_method: AssetService.updateSalesOffer
    repository_method: AssetRepository.updateSalesOffer
    validator_focus:
      - version_token required
      - sale_type required
      - sales_state required
      - price required in for_sale/preorder
    guard_focus:
      - creator_owner
      - publisher_operator
      - no review_pending edit bypass

  - endpoint: PUT /api/v1/staticart/assets/{asset_id}/subscription-rule
    route_class: AssetsRoute.putSubscriptionRule
    service_method: AssetService.updateSubscriptionRule
    repository_method: AssetRepository.updateSubscriptionRule
    validator_focus:
      - version_token required
      - subscription_state required
      - subscription_eligible consistency
    guard_focus:
      - creator_owner
      - publisher_operator
      - no review_pending edit bypass

binding_rules:
  - route -> validator -> guard -> service -> repository
  - repository result -> service result -> canonical response envelope
  - repository exceptions must be normalized before returning outward


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122180_STATIC_ART_OS_PHASE2_ENDPOINT_SERVICE_REPOSITORY_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122190_STATIC_ART_OS_PHASE2_VALIDATOR_GUARD_BINDING_MATRIX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122190_STATIC_ART_OS_PHASE2_VALIDATOR_GUARD_BINDING_MATRIX.md

# ============================================================
# STATIC ART OS PHASE 2 VALIDATOR / GUARD BINDING MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 2
owner: Boss
prepared_by: Zero

route_validator_guard_map:
  create_asset:
    validators:
      - requireString(asset_type)
      - requireString(creator_id)
      - requireString(initial_language_code)
    guards:
      - requireActor(creator_owner | publisher_operator)

  get_asset_detail:
    validators:
      - asset_id present
    guards:
      - surface visibility guard only

  put_localization:
    validators:
      - requireVersionToken(version_token)
      - requireString(language_code)
      - requireString(title)
    guards:
      - requireActor(creator_owner | publisher_operator)
      - requireAssetOwnershipOrPublisherAccess
      - requireNotReviewPending

  put_rights_policy:
    validators:
      - requireVersionToken(version_token)
      - region_mode enum validation
      - region_codes consistency validation
      - exhibition_allowed boolean
      - age_rating required
    guards:
      - requireActor(creator_owner | publisher_operator)
      - requireAssetOwnershipOrPublisherAccess
      - requireNotReviewPending

  put_sales_offer:
    validators:
      - requireVersionToken(version_token)
      - sale_type required
      - sales_state required
      - price rule validation
    guards:
      - requireActor(creator_owner | publisher_operator)
      - requireAssetOwnershipOrPublisherAccess
      - requireNotReviewPending

  put_subscription_rule:
    validators:
      - requireVersionToken(version_token)
      - subscription_state required
      - subscription_eligible consistency validation
    guards:
      - requireActor(creator_owner | publisher_operator)
      - requireAssetOwnershipOrPublisherAccess
      - requireNotReviewPending

guard_rules:
  - permission is checked before service execution
  - review_pending prevents creator-side governed writes
  - repository layer must not re-decide permission as primary logic

validator_rules:
  - validators check request shape and field semantics
  - business lifecycle rules may still fail inside service/repository path


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122190_STATIC_ART_OS_PHASE2_VALIDATOR_GUARD_BINDING_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122200_STATIC_ART_OS_PHASE2_EXIT_CRITERIA_AND_CHECKLIST.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122200_STATIC_ART_OS_PHASE2_EXIT_CRITERIA_AND_CHECKLIST.md

# ============================================================
# STATIC ART OS PHASE 2 EXIT CRITERIA AND CHECKLIST
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 2
owner: Boss
prepared_by: Zero

phase_2_complete_definition:
  - asset create works end-to-end
  - asset detail read works end-to-end
  - localization write works end-to-end
  - rights policy write works end-to-end
  - sales offer write works end-to-end
  - subscription rule write works end-to-end
  - validators are bound before service execution
  - guards are bound before repository access
  - response envelope is canonical
  - error envelope is canonical
  - PERSONA side DB access is used where DB binding exists

checklist:
  - POST /assets success path verified
  - GET /assets/{asset_id} success path verified
  - PUT localization success and conflict paths verified
  - PUT rights success and invalid-region paths verified
  - PUT sales success and invalid-price paths verified
  - PUT subscription success and invalid-state paths verified
  - review_pending write-block path verified
  - creator/publisher permission boundaries verified
  - 400/403/404/409/422 mapping verified
  - no route handler embeds SQL directly

blockers_if_failed:
  - missing repository implementation
  - inconsistent error envelope
  - version_token path not enforced
  - permission bypass
  - wrong DB target


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122200_STATIC_ART_OS_PHASE2_EXIT_CRITERIA_AND_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122210_STATIC_ART_OS_PHASE2_PROGRESS_MEMO_TEMPLATE.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122210_STATIC_ART_OS_PHASE2_PROGRESS_MEMO_TEMPLATE.md

# ============================================================
# STATIC ART OS PHASE 2 PROGRESS MEMO TEMPLATE
# ============================================================

status: template
system: StaticArtOS
phase: Phase 2
owner: Boss
prepared_by: Zero

execution_date:

environment:
  - PERSONA_DATABASE_URL used where repository binding was required: yes_or_no

completion_status:
  - P2-T001 create asset binding: done_or_blocked
  - P2-T002 asset detail binding: done_or_blocked
  - P2-T003 localization binding: done_or_blocked
  - P2-T004 rights binding: done_or_blocked
  - P2-T005 sales binding: done_or_blocked
  - P2-T006 subscription binding: done_or_blocked
  - P2-T007 validator/guard binding: done_or_blocked
  - P2-T008 repository binding: done_or_blocked
  - P2-T009 response/error envelope verification: done_or_blocked
  - P2-T010 phase exit verification: done_or_blocked

blockers:
  - optional

notes:
  - optional

final_judgement:
  - phase_2_complete: yes_or_no
  - next_phase_allowed: yes_or_no


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122210_STATIC_ART_OS_PHASE2_PROGRESS_MEMO_TEMPLATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122220_STATIC_ART_OS_PHASE2_REPOSITORY_IMPLEMENTATION_SKELETON_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122220_STATIC_ART_OS_PHASE2_REPOSITORY_IMPLEMENTATION_SKELETON_INDEX.md

# ============================================================
# STATIC ART OS PHASE2 REPOSITORY IMPLEMENTATION SKELETON INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 2 repository skeleton
owner: Boss
prepared_by: Zero

purpose:
This pack provides the repository-side implementation skeleton
for StaticArtOS API binding.

source_root:
  - 122.api-implementation-prep/source-skeleton/staticart-api/repositories

included_files:
  - repositories/db-client.ts
  - repositories/helpers/repository-errors.ts
  - repositories/sql/staticart-asset-sql.ts
  - repositories/sql/staticart-entitlement-sql.ts
  - repositories/sql/staticart-library-sql.ts
  - repositories/sql/staticart-projection-sql.ts
  - repositories/asset-repository.impl.ts
  - repositories/entitlement-repository.impl.ts
  - repositories/library-repository.impl.ts
  - repositories/projection-repository.impl.ts
  - repositories/README.md

objective:
  - Freeze Persona-side DB binding direction
  - Keep SQL out of routes and services
  - Keep permission outside repository layer
  - Keep projection derived and separate

important_rules:
  - PERSONA_DATABASE_URL is the only Persona-side DB target
  - Repository layer must not decide permission
  - Repository layer must not return HTTP responses
  - Projection tables must not be treated as canonical write sources


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122220_STATIC_ART_OS_PHASE2_REPOSITORY_IMPLEMENTATION_SKELETON_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122230_STATIC_ART_OS_PHASE2_REPOSITORY_BINDING_NOTES.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122230_STATIC_ART_OS_PHASE2_REPOSITORY_BINDING_NOTES.md

# ============================================================
# STATIC ART OS PHASE2 REPOSITORY BINDING NOTES
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 2 repository skeleton
owner: Boss
prepared_by: Zero

binding_principles:
  - Route validates and guards.
  - Service orchestrates use case.
  - Repository performs Persona-side persistence and reads.
  - Repository throws normalized domain/repository exceptions only.
  - Repository never constructs outward HTTP response envelopes.

persona_side_rule:
  - Use PERSONA_DATABASE_URL only.
  - Do not use DATABASE_URL for StaticArtOS Persona-side repository binding.

implementation_targets:
  asset_repository:
    - createDraft
    - getDetail
    - upsertLocalization
    - updateRightsPolicy
    - updateSalesOffer
    - updateSubscriptionRule
    - runSelfCheck
    - createReviewRequest
    - decideReview
    - publishMarketplace
    - publishLibraryOnly
    - delist
    - restrict
    - archive

  entitlement_repository:
    - getEffectiveEntitlement
    - reflectPurchase
    - reflectSubscription

  library_repository:
    - getLibrary
    - getContinueReading
    - getContinueViewing
    - saveReaderProgress
    - saveViewerProgress
    - addFavorite
    - deleteFavorite
    - createAnnotation

  projection_repository:
    - getExhibitionProjection
    - enqueueProjectionRefresh

important_notes:
  - Self-check can start as placeholder query-based validation and later deepen.
  - Publish/restrict/delist/archive must later emit audit events through repository transaction boundaries.
  - Projection enqueue is queue-oriented and must not rewrite canonical state directly.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122230_STATIC_ART_OS_PHASE2_REPOSITORY_BINDING_NOTES.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122240_STATIC_ART_OS_PHASE2_IMPLEMENTATION_CHECK_PACK_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122240_STATIC_ART_OS_PHASE2_IMPLEMENTATION_CHECK_PACK_INDEX.md

# ============================================================
# STATIC ART OS PHASE2 IMPLEMENTATION CHECK PACK INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 2 implementation check
owner: Boss
prepared_by: Zero

purpose:
This pack provides the canonical verification and completion
check materials for StaticArtOS Phase 2 binding work.

scope:
  - route/service/repository binding presence
  - validator/guard attachment expectations
  - Persona-side environment assumptions
  - Phase 2 exit judgement support

important_rules:
  - PERSONA_DATABASE_URL is the Persona-side DB target
  - DATABASE_URL is not the target for StaticArtOS Persona-side repository work
  - This pack does not apply SQL
  - This pack checks implementation-prep state and binding readiness

files:
  - phase2-checks/921_staticart_phase2_env_check.sh
  - phase2-checks/922_staticart_phase2_file_presence_check.sh
  - phase2-checks/923_staticart_phase2_binding_smoke_check.sh
  - phase2-checks/990_staticart_phase2_full_check.sh
  - 122250_STATIC_ART_OS_PHASE2_IMPLEMENTATION_CHECKLIST.md
  - 122260_STATIC_ART_OS_PHASE2_COMPLETION_MEMO_TEMPLATE.md


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122240_STATIC_ART_OS_PHASE2_IMPLEMENTATION_CHECK_PACK_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122250_STATIC_ART_OS_PHASE2_IMPLEMENTATION_CHECKLIST.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122250_STATIC_ART_OS_PHASE2_IMPLEMENTATION_CHECKLIST.md

# ============================================================
# STATIC ART OS PHASE2 IMPLEMENTATION CHECKLIST
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 2
owner: Boss
prepared_by: Zero

phase_objective:
Phase 2 is complete when the creator-side write backbone is
bound end-to-end with canonical validator, guard, service,
repository, and response/error handling.

check_items:
  route_layer:
    - AssetsRoute.createAsset exists
    - AssetsRoute.getAssetDetail exists
    - AssetsRoute.putLocalization exists
    - AssetsRoute.putRightsPolicy exists
    - AssetsRoute.putSalesOffer exists
    - AssetsRoute.putSubscriptionRule exists
    - routes do not embed SQL directly
    - routes return canonical success/error envelopes

  validator_layer:
    - version_token validation exists for governed writes
    - required string checks exist where expected
    - sales offer validation path exists
    - rights policy validation path exists
    - subscription rule validation path exists

  guard_layer:
    - requireActor binding exists on creator-side writes
    - ownership/publisher boundary guard path exists
    - review_pending block path exists
    - permission is checked before repository access

  service_layer:
    - AssetService.createDraft bound
    - AssetService.getAssetDetail bound
    - AssetService.upsertLocalization bound
    - AssetService.updateRightsPolicy bound
    - AssetService.updateSalesOffer bound
    - AssetService.updateSubscriptionRule bound
    - services do not construct raw HTTP responses

  repository_layer:
    - AssetRepositoryImpl exists
    - db-client.ts exists
    - staticart-asset-sql.ts exists
    - repository uses PERSONA_DATABASE_URL assumption
    - repository does not decide permission
    - repository does not return HTTP responses

  envelope_layer:
    - success() helper exists
    - errorFromException() helper exists
    - StaticArtError exists
    - canonical error codes are present

phase_2_complete_definition:
  - creator-side write backbone is structurally bound
  - Persona-side DB binding direction is fixed
  - route -> validator -> guard -> service -> repository chain is visible
  - canonical response/error envelope direction is fixed


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122250_STATIC_ART_OS_PHASE2_IMPLEMENTATION_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122260_STATIC_ART_OS_PHASE2_COMPLETION_MEMO_TEMPLATE.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122260_STATIC_ART_OS_PHASE2_COMPLETION_MEMO_TEMPLATE.md

# ============================================================
# STATIC ART OS PHASE2 COMPLETION MEMO TEMPLATE
# ============================================================

status: template
system: StaticArtOS
phase: Phase 2
owner: Boss
prepared_by: Zero

execution_date:

environment:
  - PERSONA_DATABASE_URL assumption preserved: yes_or_no
  - DATABASE_URL used for StaticArtOS Persona-side repository work: no

route_status:
  - createAsset: done_or_blocked
  - getAssetDetail: done_or_blocked
  - putLocalization: done_or_blocked
  - putRightsPolicy: done_or_blocked
  - putSalesOffer: done_or_blocked
  - putSubscriptionRule: done_or_blocked

validator_guard_status:
  - validators attached: yes_or_no
  - guards attached: yes_or_no
  - review_pending block path present: yes_or_no

service_repository_status:
  - asset service bindings complete: yes_or_no
  - asset repository bindings complete: yes_or_no
  - repository SQL separation preserved: yes_or_no

envelope_status:
  - success envelope canonical: yes_or_no
  - error envelope canonical: yes_or_no

blockers:
  - optional

final_judgement:
  - phase_2_complete: yes_or_no
  - next_phase_allowed: yes_or_no


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122260_STATIC_ART_OS_PHASE2_COMPLETION_MEMO_TEMPLATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122270_STATIC_ART_OS_PHASE3_GOVERNANCE_AND_PUBLISH_TASK_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122270_STATIC_ART_OS_PHASE3_GOVERNANCE_AND_PUBLISH_TASK_LEDGER.md

# ============================================================
# STATIC ART OS PHASE3 GOVERNANCE AND PUBLISH TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 3
owner: Boss
prepared_by: Zero

phase_objective:
Phase 3 establishes the governance and publication backbone of StaticArtOS.

phase_scope:
  - self check
  - review request creation
  - review decision
  - publish marketplace
  - publish library only
  - delist
  - restrict
  - archive
  - audit event write
  - projection refresh enqueue

task_units:
  - P3-T001 implement self check logic
  - P3-T002 implement review request persistence
  - P3-T003 implement review decision persistence
  - P3-T004 implement publish marketplace flow
  - P3-T005 implement publish library-only flow
  - P3-T006 implement delist flow
  - P3-T007 implement restrict flow
  - P3-T008 implement archive flow
  - P3-T009 bind audit event writes
  - P3-T010 bind projection refresh enqueue
  - P3-T011 verify lifecycle transition correctness
  - P3-T012 verify Phase 3 exit criteria

task_details:
  P3-T001:
    objective:
      - inspect required file roles
      - inspect metadata completeness
      - inspect rights completeness
      - inspect sales/subscription completeness
      - return blocker list
    exit_condition:
      - self_check_passed path works
      - blocker list is deterministic

  P3-T002:
    objective:
      - persist review request
      - move lifecycle to review_pending
      - prevent duplicate active pending review
    exit_condition:
      - review request created
      - duplicate pending review rejected

  P3-T003:
    objective:
      - persist review decision
      - support approve/reject/rework_required/restricted
      - update lifecycle consistently
    exit_condition:
      - decisions map to canonical lifecycle outcomes

  P3-T004:
    objective:
      - publish approved asset to marketplace
      - set visible state correctly
      - enqueue projection refresh
      - write audit event
    exit_condition:
      - published_marketplace path works

  P3-T005:
    objective:
      - publish approved asset to library-only
      - set visible state correctly
      - enqueue projection refresh
      - write audit event
    exit_condition:
      - published_library_only path works

  P3-T006:
    objective:
      - stop marketplace exposure
      - preserve existing canonical history
      - enqueue projection refresh
      - write audit event
    exit_condition:
      - delisted path works

  P3-T007:
    objective:
      - block sample/full access flow at governance state level
      - enqueue projection refresh
      - write audit event
    exit_condition:
      - restricted path works

  P3-T008:
    objective:
      - archive terminal state path
      - block republish from archived
      - write audit event
    exit_condition:
      - archived path works

  P3-T009:
    objective:
      - create audit rows for review/publish/delist/restrict/archive
    exit_condition:
      - required audit events exist

  P3-T010:
    objective:
      - enqueue projection refresh for publish/delist/restrict/archive
    exit_condition:
      - projection refresh trigger is visible and consistent

  P3-T011:
    objective:
      - verify canonical lifecycle transitions only
    exit_condition:
      - invalid transitions rejected with conflict

  P3-T012:
    objective:
      - verify governance and publish flow end-to-end
    exit_condition:
      - Phase 3 marked complete or blocked

important_rules:
  - review_pending blocks creator-side governed writes
  - archived is terminal
  - restricted is stronger than delisted
  - projection refresh is queued, not used as canonical write
  - PERSONA_DATABASE_URL remains Persona-side DB target where repository work is involved


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122270_STATIC_ART_OS_PHASE3_GOVERNANCE_AND_PUBLISH_TASK_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122280_STATIC_ART_OS_PHASE3_ENDPOINT_SERVICE_REPOSITORY_MATRIX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122280_STATIC_ART_OS_PHASE3_ENDPOINT_SERVICE_REPOSITORY_MATRIX.md

# ============================================================
# STATIC ART OS PHASE3 ENDPOINT SERVICE REPOSITORY MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 3
owner: Boss
prepared_by: Zero

matrix:
  - endpoint: POST /api/v1/staticart/assets/{asset_id}:run-self-check
    route_class: AssetsRoute.runSelfCheck
    service_method: AssetService.runSelfCheck
    repository_method: AssetRepository.runSelfCheck
    output_focus:
      - self_check_passed
      - blocker list
      - deterministic issues

  - endpoint: POST /api/v1/staticart/assets/{asset_id}/review-requests
    route_class: ReviewRoute.createReviewRequest
    service_method: AssetService.createReviewRequest
    repository_method: AssetRepository.createReviewRequest
    output_focus:
      - review_request created
      - lifecycle moved to review_pending
      - duplicate pending blocked

  - endpoint: POST /api/v1/staticart/review-requests/{review_request_id}:decide
    route_class: ReviewRoute.decideReview
    service_method: AssetService.decideReview
    repository_method: AssetRepository.decideReview
    output_focus:
      - decision persisted
      - lifecycle updated
      - audit generated

  - endpoint: POST /api/v1/staticart/assets/{asset_id}:publish-marketplace
    route_class: AssetsRoute.publishMarketplace
    service_method: AssetService.publishMarketplace
    repository_method: AssetRepository.publishMarketplace
    output_focus:
      - published_marketplace
      - visibility updated
      - audit generated
      - projection refresh queued

  - endpoint: POST /api/v1/staticart/assets/{asset_id}:publish-library-only
    route_class: AssetsRoute.publishLibraryOnly
    service_method: AssetService.publishLibraryOnly
    repository_method: AssetRepository.publishLibraryOnly
    output_focus:
      - published_library_only
      - visibility updated
      - audit generated
      - projection refresh queued

  - endpoint: POST /api/v1/staticart/assets/{asset_id}:delist
    route_class: AssetsRoute.delist
    service_method: AssetService.delist
    repository_method: AssetRepository.delist
    output_focus:
      - delisted state
      - audit generated
      - projection refresh queued

  - endpoint: POST /api/v1/staticart/assets/{asset_id}:restrict
    route_class: AssetsRoute.restrict
    service_method: AssetService.restrict
    repository_method: AssetRepository.restrict
    output_focus:
      - restricted state
      - blocking effects
      - audit generated
      - projection refresh queued

  - endpoint: POST /api/v1/staticart/assets/{asset_id}:archive
    route_class: AssetsRoute.archive
    service_method: AssetService.archive
    repository_method: AssetRepository.archive
    output_focus:
      - archived state
      - audit generated

binding_rules:
  - lifecycle write must happen transactionally with audit write where required
  - publish actions must not bypass approval preconditions
  - invalid transitions must raise canonical conflict


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122280_STATIC_ART_OS_PHASE3_ENDPOINT_SERVICE_REPOSITORY_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122290_STATIC_ART_OS_PHASE3_AUDIT_AND_PROJECTION_BINDING_MATRIX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122290_STATIC_ART_OS_PHASE3_AUDIT_AND_PROJECTION_BINDING_MATRIX.md

# ============================================================
# STATIC ART OS PHASE3 AUDIT AND PROJECTION BINDING MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 3
owner: Boss
prepared_by: Zero

audit_required_actions:
  - review decision approve
  - review decision reject
  - review decision rework_required
  - review decision restrict
  - publish marketplace
  - publish library only
  - delist
  - restrict
  - archive

projection_refresh_required_actions:
  - publish marketplace
  - publish library only
  - delist
  - restrict
  - archive
  - rights policy change later phase
  - lifecycle visibility change

repository_transaction_rules:
  - write lifecycle change and audit row in same transaction where possible
  - projection enqueue may happen after canonical write success
  - projection enqueue failure must not roll back canonical write unless policy explicitly requires it

audit_minimum_fields:
  - asset_id
  - user_id or actor source
  - event_type
  - from_state
  - to_state
  - reason_code where applicable
  - request reference
  - created_at

projection_enqueue_minimum_fields:
  - asset_id
  - targets
  - request reference
  - actor source

important_notes:
  - projection remains derived
  - audit is canonical governance trace


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122290_STATIC_ART_OS_PHASE3_AUDIT_AND_PROJECTION_BINDING_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122300_STATIC_ART_OS_PHASE3_EXIT_CRITERIA_AND_CHECKLIST.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122300_STATIC_ART_OS_PHASE3_EXIT_CRITERIA_AND_CHECKLIST.md

# ============================================================
# STATIC ART OS PHASE3 EXIT CRITERIA AND CHECKLIST
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 3
owner: Boss
prepared_by: Zero

phase_3_complete_definition:
  - self check returns canonical blocker results
  - review request creation works
  - review decision works for all supported outcomes
  - publish marketplace works
  - publish library-only works
  - delist works
  - restrict works
  - archive works
  - audit rows are generated for governance actions
  - projection refresh enqueue is bound for required actions
  - invalid lifecycle transitions are rejected

checklist:
  - self check success path verified
  - self check blocker path verified
  - duplicate pending review blocked
  - review approve path verified
  - review reject path verified
  - review rework_required path verified
  - review restrict path verified
  - publish marketplace preconditions enforced
  - publish library-only preconditions enforced
  - delist path verified
  - restrict path verified
  - archive path verified
  - archived republish block verified
  - audit creation verified
  - projection enqueue verified
  - canonical 409 / 422 / 403 mapping verified

blockers_if_failed:
  - self-check logic incomplete
  - review lifecycle mapping incomplete
  - publish precondition gaps
  - audit missing
  - projection enqueue missing


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122300_STATIC_ART_OS_PHASE3_EXIT_CRITERIA_AND_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122310_STATIC_ART_OS_PHASE3_PROGRESS_MEMO_TEMPLATE.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122310_STATIC_ART_OS_PHASE3_PROGRESS_MEMO_TEMPLATE.md

# ============================================================
# STATIC ART OS PHASE3 PROGRESS MEMO TEMPLATE
# ============================================================

status: template
system: StaticArtOS
phase: Phase 3
owner: Boss
prepared_by: Zero

execution_date:

environment:
  - PERSONA_DATABASE_URL assumption preserved for repository-side work: yes_or_no

completion_status:
  - P3-T001 self check logic: done_or_blocked
  - P3-T002 review request persistence: done_or_blocked
  - P3-T003 review decision persistence: done_or_blocked
  - P3-T004 publish marketplace: done_or_blocked
  - P3-T005 publish library-only: done_or_blocked
  - P3-T006 delist: done_or_blocked
  - P3-T007 restrict: done_or_blocked
  - P3-T008 archive: done_or_blocked
  - P3-T009 audit binding: done_or_blocked
  - P3-T010 projection enqueue binding: done_or_blocked
  - P3-T011 lifecycle verification: done_or_blocked
  - P3-T012 phase exit verification: done_or_blocked

blockers:
  - optional

notes:
  - optional

final_judgement:
  - phase_3_complete: yes_or_no
  - next_phase_allowed: yes_or_no


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122310_STATIC_ART_OS_PHASE3_PROGRESS_MEMO_TEMPLATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122320_STATIC_ART_OS_PHASE3_REPOSITORY_EXTENSION_NOTES.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122320_STATIC_ART_OS_PHASE3_REPOSITORY_EXTENSION_NOTES.md

# ============================================================
# STATIC ART OS PHASE3 REPOSITORY EXTENSION NOTES
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 3 repository extension
owner: Boss
prepared_by: Zero

extension_targets:
  asset_repository:
    - replace placeholder self check with deterministic query-based checks
    - persist review request
    - persist review decision
    - update lifecycle for approve/reject/rework/restrict
    - implement publish marketplace
    - implement publish library only
    - implement delist
    - implement restrict
    - implement archive
    - bind audit event writes transactionally where needed

  projection_repository:
    - replace skeleton refresh enqueue with real queue/write mechanism
    - keep projection enqueue outside canonical source semantics

required_transaction_boundaries:
  - review decision + audit write
  - publish action + audit write
  - delist/restrict/archive + audit write

important_rules:
  - invalid lifecycle transitions must raise conflict
  - archived remains terminal
  - restricted remains stronger than delisted
  - PERSONA_DATABASE_URL remains Persona-side DB target


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122320_STATIC_ART_OS_PHASE3_REPOSITORY_EXTENSION_NOTES.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122330_STATIC_ART_OS_PHASE3_REPOSITORY_AND_CHECK_PACK_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122330_STATIC_ART_OS_PHASE3_REPOSITORY_AND_CHECK_PACK_INDEX.md

# ============================================================
# STATIC ART OS PHASE3 REPOSITORY AND CHECK PACK INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 3 repository and check pack
owner: Boss
prepared_by: Zero

purpose:
This pack extends the Phase 3 repository-side implementation entry points
and adds canonical Phase 3 smoke/check materials.

scope:
  - lifecycle transition helper
  - governance SQL skeleton
  - audit SQL skeleton
  - projection enqueue SQL skeleton
  - phase3 repository extension notes
  - phase3 file/binding checks

important_rules:
  - PERSONA_DATABASE_URL is the Persona-side DB target
  - projection remains derived
  - audit is canonical governance trace
  - archived is terminal
  - restricted is stronger than delisted

files:
  - 122340_STATIC_ART_OS_PHASE3_IMPLEMENTATION_INTEGRATION_ORDER.md
  - repositories/helpers/lifecycle-transition.ts
  - repositories/sql/staticart-governance-sql.ts
  - repositories/sql/staticart-audit-sql.ts
  - repositories/sql/staticart-projection-queue-sql.ts
  - phase3-checks/931_staticart_phase3_env_check.sh
  - phase3-checks/932_staticart_phase3_file_presence_check.sh
  - phase3-checks/933_staticart_phase3_binding_smoke_check.sh
  - phase3-checks/990_staticart_phase3_full_check.sh


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122330_STATIC_ART_OS_PHASE3_REPOSITORY_AND_CHECK_PACK_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122340_STATIC_ART_OS_PHASE3_IMPLEMENTATION_INTEGRATION_ORDER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122340_STATIC_ART_OS_PHASE3_IMPLEMENTATION_INTEGRATION_ORDER.md

# ============================================================
# STATIC ART OS PHASE3 IMPLEMENTATION INTEGRATION ORDER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 3
owner: Boss
prepared_by: Zero

recommended_order:
  1:
    - add lifecycle transition helper
  2:
    - add governance SQL skeletons
  3:
    - bind self-check deterministic issue generation
  4:
    - bind review request persistence
  5:
    - bind review decision persistence
  6:
    - bind publish marketplace and library-only persistence
  7:
    - bind delist/restrict/archive persistence
  8:
    - bind audit writes
  9:
    - bind projection enqueue
  10:
    - run phase3 smoke/check pack

transaction_guidance:
  - review decision and audit write should share transaction boundary
  - publish action and audit write should share transaction boundary
  - delist/restrict/archive and audit write should share transaction boundary
  - projection enqueue happens after canonical write success unless stricter rollback policy is introduced later

important_rules:
  - invalid lifecycle transitions must return canonical conflict
  - review_pending must not be bypassed
  - archived must not return to published state
  - projection enqueue is not canonical state


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122340_STATIC_ART_OS_PHASE3_IMPLEMENTATION_INTEGRATION_ORDER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122350_STATIC_ART_OS_PHASE4_5_REPOSITORY_EXTENSION_NOTES.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122350_STATIC_ART_OS_PHASE4_5_REPOSITORY_EXTENSION_NOTES.md

# ============================================================
# STATIC ART OS PHASE4_5 REPOSITORY EXTENSION NOTES
# ============================================================

status: implementation-prep
system: StaticArtOS
phases:
  - Phase 4
  - Phase 5
owner: Boss
prepared_by: Zero

extension_targets:
  entitlement_repository:
    - replace reflection skeletons with actual persistence logic
    - bind deterministic entitlement resolution query/service support
    - bind access session read/write support
    - bind blocked state mapping

  library_repository:
    - finalize my library list query behavior
    - finalize continue reading query behavior
    - finalize continue viewing query behavior
    - bind reader progress optimistic update path
    - bind viewer progress optimistic update path
    - bind favorite add/remove persistence
    - bind annotation create persistence

important_rules:
  - PERSONA_DATABASE_URL remains Persona-side DB target
  - repository does not decide permission
  - repository does not return HTTP responses
  - projection remains derived
  - favorite persistence must not depend on current entitlement being full-access


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122350_STATIC_ART_OS_PHASE4_5_REPOSITORY_EXTENSION_NOTES.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122_OVERVIEW.md

# ============================================================
# API IMPLEMENTATION PREP OVERVIEW
# ============================================================

status: active
system: StaticArtOS
folder: 122.api-implementation-prep
owner: Boss
prepared_by: Zero

summary:
- This folder belongs to StaticArtOS standalone implementation-prep flow.
- This overview was repair-generated because OVERVIEW was missing.
- Detailed semantics should continue to live in the canonical files already placed under this folder.

notes:
- Non-destructive generation only.
- Existing files were not overwritten.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/openapi/components/staticart.common.schemas.yaml -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/openapi/components/staticart.common.schemas.yaml

Meta:
  type: object
  required: [request_id]
  properties:
    request_id:
      type: string

ErrorEnvelope:
  type: object
  required: [ok, error, meta]
  properties:
    ok:
      type: boolean
      const: false
    error:
      type: object
      required: [code, message, retryable]
      properties:
        code:
          type: string
        message:
          type: string
        details:
          type: object
          additionalProperties: true
        retryable:
          type: boolean
    meta:
      $ref: '#/Meta'

AssetCreateRequest:
  type: object
  required: [asset_type, creator_id, initial_language_code]
  properties:
    asset_type:
      type: string
    creator_id:
      type: string
      format: uuid
    publisher_id:
      type: string
      format: uuid
      nullable: true
    initial_language_code:
      type: string

AssetCreateResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      properties:
        asset_id:
          type: string
          format: uuid
        asset_code:
          type: string
        asset_type:
          type: string
        creator_id:
          type: string
          format: uuid
        publisher_id:
          type: string
          format: uuid
          nullable: true
        current_version_no:
          type: integer
        lifecycle_state:
          type: string
        version_token:
          type: string
        created_at:
          type: string
          format: date-time
    meta:
      $ref: '#/Meta'

AssetDetailResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

LocalizationWriteRequest:
  type: object
  required: [version_token, title]
  properties:
    version_token:
      type: string
    title:
      type: string
    subtitle:
      type: string
      nullable: true
    short_description:
      type: string
      nullable: true
    long_description:
      type: string
      nullable: true

LocalizationWriteResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

RightsPolicyWriteRequest:
  type: object
  required:
    - version_token
    - version_no
    - exhibition_allowed
    - commercial_use_allowed
    - derivative_allowed
    - additional_license_required
    - age_rating
    - region_mode
    - region_codes
  properties:
    version_token:
      type: string
    version_no:
      type: integer
    exhibition_allowed:
      type: boolean
    commercial_use_allowed:
      type: boolean
    derivative_allowed:
      type: boolean
    additional_license_required:
      type: boolean
    age_rating:
      type: string
    region_mode:
      type: string
    region_codes:
      type: array
      items:
        type: string
    rights_summary:
      type: string
      nullable: true

RightsPolicyWriteResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

SalesOfferWriteRequest:
  type: object
  required: [version_token, sale_type, sales_state]
  properties:
    version_token:
      type: string
    sale_type:
      type: string
    sales_state:
      type: string
    base_currency:
      type: string
      nullable: true
    base_price:
      type: number
      nullable: true
    price_label_override:
      type: string
      nullable: true
    sale_start_at:
      type: string
      format: date-time
      nullable: true
    sale_end_at:
      type: string
      format: date-time
      nullable: true
    limited_sale_flag:
      type: boolean
    inventory_cap:
      type: integer
      nullable: true

SalesOfferWriteResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

SubscriptionRuleWriteRequest:
  type: object
  required: [version_token, subscription_state, subscription_eligible, creator_opt_in]
  properties:
    version_token:
      type: string
    subscription_state:
      type: string
    subscription_eligible:
      type: boolean
    creator_opt_in:
      type: boolean
    settlement_group_code:
      type: string
      nullable: true
    subscription_start_at:
      type: string
      format: date-time
      nullable: true
    subscription_end_at:
      type: string
      format: date-time
      nullable: true

SubscriptionRuleWriteResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

SelfCheckRequest:
  type: object
  required: [version_token]
  properties:
    version_token:
      type: string

SelfCheckResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

ReviewRequestCreateRequest:
  type: object
  required: [version_token, requested_review_types]
  properties:
    version_token:
      type: string
    requested_review_types:
      type: array
      items:
        type: string

ReviewRequestCreateResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

ReviewDecisionRequest:
  type: object
  required: [decision_status]
  properties:
    decision_status:
      type: string
    decision_reason_code:
      type: string
      nullable: true
    decision_comment:
      type: string
      nullable: true

ReviewDecisionResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

PublishActionRequest:
  type: object
  required: [version_token]
  properties:
    version_token:
      type: string
    publish_at:
      type: string
      format: date-time
      nullable: true

PublishActionResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

StateActionRequest:
  type: object
  required: [version_token]
  properties:
    version_token:
      type: string
    reason_code:
      type: string
      nullable: true
    reason_comment:
      type: string
      nullable: true

StateActionResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

RestrictActionResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

EntitlementResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

AccessSessionRequest:
  type: object
  required: [access_mode]
  properties:
    access_mode:
      type: string
      enum: [sample, full]

AccessSessionResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

LibraryListResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      properties:
        items:
          type: array
          items:
            type: object
            additionalProperties: true
    meta:
      type: object
      properties:
        request_id:
          type: string
        next_cursor:
          type: string
          nullable: true

ReaderProgressRequest:
  type: object
  required: [sync_version, current_locator, progress_percent]
  properties:
    sync_version:
      type: integer
    current_locator:
      type: string
    progress_percent:
      type: number
    last_device_type:
      type: string
      nullable: true

ReaderProgressResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

ViewerProgressRequest:
  type: object
  required: [sync_version]
  properties:
    sync_version:
      type: integer
    current_frame_ref:
      type: string
      nullable: true
    current_page_no:
      type: integer
      nullable: true
    zoom_ratio:
      type: number
      nullable: true
    last_device_type:
      type: string
      nullable: true

ViewerProgressResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

FavoriteResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      properties:
        asset_id:
          type: string
          format: uuid
        favorite_state:
          type: boolean
    meta:
      $ref: '#/Meta'

AnnotationCreateRequest:
  type: object
  required: [annotation_type, locator, payload_json]
  properties:
    annotation_type:
      type: string
    locator:
      type: string
    payload_json:
      type: object
      additionalProperties: true

AnnotationCreateResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

ExhibitionProjectionResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

ProjectionRefreshRequest:
  type: object
  required: [targets]
  properties:
    targets:
      type: array
      items:
        type: string

ProjectionRefreshResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

PurchaseReflectRequest:
  type: object
  required: [user_id, asset_id, transaction_id, grant_type, granted_at]
  properties:
    user_id:
      type: string
      format: uuid
    asset_id:
      type: string
      format: uuid
    transaction_id:
      type: string
    grant_type:
      type: string
    granted_at:
      type: string
      format: date-time

PurchaseReflectResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'

SubscriptionReflectRequest:
  type: object
  required: [user_id, subscription_event_type, effective_at, affected_asset_ids]
  properties:
    user_id:
      type: string
      format: uuid
    subscription_event_type:
      type: string
    effective_at:
      type: string
      format: date-time
    affected_asset_ids:
      type: array
      items:
        type: string
        format: uuid

SubscriptionReflectResponse:
  type: object
  properties:
    ok:
      type: boolean
      const: true
    data:
      type: object
      additionalProperties: true
    meta:
      $ref: '#/Meta'


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/openapi/components/staticart.common.schemas.yaml -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/openapi/components/staticart.error.codes.yaml -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/openapi/components/staticart.error.codes.yaml

error_codes:
  validation:
    - STATICART_VALIDATION_ERROR
    - STATICART_INVALID_ENUM
    - STATICART_REQUIRED_FIELD_MISSING
    - STATICART_INVALID_CURSOR

  auth_permission:
    - STATICART_UNAUTHORIZED
    - STATICART_FORBIDDEN
    - STATICART_ROLE_NOT_ALLOWED
    - STATICART_ASSET_NOT_OWNED_BY_ACTOR

  state_concurrency:
    - STATICART_ASSET_NOT_FOUND
    - STATICART_FILE_NOT_FOUND
    - STATICART_REVIEW_REQUEST_NOT_FOUND
    - STATICART_ASSET_STATE_CONFLICT
    - STATICART_REVIEW_ALREADY_PENDING
    - STATICART_VERSION_CONFLICT
    - STATICART_IDEMPOTENCY_REPLAY_MISMATCH

  publish_review_policy:
    - STATICART_REVIEW_SUBMISSION_PRECONDITION_FAILED
    - STATICART_PUBLISH_PRECONDITION_FAILED
    - STATICART_RIGHTS_POLICY_BLOCKED
    - STATICART_REGION_POLICY_BLOCKED
    - STATICART_AGE_POLICY_BLOCKED
    - STATICART_EXHIBITION_PROJECTION_INELIGIBLE

  entitlement_library:
    - STATICART_ENTITLEMENT_BLOCKED
    - STATICART_SAMPLE_NOT_AVAILABLE
    - STATICART_ACCESS_NOT_GRANTED

  infra:
    - STATICART_STORAGE_UPLOAD_FAILED
    - STATICART_EXTERNAL_PAYMENT_SYNC_FAILED
    - STATICART_EXTERNAL_SUBSCRIPTION_SYNC_FAILED
    - STATICART_RATE_LIMITED
    - STATICART_INTERNAL_ERROR


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/openapi/components/staticart.error.codes.yaml -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/openapi/routes/staticart.route.stub.ledger.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/openapi/routes/staticart.route.stub.ledger.md

# ============================================================
# STATIC ART OS ROUTE STUB LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

route_groups:
  creator_write:
    - POST /assets
    - PUT /assets/{asset_id}/localizations/{language_code}
    - PUT /assets/{asset_id}/rights-policy
    - PUT /assets/{asset_id}/sales-offer
    - PUT /assets/{asset_id}/subscription-rule
    - POST /assets/{asset_id}:run-self-check
    - POST /assets/{asset_id}/review-requests
    - POST /assets/{asset_id}:publish-marketplace
    - POST /assets/{asset_id}:publish-library-only
    - POST /assets/{asset_id}:delist
    - POST /assets/{asset_id}:restrict
    - POST /assets/{asset_id}:archive

  read_access:
    - GET /assets/{asset_id}
    - GET /assets/{asset_id}/entitlement
    - POST /assets/{asset_id}:create-access-session
    - GET /assets/{asset_id}/exhibition-projection

  library_continuity:
    - GET /library
    - GET /library/continue-reading
    - GET /library/continue-viewing
    - PUT /assets/{asset_id}/reader-progress
    - PUT /assets/{asset_id}/viewer-progress
    - POST /assets/{asset_id}/favorite
    - DELETE /assets/{asset_id}/favorite
    - POST /assets/{asset_id}/annotations

  review_governance:
    - POST /review-requests/{review_request_id}:decide
    - POST /assets/{asset_id}:refresh-projections

  internal:
    - POST /internal/purchases:reflect
    - POST /internal/subscriptions:reflect

stub_requirements_per_route:
  - permission guard
  - request validation
  - idempotency handling where required
  - version_token handling where required
  - service call
  - audit write where required
  - projection refresh enqueue where required
  - canonical response envelope
  - canonical error envelope


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/openapi/routes/staticart.route.stub.ledger.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/openapi/staticart.openapi.yaml -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/openapi/staticart.openapi.yaml

openapi: 3.1.0

info:
  title: StaticArtOS API
  version: 0.1.0
  summary: StaticArtOS implementation-ready OpenAPI skeleton
  description: >
    Canonical API skeleton for StaticArtOS.
    This file is the OpenAPI entry point for implementation.

servers:
  - url: /api/v1/staticart
    description: StaticArtOS API v1

tags:
  - name: assets
  - name: files
  - name: rights
  - name: sales
  - name: subscription
  - name: review
  - name: publish
  - name: entitlement
  - name: library
  - name: continuity
  - name: projection
  - name: internal

security:
  - bearerAuth: []

paths:
  /assets:
    post:
      tags: [assets]
      summary: Create asset draft
      operationId: createStaticArtAsset
      parameters:
        - $ref: '#/components/parameters/XRequestId'
        - $ref: '#/components/parameters/IdempotencyKey'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/AssetCreateRequest'
      responses:
        '201':
          description: Created
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/AssetCreateResponse'
        '400':
          $ref: '#/components/responses/Error400'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'

  /assets/{asset_id}:
    get:
      tags: [assets]
      summary: Get asset detail
      operationId: getStaticArtAssetDetail
      parameters:
        - $ref: '#/components/parameters/AssetId'
      responses:
        '200':
          description: Asset detail
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/AssetDetailResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '404':
          $ref: '#/components/responses/Error404'

  /assets/{asset_id}/localizations/{language_code}:
    put:
      tags: [assets]
      summary: Upsert asset localization
      operationId: upsertStaticArtLocalization
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/LanguageCode'
        - $ref: '#/components/parameters/XRequestId'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/LocalizationWriteRequest'
      responses:
        '200':
          description: Localization updated
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/LocalizationWriteResponse'
        '400':
          $ref: '#/components/responses/Error400'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'

  /assets/{asset_id}/rights-policy:
    put:
      tags: [rights]
      summary: Update rights policy
      operationId: updateStaticArtRightsPolicy
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/RightsPolicyWriteRequest'
      responses:
        '200':
          description: Rights policy updated
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/RightsPolicyWriteResponse'
        '400':
          $ref: '#/components/responses/Error400'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'
        '422':
          $ref: '#/components/responses/Error422'

  /assets/{asset_id}/sales-offer:
    put:
      tags: [sales]
      summary: Update sales offer
      operationId: updateStaticArtSalesOffer
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/SalesOfferWriteRequest'
      responses:
        '200':
          description: Sales offer updated
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/SalesOfferWriteResponse'
        '400':
          $ref: '#/components/responses/Error400'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'
        '422':
          $ref: '#/components/responses/Error422'

  /assets/{asset_id}/subscription-rule:
    put:
      tags: [subscription]
      summary: Update subscription rule
      operationId: updateStaticArtSubscriptionRule
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/SubscriptionRuleWriteRequest'
      responses:
        '200':
          description: Subscription rule updated
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/SubscriptionRuleWriteResponse'
        '400':
          $ref: '#/components/responses/Error400'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'
        '422':
          $ref: '#/components/responses/Error422'

  /assets/{asset_id}:run-self-check:
    post:
      tags: [review]
      summary: Run self check
      operationId: runStaticArtSelfCheck
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
        - $ref: '#/components/parameters/IdempotencyKey'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/SelfCheckRequest'
      responses:
        '200':
          description: Self check result
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/SelfCheckResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'
        '422':
          $ref: '#/components/responses/Error422'

  /assets/{asset_id}/review-requests:
    post:
      tags: [review]
      summary: Create review request
      operationId: createStaticArtReviewRequest
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
        - $ref: '#/components/parameters/IdempotencyKey'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/ReviewRequestCreateRequest'
      responses:
        '201':
          description: Review request created
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ReviewRequestCreateResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'
        '422':
          $ref: '#/components/responses/Error422'

  /review-requests/{review_request_id}:decide:
    post:
      tags: [review]
      summary: Decide review request
      operationId: decideStaticArtReview
      parameters:
        - $ref: '#/components/parameters/ReviewRequestId'
        - $ref: '#/components/parameters/XRequestId'
        - $ref: '#/components/parameters/IdempotencyKey'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/ReviewDecisionRequest'
      responses:
        '200':
          description: Review decision stored
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ReviewDecisionResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '404':
          $ref: '#/components/responses/Error404'
        '409':
          $ref: '#/components/responses/Error409'

  /assets/{asset_id}:publish-marketplace:
    post:
      tags: [publish]
      summary: Publish asset to marketplace
      operationId: publishStaticArtMarketplace
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
        - $ref: '#/components/parameters/IdempotencyKey'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/PublishActionRequest'
      responses:
        '200':
          description: Published to marketplace
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/PublishActionResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'
        '422':
          $ref: '#/components/responses/Error422'

  /assets/{asset_id}:publish-library-only:
    post:
      tags: [publish]
      summary: Publish asset to library only
      operationId: publishStaticArtLibraryOnly
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
        - $ref: '#/components/parameters/IdempotencyKey'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/PublishActionRequest'
      responses:
        '200':
          description: Published to library only
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/PublishActionResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'
        '422':
          $ref: '#/components/responses/Error422'

  /assets/{asset_id}:delist:
    post:
      tags: [publish]
      summary: Delist asset
      operationId: delistStaticArtAsset
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
        - $ref: '#/components/parameters/IdempotencyKey'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/StateActionRequest'
      responses:
        '200':
          description: Asset delisted
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/StateActionResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'

  /assets/{asset_id}:restrict:
    post:
      tags: [publish]
      summary: Restrict asset
      operationId: restrictStaticArtAsset
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
        - $ref: '#/components/parameters/IdempotencyKey'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/StateActionRequest'
      responses:
        '200':
          description: Asset restricted
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/RestrictActionResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'

  /assets/{asset_id}:archive:
    post:
      tags: [publish]
      summary: Archive asset
      operationId: archiveStaticArtAsset
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
        - $ref: '#/components/parameters/IdempotencyKey'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/StateActionRequest'
      responses:
        '200':
          description: Asset archived
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/StateActionResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'

  /assets/{asset_id}/entitlement:
    get:
      tags: [entitlement]
      summary: Get effective entitlement
      operationId: getStaticArtEntitlement
      parameters:
        - $ref: '#/components/parameters/AssetId'
      responses:
        '200':
          description: Entitlement snapshot
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/EntitlementResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '404':
          $ref: '#/components/responses/Error404'

  /assets/{asset_id}:create-access-session:
    post:
      tags: [entitlement]
      summary: Create access session
      operationId: createStaticArtAccessSession
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
        - $ref: '#/components/parameters/IdempotencyKey'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/AccessSessionRequest'
      responses:
        '200':
          description: Access session created
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/AccessSessionResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '404':
          $ref: '#/components/responses/Error404'

  /library:
    get:
      tags: [library]
      summary: Get library items
      operationId: getStaticArtLibrary
      parameters:
        - $ref: '#/components/parameters/Cursor'
        - $ref: '#/components/parameters/Limit'
      responses:
        '200':
          description: Library list
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/LibraryListResponse'
        '401':
          $ref: '#/components/responses/Error401'

  /library/continue-reading:
    get:
      tags: [continuity]
      summary: Get continue reading list
      operationId: getStaticArtContinueReading
      parameters:
        - $ref: '#/components/parameters/Cursor'
        - $ref: '#/components/parameters/Limit'
      responses:
        '200':
          description: Continue reading list
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/LibraryListResponse'
        '401':
          $ref: '#/components/responses/Error401'

  /library/continue-viewing:
    get:
      tags: [continuity]
      summary: Get continue viewing list
      operationId: getStaticArtContinueViewing
      parameters:
        - $ref: '#/components/parameters/Cursor'
        - $ref: '#/components/parameters/Limit'
      responses:
        '200':
          description: Continue viewing list
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/LibraryListResponse'
        '401':
          $ref: '#/components/responses/Error401'

  /assets/{asset_id}/reader-progress:
    put:
      tags: [continuity]
      summary: Save reader progress
      operationId: saveStaticArtReaderProgress
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/ReaderProgressRequest'
      responses:
        '200':
          description: Reader progress saved
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ReaderProgressResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'

  /assets/{asset_id}/viewer-progress:
    put:
      tags: [continuity]
      summary: Save viewer progress
      operationId: saveStaticArtViewerProgress
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/ViewerProgressRequest'
      responses:
        '200':
          description: Viewer progress saved
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ViewerProgressResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'

  /assets/{asset_id}/favorite:
    post:
      tags: [library]
      summary: Add favorite
      operationId: addStaticArtFavorite
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
        - $ref: '#/components/parameters/IdempotencyKey'
      responses:
        '200':
          description: Favorite already exists or idempotent replay
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/FavoriteResponse'
        '201':
          description: Favorite added
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/FavoriteResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
    delete:
      tags: [library]
      summary: Remove favorite
      operationId: deleteStaticArtFavorite
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
      responses:
        '200':
          description: Favorite removed
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/FavoriteResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'

  /assets/{asset_id}/annotations:
    post:
      tags: [continuity]
      summary: Create annotation
      operationId: createStaticArtAnnotation
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
        - $ref: '#/components/parameters/IdempotencyKey'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/AnnotationCreateRequest'
      responses:
        '201':
          description: Annotation created
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/AnnotationCreateResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'

  /assets/{asset_id}/exhibition-projection:
    get:
      tags: [projection]
      summary: Get exhibition projection
      operationId: getStaticArtExhibitionProjection
      parameters:
        - $ref: '#/components/parameters/AssetId'
      responses:
        '200':
          description: Exhibition projection
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ExhibitionProjectionResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '404':
          $ref: '#/components/responses/Error404'

  /assets/{asset_id}:refresh-projections:
    post:
      tags: [projection]
      summary: Refresh projections
      operationId: refreshStaticArtProjections
      parameters:
        - $ref: '#/components/parameters/AssetId'
        - $ref: '#/components/parameters/XRequestId'
        - $ref: '#/components/parameters/IdempotencyKey'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/ProjectionRefreshRequest'
      responses:
        '202':
          description: Projection refresh queued
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ProjectionRefreshResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'

  /internal/purchases:reflect:
    post:
      tags: [internal]
      summary: Reflect purchase grant
      operationId: reflectStaticArtPurchase
      parameters:
        - $ref: '#/components/parameters/XRequestId'
        - $ref: '#/components/parameters/IdempotencyKey'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/PurchaseReflectRequest'
      responses:
        '200':
          description: Purchase reflected
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/PurchaseReflectResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'
        '503':
          $ref: '#/components/responses/Error503'

  /internal/subscriptions:reflect:
    post:
      tags: [internal]
      summary: Reflect subscription event
      operationId: reflectStaticArtSubscription
      parameters:
        - $ref: '#/components/parameters/XRequestId'
        - $ref: '#/components/parameters/IdempotencyKey'
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/SubscriptionReflectRequest'
      responses:
        '200':
          description: Subscription reflected
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/SubscriptionReflectResponse'
        '401':
          $ref: '#/components/responses/Error401'
        '403':
          $ref: '#/components/responses/Error403'
        '409':
          $ref: '#/components/responses/Error409'
        '503':
          $ref: '#/components/responses/Error503'

components:
  securitySchemes:
    bearerAuth:
      type: http
      scheme: bearer
      bearerFormat: JWT

  parameters:
    XRequestId:
      name: X-Request-Id
      in: header
      required: true
      schema:
        type: string
    IdempotencyKey:
      name: Idempotency-Key
      in: header
      required: true
      schema:
        type: string
    AssetId:
      name: asset_id
      in: path
      required: true
      schema:
        type: string
        format: uuid
    ReviewRequestId:
      name: review_request_id
      in: path
      required: true
      schema:
        type: string
        format: uuid
    LanguageCode:
      name: language_code
      in: path
      required: true
      schema:
        type: string
    Cursor:
      name: cursor
      in: query
      required: false
      schema:
        type: string
    Limit:
      name: limit
      in: query
      required: false
      schema:
        type: integer
        minimum: 1
        maximum: 100
        default: 30

  responses:
    Error400:
      description: Bad Request
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/ErrorEnvelope'
    Error401:
      description: Unauthorized
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/ErrorEnvelope'
    Error403:
      description: Forbidden
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/ErrorEnvelope'
    Error404:
      description: Not Found
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/ErrorEnvelope'
    Error409:
      description: Conflict
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/ErrorEnvelope'
    Error422:
      description: Unprocessable Entity
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/ErrorEnvelope'
    Error503:
      description: Service Unavailable
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/ErrorEnvelope'

  schemas:
    Meta:
      $ref: './components/staticart.common.schemas.yaml#/Meta'
    ErrorEnvelope:
      $ref: './components/staticart.common.schemas.yaml#/ErrorEnvelope'
    AssetCreateRequest:
      $ref: './components/staticart.common.schemas.yaml#/AssetCreateRequest'
    AssetCreateResponse:
      $ref: './components/staticart.common.schemas.yaml#/AssetCreateResponse'
    AssetDetailResponse:
      $ref: './components/staticart.common.schemas.yaml#/AssetDetailResponse'
    LocalizationWriteRequest:
      $ref: './components/staticart.common.schemas.yaml#/LocalizationWriteRequest'
    LocalizationWriteResponse:
      $ref: './components/staticart.common.schemas.yaml#/LocalizationWriteResponse'
    RightsPolicyWriteRequest:
      $ref: './components/staticart.common.schemas.yaml#/RightsPolicyWriteRequest'
    RightsPolicyWriteResponse:
      $ref: './components/staticart.common.schemas.yaml#/RightsPolicyWriteResponse'
    SalesOfferWriteRequest:
      $ref: './components/staticart.common.schemas.yaml#/SalesOfferWriteRequest'
    SalesOfferWriteResponse:
      $ref: './components/staticart.common.schemas.yaml#/SalesOfferWriteResponse'
    SubscriptionRuleWriteRequest:
      $ref: './components/staticart.common.schemas.yaml#/SubscriptionRuleWriteRequest'
    SubscriptionRuleWriteResponse:
      $ref: './components/staticart.common.schemas.yaml#/SubscriptionRuleWriteResponse'
    SelfCheckRequest:
      $ref: './components/staticart.common.schemas.yaml#/SelfCheckRequest'
    SelfCheckResponse:
      $ref: './components/staticart.common.schemas.yaml#/SelfCheckResponse'
    ReviewRequestCreateRequest:
      $ref: './components/staticart.common.schemas.yaml#/ReviewRequestCreateRequest'
    ReviewRequestCreateResponse:
      $ref: './components/staticart.common.schemas.yaml#/ReviewRequestCreateResponse'
    ReviewDecisionRequest:
      $ref: './components/staticart.common.schemas.yaml#/ReviewDecisionRequest'
    ReviewDecisionResponse:
      $ref: './components/staticart.common.schemas.yaml#/ReviewDecisionResponse'
    PublishActionRequest:
      $ref: './components/staticart.common.schemas.yaml#/PublishActionRequest'
    PublishActionResponse:
      $ref: './components/staticart.common.schemas.yaml#/PublishActionResponse'
    StateActionRequest:
      $ref: './components/staticart.common.schemas.yaml#/StateActionRequest'
    StateActionResponse:
      $ref: './components/staticart.common.schemas.yaml#/StateActionResponse'
    RestrictActionResponse:
      $ref: './components/staticart.common.schemas.yaml#/RestrictActionResponse'
    EntitlementResponse:
      $ref: './components/staticart.common.schemas.yaml#/EntitlementResponse'
    AccessSessionRequest:
      $ref: './components/staticart.common.schemas.yaml#/AccessSessionRequest'
    AccessSessionResponse:
      $ref: './components/staticart.common.schemas.yaml#/AccessSessionResponse'
    LibraryListResponse:
      $ref: './components/staticart.common.schemas.yaml#/LibraryListResponse'
    ReaderProgressRequest:
      $ref: './components/staticart.common.schemas.yaml#/ReaderProgressRequest'
    ReaderProgressResponse:
      $ref: './components/staticart.common.schemas.yaml#/ReaderProgressResponse'
    ViewerProgressRequest:
      $ref: './components/staticart.common.schemas.yaml#/ViewerProgressRequest'
    ViewerProgressResponse:
      $ref: './components/staticart.common.schemas.yaml#/ViewerProgressResponse'
    FavoriteResponse:
      $ref: './components/staticart.common.schemas.yaml#/FavoriteResponse'
    AnnotationCreateRequest:
      $ref: './components/staticart.common.schemas.yaml#/AnnotationCreateRequest'
    AnnotationCreateResponse:
      $ref: './components/staticart.common.schemas.yaml#/AnnotationCreateResponse'
    ExhibitionProjectionResponse:
      $ref: './components/staticart.common.schemas.yaml#/ExhibitionProjectionResponse'
    ProjectionRefreshRequest:
      $ref: './components/staticart.common.schemas.yaml#/ProjectionRefreshRequest'
    ProjectionRefreshResponse:
      $ref: './components/staticart.common.schemas.yaml#/ProjectionRefreshResponse'
    PurchaseReflectRequest:
      $ref: './components/staticart.common.schemas.yaml#/PurchaseReflectRequest'
    PurchaseReflectResponse:
      $ref: './components/staticart.common.schemas.yaml#/PurchaseReflectResponse'
    SubscriptionReflectRequest:
      $ref: './components/staticart.common.schemas.yaml#/SubscriptionReflectRequest'
    SubscriptionReflectResponse:
      $ref: './components/staticart.common.schemas.yaml#/SubscriptionReflectResponse'


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/openapi/staticart.openapi.yaml -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase2-checks/921_staticart_phase2_env_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase2-checks/921_staticart_phase2_env_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

printf '\n============================================================\n'
printf 'STATICART PHASE2 ENV CHECK\n'
printf '============================================================\n'

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

echo "OK: PERSONA_DATABASE_URL is set"

if [ -n "${DATABASE_URL:-}" ]; then
  echo "INFO: DATABASE_URL is also set"
  echo "INFO: StaticArtOS Persona-side repository work still assumes PERSONA_DATABASE_URL only"
else
  echo "INFO: DATABASE_URL is not set"
fi


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase2-checks/921_staticart_phase2_env_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase2-checks/922_staticart_phase2_file_presence_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase2-checks/922_staticart_phase2_file_presence_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep"
SRCBASE="$BASE/source-skeleton/staticart-api"

printf '\n============================================================\n'
printf 'STATICART PHASE2 FILE PRESENCE CHECK\n'
printf '============================================================\n'

check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "OK  $file"
  else
    echo "NG  $file"
  fi
}

check_file "$SRCBASE/contracts/types.ts"
check_file "$SRCBASE/contracts/dto.ts"
check_file "$SRCBASE/core/error-codes.ts"
check_file "$SRCBASE/core/errors.ts"
check_file "$SRCBASE/core/response.ts"
check_file "$SRCBASE/guards/permission-guard.ts"
check_file "$SRCBASE/validators/request-validators.ts"
check_file "$SRCBASE/services/asset-service.ts"
check_file "$SRCBASE/services/entitlement-service.ts"
check_file "$SRCBASE/services/library-service.ts"
check_file "$SRCBASE/services/projection-service.ts"
check_file "$SRCBASE/routes/assets.route.ts"
check_file "$SRCBASE/routes/review.route.ts"
check_file "$SRCBASE/routes/library.route.ts"
check_file "$SRCBASE/routes/internal.route.ts"
check_file "$SRCBASE/repositories/db-client.ts"
check_file "$SRCBASE/repositories/asset-repository.impl.ts"
check_file "$SRCBASE/repositories/entitlement-repository.impl.ts"
check_file "$SRCBASE/repositories/library-repository.impl.ts"
check_file "$SRCBASE/repositories/projection-repository.impl.ts"
check_file "$SRCBASE/repositories/sql/staticart-asset-sql.ts"
check_file "$SRCBASE/repositories/sql/staticart-entitlement-sql.ts"
check_file "$SRCBASE/repositories/sql/staticart-library-sql.ts"
check_file "$SRCBASE/repositories/sql/staticart-projection-sql.ts"


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase2-checks/922_staticart_phase2_file_presence_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase2-checks/923_staticart_phase2_binding_smoke_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase2-checks/923_staticart_phase2_binding_smoke_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

SRCBASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api"

printf '\n============================================================\n'
printf 'STATICART PHASE2 BINDING SMOKE CHECK\n'
printf '============================================================\n'

check_pattern() {
  local file="$1"
  local pattern="$2"
  local label="$3"

  if grep -q "$pattern" "$file"; then
    echo "OK  $label"
  else
    echo "NG  $label"
  fi
}

check_pattern "$SRCBASE/routes/assets.route.ts" "createAsset" "AssetsRoute.createAsset exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "getAssetDetail" "AssetsRoute.getAssetDetail exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "putLocalization" "AssetsRoute.putLocalization exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "putRightsPolicy" "AssetsRoute.putRightsPolicy exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "putSalesOffer" "AssetsRoute.putSalesOffer exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "putSubscriptionRule" "AssetsRoute.putSubscriptionRule exists"

check_pattern "$SRCBASE/routes/assets.route.ts" "requireActor" "route uses requireActor"
check_pattern "$SRCBASE/routes/assets.route.ts" "requireVersionToken" "route uses requireVersionToken"
check_pattern "$SRCBASE/guards/permission-guard.ts" "requireAssetOwnershipOrPublisherAccess" "ownership/publisher guard exists"
check_pattern "$SRCBASE/guards/permission-guard.ts" "requireNotReviewPending" "review_pending guard exists"

check_pattern "$SRCBASE/services/asset-service.ts" "createDraft" "AssetService.createDraft exists"
check_pattern "$SRCBASE/services/asset-service.ts" "upsertLocalization" "AssetService.upsertLocalization exists"
check_pattern "$SRCBASE/services/asset-service.ts" "updateRightsPolicy" "AssetService.updateRightsPolicy exists"
check_pattern "$SRCBASE/services/asset-service.ts" "updateSalesOffer" "AssetService.updateSalesOffer exists"
check_pattern "$SRCBASE/services/asset-service.ts" "updateSubscriptionRule" "AssetService.updateSubscriptionRule exists"

check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "createDraft" "AssetRepositoryImpl.createDraft exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "upsertLocalization" "AssetRepositoryImpl.upsertLocalization exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "updateRightsPolicy" "AssetRepositoryImpl.updateRightsPolicy exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "updateSalesOffer" "AssetRepositoryImpl.updateSalesOffer exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "updateSubscriptionRule" "AssetRepositoryImpl.updateSubscriptionRule exists"

check_pattern "$SRCBASE/repositories/db-client.ts" "PERSONA_DATABASE_URL" "repository db client uses PERSONA_DATABASE_URL assumption"
check_pattern "$SRCBASE/core/response.ts" "success(" "success envelope helper exists"
check_pattern "$SRCBASE/core/response.ts" "errorFromException" "error envelope helper exists"
check_pattern "$SRCBASE/core/errors.ts" "StaticArtError" "StaticArtError exists"


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase2-checks/923_staticart_phase2_binding_smoke_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase2-checks/990_staticart_phase2_full_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase2-checks/990_staticart_phase2_full_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase2-checks"

printf '\n============================================================\n'
printf 'STATICART PHASE2 FULL CHECK START\n'
printf '============================================================\n'

bash "$BASE/921_staticart_phase2_env_check.sh"
bash "$BASE/922_staticart_phase2_file_presence_check.sh"
bash "$BASE/923_staticart_phase2_binding_smoke_check.sh"

printf '\n============================================================\n'
printf 'STATICART PHASE2 FULL CHECK DONE\n'
printf '============================================================\n'


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase2-checks/990_staticart_phase2_full_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase3-checks/931_staticart_phase3_env_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase3-checks/931_staticart_phase3_env_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

printf '\n============================================================\n'
printf 'STATICART PHASE3 ENV CHECK\n'
printf '============================================================\n'

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

echo "OK: PERSONA_DATABASE_URL is set"

if [ -n "${DATABASE_URL:-}" ]; then
  echo "INFO: DATABASE_URL is also set"
  echo "INFO: StaticArtOS Phase 3 Persona-side repository work still assumes PERSONA_DATABASE_URL only"
else
  echo "INFO: DATABASE_URL is not set"
fi


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase3-checks/931_staticart_phase3_env_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase3-checks/932_staticart_phase3_file_presence_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase3-checks/932_staticart_phase3_file_presence_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

SRCBASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api"

printf '\n============================================================\n'
printf 'STATICART PHASE3 FILE PRESENCE CHECK\n'
printf '============================================================\n'

check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "OK  $file"
  else
    echo "NG  $file"
  fi
}

check_file "$SRCBASE/repositories/helpers/lifecycle-transition.ts"
check_file "$SRCBASE/repositories/sql/staticart-governance-sql.ts"
check_file "$SRCBASE/repositories/sql/staticart-audit-sql.ts"
check_file "$SRCBASE/repositories/sql/staticart-projection-queue-sql.ts"
check_file "$SRCBASE/repositories/asset-repository.impl.ts"
check_file "$SRCBASE/routes/assets.route.ts"
check_file "$SRCBASE/routes/review.route.ts"
check_file "$SRCBASE/services/asset-service.ts"


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase3-checks/932_staticart_phase3_file_presence_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase3-checks/933_staticart_phase3_binding_smoke_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase3-checks/933_staticart_phase3_binding_smoke_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

SRCBASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api"

printf '\n============================================================\n'
printf 'STATICART PHASE3 BINDING SMOKE CHECK\n'
printf '============================================================\n'

check_pattern() {
  local file="$1"
  local pattern="$2"
  local label="$3"

  if grep -q "$pattern" "$file"; then
    echo "OK  $label"
  else
    echo "NG  $label"
  fi
}

check_pattern "$SRCBASE/routes/assets.route.ts" "runSelfCheck" "AssetsRoute.runSelfCheck exists"
check_pattern "$SRCBASE/routes/review.route.ts" "createReviewRequest" "ReviewRoute.createReviewRequest exists"
check_pattern "$SRCBASE/routes/review.route.ts" "decideReview" "ReviewRoute.decideReview exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "publishMarketplace" "AssetsRoute.publishMarketplace exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "publishLibraryOnly" "AssetsRoute.publishLibraryOnly exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "delist" "AssetsRoute.delist exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "restrict" "AssetsRoute.restrict exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "archive" "AssetsRoute.archive exists"

check_pattern "$SRCBASE/services/asset-service.ts" "runSelfCheck" "AssetService.runSelfCheck exists"
check_pattern "$SRCBASE/services/asset-service.ts" "createReviewRequest" "AssetService.createReviewRequest exists"
check_pattern "$SRCBASE/services/asset-service.ts" "decideReview" "AssetService.decideReview exists"
check_pattern "$SRCBASE/services/asset-service.ts" "publishMarketplace" "AssetService.publishMarketplace exists"
check_pattern "$SRCBASE/services/asset-service.ts" "publishLibraryOnly" "AssetService.publishLibraryOnly exists"
check_pattern "$SRCBASE/services/asset-service.ts" "delist" "AssetService.delist exists"
check_pattern "$SRCBASE/services/asset-service.ts" "restrict" "AssetService.restrict exists"
check_pattern "$SRCBASE/services/asset-service.ts" "archive" "AssetService.archive exists"

check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "runSelfCheck" "AssetRepositoryImpl.runSelfCheck exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "createReviewRequest" "AssetRepositoryImpl.createReviewRequest exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "decideReview" "AssetRepositoryImpl.decideReview exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "publishMarketplace" "AssetRepositoryImpl.publishMarketplace exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "publishLibraryOnly" "AssetRepositoryImpl.publishLibraryOnly exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "delist" "AssetRepositoryImpl.delist exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "restrict" "AssetRepositoryImpl.restrict exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "archive" "AssetRepositoryImpl.archive exists"

check_pattern "$SRCBASE/repositories/helpers/lifecycle-transition.ts" "assertLifecycleTransition" "lifecycle transition helper exists"
check_pattern "$SRCBASE/repositories/sql/staticart-governance-sql.ts" "insertReviewRequest" "review request SQL exists"
check_pattern "$SRCBASE/repositories/sql/staticart-governance-sql.ts" "insertReviewDecision" "review decision SQL exists"
check_pattern "$SRCBASE/repositories/sql/staticart-audit-sql.ts" "insertAuditEvent" "audit SQL exists"
check_pattern "$SRCBASE/repositories/sql/staticart-projection-queue-sql.ts" "enqueueProjectionRefreshSkeleton" "projection queue SQL exists"


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase3-checks/933_staticart_phase3_binding_smoke_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase3-checks/990_staticart_phase3_full_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase3-checks/990_staticart_phase3_full_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase3-checks"

printf '\n============================================================\n'
printf 'STATICART PHASE3 FULL CHECK START\n'
printf '============================================================\n'

bash "$BASE/931_staticart_phase3_env_check.sh"
bash "$BASE/932_staticart_phase3_file_presence_check.sh"
bash "$BASE/933_staticart_phase3_binding_smoke_check.sh"

printf '\n============================================================\n'
printf 'STATICART PHASE3 FULL CHECK DONE\n'
printf '============================================================\n'


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase3-checks/990_staticart_phase3_full_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase4-5-checks/941_staticart_phase4_5_env_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase4-5-checks/941_staticart_phase4_5_env_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

printf '\n============================================================\n'
printf 'STATICART PHASE4_5 ENV CHECK\n'
printf '============================================================\n'

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

echo "OK: PERSONA_DATABASE_URL is set"

if [ -n "${DATABASE_URL:-}" ]; then
  echo "INFO: DATABASE_URL is also set"
  echo "INFO: StaticArtOS Phase4_5 Persona-side repository work still assumes PERSONA_DATABASE_URL only"
else
  echo "INFO: DATABASE_URL is not set"
fi


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase4-5-checks/941_staticart_phase4_5_env_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase4-5-checks/942_staticart_phase4_5_file_presence_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase4-5-checks/942_staticart_phase4_5_file_presence_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

SRCBASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api"

printf '\n============================================================\n'
printf 'STATICART PHASE4_5 FILE PRESENCE CHECK\n'
printf '============================================================\n'

check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "OK  $file"
  else
    echo "NG  $file"
  fi
}

check_file "$SRCBASE/repositories/helpers/entitlement-resolution.ts"
check_file "$SRCBASE/repositories/helpers/library-continuity.ts"
check_file "$SRCBASE/repositories/sql/staticart-entitlement-resolution-sql.ts"
check_file "$SRCBASE/repositories/sql/staticart-access-session-sql.ts"
check_file "$SRCBASE/repositories/sql/staticart-library-projection-refresh-sql.ts"
check_file "$SRCBASE/repositories/entitlement-repository.impl.ts"
check_file "$SRCBASE/repositories/library-repository.impl.ts"
check_file "$SRCBASE/services/entitlement-service.ts"
check_file "$SRCBASE/services/library-service.ts"
check_file "$SRCBASE/routes/internal.route.ts"
check_file "$SRCBASE/routes/library.route.ts"


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase4-5-checks/942_staticart_phase4_5_file_presence_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase4-5-checks/943_staticart_phase4_5_binding_smoke_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase4-5-checks/943_staticart_phase4_5_binding_smoke_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

SRCBASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api"

printf '\n============================================================\n'
printf 'STATICART PHASE4_5 BINDING SMOKE CHECK\n'
printf '============================================================\n'

check_pattern() {
  local file="$1"
  local pattern="$2"
  local label="$3"

  if grep -q "$pattern" "$file"; then
    echo "OK  $label"
  else
    echo "NG  $label"
  fi
}

check_pattern "$SRCBASE/helpers/../repositories/helpers/entitlement-resolution.ts" "resolveEffectiveEntitlementState" "entitlement resolution helper exists"
check_pattern "$SRCBASE/helpers/../repositories/helpers/entitlement-resolution.ts" "canCreateFullAccessSession" "full access helper exists"
check_pattern "$SRCBASE/helpers/../repositories/helpers/entitlement-resolution.ts" "canCreateSampleAccessSession" "sample access helper exists"

check_pattern "$SRCBASE/helpers/../repositories/helpers/library-continuity.ts" "deriveLibraryProjectionFlags" "library projection helper exists"
check_pattern "$SRCBASE/helpers/../repositories/helpers/library-continuity.ts" "favoriteMustSurviveEntitlementLoss" "favorite persistence helper exists"

check_pattern "$SRCBASE/repositories/sql/staticart-entitlement-resolution-sql.ts" "selectEntitlementResolutionInputs" "entitlement resolution SQL exists"
check_pattern "$SRCBASE/repositories/sql/staticart-access-session-sql.ts" "selectAccessSessionEligibility" "access session SQL exists"
check_pattern "$SRCBASE/repositories/sql/staticart-library-projection-refresh-sql.ts" "selectLibraryProjectionInputs" "library projection refresh SQL exists"

check_pattern "$SRCBASE/services/entitlement-service.ts" "getEffectiveEntitlement" "EntitlementService.getEffectiveEntitlement exists"
check_pattern "$SRCBASE/services/entitlement-service.ts" "reflectPurchase" "EntitlementService.reflectPurchase exists"
check_pattern "$SRCBASE/services/entitlement-service.ts" "reflectSubscription" "EntitlementService.reflectSubscription exists"

check_pattern "$SRCBASE/services/library-service.ts" "getLibrary" "LibraryService.getLibrary exists"
check_pattern "$SRCBASE/services/library-service.ts" "getContinueReading" "LibraryService.getContinueReading exists"
check_pattern "$SRCBASE/services/library-service.ts" "getContinueViewing" "LibraryService.getContinueViewing exists"
check_pattern "$SRCBASE/services/library-service.ts" "saveReaderProgress" "LibraryService.saveReaderProgress exists"
check_pattern "$SRCBASE/services/library-service.ts" "saveViewerProgress" "LibraryService.saveViewerProgress exists"
check_pattern "$SRCBASE/services/library-service.ts" "addFavorite" "LibraryService.addFavorite exists"
check_pattern "$SRCBASE/services/library-service.ts" "deleteFavorite" "LibraryService.deleteFavorite exists"
check_pattern "$SRCBASE/services/library-service.ts" "createAnnotation" "LibraryService.createAnnotation exists"

check_pattern "$SRCBASE/repositories/entitlement-repository.impl.ts" "getEffectiveEntitlement" "EntitlementRepositoryImpl.getEffectiveEntitlement exists"
check_pattern "$SRCBASE/repositories/entitlement-repository.impl.ts" "reflectPurchase" "EntitlementRepositoryImpl.reflectPurchase exists"
check_pattern "$SRCBASE/repositories/entitlement-repository.impl.ts" "reflectSubscription" "EntitlementRepositoryImpl.reflectSubscription exists"

check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "getLibrary" "LibraryRepositoryImpl.getLibrary exists"
check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "getContinueReading" "LibraryRepositoryImpl.getContinueReading exists"
check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "getContinueViewing" "LibraryRepositoryImpl.getContinueViewing exists"
check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "saveReaderProgress" "LibraryRepositoryImpl.saveReaderProgress exists"
check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "saveViewerProgress" "LibraryRepositoryImpl.saveViewerProgress exists"
check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "addFavorite" "LibraryRepositoryImpl.addFavorite exists"
check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "deleteFavorite" "LibraryRepositoryImpl.deleteFavorite exists"
check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "createAnnotation" "LibraryRepositoryImpl.createAnnotation exists"

check_pattern "$SRCBASE/repositories/db-client.ts" "PERSONA_DATABASE_URL" "repository db client still assumes PERSONA_DATABASE_URL"


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase4-5-checks/943_staticart_phase4_5_binding_smoke_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase4-5-checks/990_staticart_phase4_5_full_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase4-5-checks/990_staticart_phase4_5_full_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase4-5-checks"

printf '\n============================================================\n'
printf 'STATICART PHASE4_5 FULL CHECK START\n'
printf '============================================================\n'

bash "$BASE/941_staticart_phase4_5_env_check.sh"
bash "$BASE/942_staticart_phase4_5_file_presence_check.sh"
bash "$BASE/943_staticart_phase4_5_binding_smoke_check.sh"

printf '\n============================================================\n'
printf 'STATICART PHASE4_5 FULL CHECK DONE\n'
printf '============================================================\n'


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase4-5-checks/990_staticart_phase4_5_full_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/README.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/README.md

# StaticArtOS API Source Skeleton

This directory is the framework-agnostic source skeleton for StaticArtOS API.

## Intent

- freeze responsibility boundaries
- keep route/service/repository separation
- prevent projection from becoming canonical write logic
- preserve distinct reader/viewer continuity handling

## Directory rules

- `routes/` handles permission gate + request-shape entry + response envelope
- `services/` handles use-case orchestration
- `repositories/` will later bind to DB access
- `guards/` handles permission checks only
- `validators/` handles request input validation only
- `jobs/` handles projection and recompute queue boundaries

## Important

- bind DB access later using `PERSONA_DATABASE_URL` side runtime
- do not put SQL directly into route handlers
- do not let repository layer decide permission


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/README.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/contracts/dto.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/contracts/dto.ts

import type {
  AssetType,
  EntitlementState,
  IsoDateTime,
  LifecycleState,
  ReviewStatus,
  SalesState,
  SubscriptionState,
  Uuid,
} from "./types";

export interface AssetCreateRequestDto {
  asset_type: AssetType;
  creator_id: Uuid;
  publisher_id?: Uuid | null;
  initial_language_code: string;
}

export interface AssetSummaryDto {
  asset_id: Uuid;
  asset_code: string;
  asset_type: AssetType;
  creator_id: Uuid;
  publisher_id?: Uuid | null;
  current_version_no: number;
  lifecycle_state: LifecycleState;
  version_token: string;
  created_at: IsoDateTime;
}

export interface LocalizationWriteRequestDto {
  version_token: string;
  title: string;
  subtitle?: string | null;
  short_description?: string | null;
  long_description?: string | null;
}

export interface RightsPolicyWriteRequestDto {
  version_token: string;
  version_no: number;
  exhibition_allowed: boolean;
  commercial_use_allowed: boolean;
  derivative_allowed: boolean;
  additional_license_required: boolean;
  age_rating: string;
  region_mode: "global" | "allow_list" | "deny_list";
  region_codes: string[];
  rights_summary?: string | null;
}

export interface SalesOfferWriteRequestDto {
  version_token: string;
  sale_type: string;
  sales_state: SalesState;
  base_currency?: string | null;
  base_price?: number | null;
  price_label_override?: string | null;
  sale_start_at?: IsoDateTime | null;
  sale_end_at?: IsoDateTime | null;
  limited_sale_flag?: boolean;
  inventory_cap?: number | null;
}

export interface SubscriptionRuleWriteRequestDto {
  version_token: string;
  subscription_state: SubscriptionState;
  subscription_eligible: boolean;
  creator_opt_in: boolean;
  settlement_group_code?: string | null;
  subscription_start_at?: IsoDateTime | null;
  subscription_end_at?: IsoDateTime | null;
}

export interface ReviewDecisionRequestDto {
  decision_status: ReviewStatus;
  decision_reason_code?: string | null;
  decision_comment?: string | null;
}

export interface PublishActionRequestDto {
  version_token: string;
  publish_at?: IsoDateTime | null;
}

export interface StateActionRequestDto {
  version_token: string;
  reason_code?: string | null;
  reason_comment?: string | null;
}

export interface EntitlementDto {
  asset_id: Uuid;
  effective_entitlement_state: EntitlementState;
  has_owned_permanent: boolean;
  has_subscription_access: boolean;
  sample_available: boolean;
  blocking_reason_code?: string | null;
  computed_at: IsoDateTime;
}

export interface ReaderProgressRequestDto {
  sync_version: number;
  current_locator: string;
  progress_percent: number;
  last_device_type?: string | null;
}

export interface ViewerProgressRequestDto {
  sync_version: number;
  current_frame_ref?: string | null;
  current_page_no?: number | null;
  zoom_ratio?: number | null;
  last_device_type?: string | null;
}

export interface FavoriteResponseDto {
  asset_id: Uuid;
  favorite_state: boolean;
}

export interface PurchaseReflectRequestDto {
  user_id: Uuid;
  asset_id: Uuid;
  transaction_id: string;
  grant_type: "owned_permanent";
  granted_at: IsoDateTime;
}

export interface SubscriptionReflectRequestDto {
  user_id: Uuid;
  subscription_event_type: string;
  effective_at: IsoDateTime;
  affected_asset_ids: Uuid[];
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/contracts/dto.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/contracts/types.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/contracts/types.ts

export type Uuid = string;
export type IsoDateTime = string;

export type AssetType =
  | "artwork"
  | "illustration"
  | "poster"
  | "photo_art"
  | "static_visual"
  | "book"
  | "ebook"
  | "booklet"
  | "catalog"
  | "collection_book"
  | "material_booklet";

export type LifecycleState =
  | "draft"
  | "files_uploaded"
  | "metadata_completed"
  | "self_check_passed"
  | "review_pending"
  | "approved"
  | "rejected"
  | "published_marketplace"
  | "published_library_only"
  | "delisted"
  | "restricted"
  | "replaced"
  | "archived";

export type SalesState =
  | "not_for_sale"
  | "for_sale"
  | "preorder"
  | "sale_paused"
  | "sold_out_limited"
  | "sale_ended";

export type SubscriptionState =
  | "not_included"
  | "included_scheduled"
  | "included_active"
  | "included_paused"
  | "included_ended";

export type EntitlementState =
  | "none"
  | "sample_only"
  | "subscription_access"
  | "owned_permanent"
  | "owned_and_subscription_access"
  | "blocked_by_region"
  | "blocked_by_age_policy"
  | "blocked_by_rights_change";

export type ReviewStatus =
  | "pending"
  | "approved"
  | "rejected"
  | "rework_required"
  | "restricted";

export type ProjectionStatus =
  | "eligible"
  | "ineligible"
  | "revoked";

export type ActorType =
  | "guest"
  | "signed_in_user"
  | "library_user"
  | "creator_owner"
  | "publisher_operator"
  | "review_admin"
  | "policy_admin"
  | "support_readonly"
  | "internal_integration"
  | "exhibition_builder_reader";

export interface RequestMeta {
  requestId: string;
  actorType: ActorType;
  actorUserId?: Uuid | null;
  idempotencyKey?: string | null;
}

export interface SuccessEnvelope<T> {
  ok: true;
  data: T;
  meta: {
    request_id: string;
    next_cursor?: string | null;
  };
}

export interface ErrorEnvelope {
  ok: false;
  error: {
    code: string;
    message: string;
    details?: Record<string, unknown>;
    retryable: boolean;
  };
  meta: {
    request_id: string;
  };
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/contracts/types.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/core/error-codes.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/core/error-codes.ts

export const STATICART_ERROR_CODES = {
  STATICART_VALIDATION_ERROR: "STATICART_VALIDATION_ERROR",
  STATICART_INVALID_ENUM: "STATICART_INVALID_ENUM",
  STATICART_REQUIRED_FIELD_MISSING: "STATICART_REQUIRED_FIELD_MISSING",
  STATICART_INVALID_CURSOR: "STATICART_INVALID_CURSOR",

  STATICART_UNAUTHORIZED: "STATICART_UNAUTHORIZED",
  STATICART_FORBIDDEN: "STATICART_FORBIDDEN",
  STATICART_ROLE_NOT_ALLOWED: "STATICART_ROLE_NOT_ALLOWED",
  STATICART_ASSET_NOT_OWNED_BY_ACTOR: "STATICART_ASSET_NOT_OWNED_BY_ACTOR",

  STATICART_ASSET_NOT_FOUND: "STATICART_ASSET_NOT_FOUND",
  STATICART_FILE_NOT_FOUND: "STATICART_FILE_NOT_FOUND",
  STATICART_REVIEW_REQUEST_NOT_FOUND: "STATICART_REVIEW_REQUEST_NOT_FOUND",
  STATICART_ASSET_STATE_CONFLICT: "STATICART_ASSET_STATE_CONFLICT",
  STATICART_REVIEW_ALREADY_PENDING: "STATICART_REVIEW_ALREADY_PENDING",
  STATICART_VERSION_CONFLICT: "STATICART_VERSION_CONFLICT",
  STATICART_IDEMPOTENCY_REPLAY_MISMATCH: "STATICART_IDEMPOTENCY_REPLAY_MISMATCH",

  STATICART_REVIEW_SUBMISSION_PRECONDITION_FAILED: "STATICART_REVIEW_SUBMISSION_PRECONDITION_FAILED",
  STATICART_PUBLISH_PRECONDITION_FAILED: "STATICART_PUBLISH_PRECONDITION_FAILED",
  STATICART_RIGHTS_POLICY_BLOCKED: "STATICART_RIGHTS_POLICY_BLOCKED",
  STATICART_REGION_POLICY_BLOCKED: "STATICART_REGION_POLICY_BLOCKED",
  STATICART_AGE_POLICY_BLOCKED: "STATICART_AGE_POLICY_BLOCKED",
  STATICART_EXHIBITION_PROJECTION_INELIGIBLE: "STATICART_EXHIBITION_PROJECTION_INELIGIBLE",

  STATICART_ENTITLEMENT_BLOCKED: "STATICART_ENTITLEMENT_BLOCKED",
  STATICART_SAMPLE_NOT_AVAILABLE: "STATICART_SAMPLE_NOT_AVAILABLE",
  STATICART_ACCESS_NOT_GRANTED: "STATICART_ACCESS_NOT_GRANTED",

  STATICART_STORAGE_UPLOAD_FAILED: "STATICART_STORAGE_UPLOAD_FAILED",
  STATICART_EXTERNAL_PAYMENT_SYNC_FAILED: "STATICART_EXTERNAL_PAYMENT_SYNC_FAILED",
  STATICART_EXTERNAL_SUBSCRIPTION_SYNC_FAILED: "STATICART_EXTERNAL_SUBSCRIPTION_SYNC_FAILED",
  STATICART_RATE_LIMITED: "STATICART_RATE_LIMITED",
  STATICART_INTERNAL_ERROR: "STATICART_INTERNAL_ERROR",
} as const;

export type StaticArtErrorCode =
  typeof STATICART_ERROR_CODES[keyof typeof STATICART_ERROR_CODES];


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/core/error-codes.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/core/errors.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/core/errors.ts

import type { StaticArtErrorCode } from "./error-codes";

export class StaticArtError extends Error {
  public readonly status: number;
  public readonly code: StaticArtErrorCode;
  public readonly details?: Record<string, unknown>;
  public readonly retryable: boolean;

  constructor(args: {
    status: number;
    code: StaticArtErrorCode;
    message: string;
    details?: Record<string, unknown>;
    retryable?: boolean;
  }) {
    super(args.message);
    this.name = "StaticArtError";
    this.status = args.status;
    this.code = args.code;
    this.details = args.details;
    this.retryable = args.retryable ?? false;
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/core/errors.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/core/response.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/core/response.ts

import type { ErrorEnvelope, SuccessEnvelope } from "../contracts/types";
import { StaticArtError } from "./errors";

export function success<T>(requestId: string, data: T): SuccessEnvelope<T> {
  return {
    ok: true,
    data,
    meta: {
      request_id: requestId,
    },
  };
}

export function successList<T>(
  requestId: string,
  items: T[],
  nextCursor: string | null = null,
): SuccessEnvelope<{ items: T[] }> {
  return {
    ok: true,
    data: { items },
    meta: {
      request_id: requestId,
      next_cursor: nextCursor,
    },
  };
}

export function errorFromException(
  requestId: string,
  error: unknown,
): ErrorEnvelope {
  if (error instanceof StaticArtError) {
    return {
      ok: false,
      error: {
        code: error.code,
        message: error.message,
        details: error.details,
        retryable: error.retryable,
      },
      meta: {
        request_id: requestId,
      },
    };
  }

  return {
    ok: false,
    error: {
      code: "STATICART_INTERNAL_ERROR",
      message: "Unexpected internal error.",
      retryable: false,
    },
    meta: {
      request_id: requestId,
    },
  };
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/core/response.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/guards/permission-guard.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/guards/permission-guard.ts

import type { ActorType, RequestMeta } from "../contracts/types";
import { STATICART_ERROR_CODES } from "../core/error-codes";
import { StaticArtError } from "../core/errors";

type PermissionContext = {
  assetOwnerUserId?: string | null;
  publisherOperatorAllowed?: boolean;
  lifecycleState?: string | null;
  restricted?: boolean;
};

function forbid(message: string, details?: Record<string, unknown>): never {
  throw new StaticArtError({
    status: 403,
    code: STATICART_ERROR_CODES.STATICART_FORBIDDEN,
    message,
    details,
  });
}

export function requireActor(
  meta: RequestMeta,
  allowedActors: ActorType[],
): void {
  if (!allowedActors.includes(meta.actorType)) {
    forbid("Actor is not allowed for this operation.", {
      actorType: meta.actorType,
      allowedActors,
    });
  }
}

export function requireAssetOwnershipOrPublisherAccess(
  meta: RequestMeta,
  ctx: PermissionContext,
): void {
  const isOwner =
    Boolean(meta.actorUserId) &&
    Boolean(ctx.assetOwnerUserId) &&
    meta.actorUserId === ctx.assetOwnerUserId;

  const publisherAllowed = ctx.publisherOperatorAllowed === true;

  if (!isOwner && !publisherAllowed) {
    forbid("Actor does not own or govern this asset.");
  }
}

export function requireNoRestrictedPublish(ctx: PermissionContext): void {
  if (ctx.restricted) {
    forbid("Restricted asset cannot be published.");
  }
}

export function requireNotReviewPending(ctx: PermissionContext): void {
  if (ctx.lifecycleState === "review_pending") {
    throw new StaticArtError({
      status: 409,
      code: STATICART_ERROR_CODES.STATICART_ASSET_STATE_CONFLICT,
      message: "Asset is review_pending and cannot be modified.",
      details: {
        lifecycle_state: ctx.lifecycleState,
      },
    });
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/guards/permission-guard.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/jobs/projection-jobs.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/jobs/projection-jobs.ts

import type { RequestMeta, Uuid } from "../contracts/types";

export interface ProjectionJobDispatcher {
  enqueueEntitlementRecompute(assetId: Uuid, actor: RequestMeta): Promise<void>;
  enqueueLibraryRefresh(assetId: Uuid, actor: RequestMeta): Promise<void>;
  enqueueExhibitionRefresh(assetId: Uuid, actor: RequestMeta): Promise<void>;
  enqueueCx22073jwPublish(assetId: Uuid, actor: RequestMeta): Promise<void>;
}

export class StaticArtProjectionJobs implements ProjectionJobDispatcher {
  async enqueueEntitlementRecompute(assetId: Uuid, actor: RequestMeta): Promise<void> {
    void assetId;
    void actor;
  }

  async enqueueLibraryRefresh(assetId: Uuid, actor: RequestMeta): Promise<void> {
    void assetId;
    void actor;
  }

  async enqueueExhibitionRefresh(assetId: Uuid, actor: RequestMeta): Promise<void> {
    void assetId;
    void actor;
  }

  async enqueueCx22073jwPublish(assetId: Uuid, actor: RequestMeta): Promise<void> {
    void assetId;
    void actor;
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/jobs/projection-jobs.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/README.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/README.md

# StaticArtOS Repository Implementation Skeleton

This directory is the repository implementation skeleton for StaticArtOS.

## Intent

- bind service interfaces to Persona-side DB access
- keep SQL out of routes and services
- prepare actual persistence points for Phase 2 and later phases

## Important

- use PERSONA_DATABASE_URL only for Persona-side DB access
- do not decide permission here
- do not return HTTP responses here
- do not treat projection tables as canonical write sources

## Current state

- Asset create/detail/localization/rights/sales/subscription persistence points are scaffolded
- Review/publish/restrict/archive remain placeholders for later phases
- Entitlement/library/projection repository entry points are scaffolded


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/README.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/asset-repository.impl.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/asset-repository.impl.ts

import type {
  AssetCreateRequestDto,
  AssetSummaryDto,
  LocalizationWriteRequestDto,
  PublishActionRequestDto,
  ReviewDecisionRequestDto,
  RightsPolicyWriteRequestDto,
  SalesOfferWriteRequestDto,
  StateActionRequestDto,
  SubscriptionRuleWriteRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";
import type { AssetRepository } from "../services/asset-service";
import type { DbClientFactory } from "./db-client";
import { STATICART_ASSET_SQL } from "./sql/staticart-asset-sql";
import { notFound } from "./helpers/repository-errors";

export class AssetRepositoryImpl implements AssetRepository {
  constructor(private readonly dbFactory: DbClientFactory) {}

  async createDraft(
    input: AssetCreateRequestDto,
    meta: RequestMeta,
  ): Promise<AssetSummaryDto> {
    const db = this.dbFactory.createPersonaDbClient();

    return db.transaction(async (tx) => {
      const assetId = crypto.randomUUID();
      const assetCode = `STA-${Date.now()}`;
      const versionLabel = "v1";

      const assetResult = await tx.query<{
        asset_id: string;
        asset_code: string;
        asset_type: string;
        creator_id: string;
        publisher_id: string | null;
        current_version_no: number;
        lifecycle_state: string;
        created_at: string;
      }>(STATICART_ASSET_SQL.insertAssetMaster, [
        assetId,
        assetCode,
        input.asset_type,
        input.creator_id,
        input.publisher_id ?? null,
      ]);

      await tx.query(STATICART_ASSET_SQL.insertAssetVersion, [
        assetId,
        versionLabel,
        meta.actorUserId ?? input.creator_id,
      ]);

      const row = assetResult.rows[0];
      return {
        asset_id: row.asset_id,
        asset_code: row.asset_code,
        asset_type: row.asset_type as AssetSummaryDto["asset_type"],
        creator_id: row.creator_id,
        publisher_id: row.publisher_id,
        current_version_no: row.current_version_no,
        lifecycle_state: row.lifecycle_state as AssetSummaryDto["lifecycle_state"],
        version_token: `${row.created_at}#1`,
        created_at: row.created_at,
      };
    });
  }

  async getDetail(assetId: Uuid): Promise<Record<string, unknown> | null> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_ASSET_SQL.selectAssetDetail, [assetId]);
    return result.rows[0] ?? null;
  }

  async upsertLocalization(
    assetId: Uuid,
    languageCode: string,
    input: LocalizationWriteRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();

    const detail = await this.getDetail(assetId);
    if (!detail) {
      notFound("Asset not found for localization write.", { assetId });
    }

    const versionNo = Number(detail.current_version_no ?? 1);

    const result = await db.query(STATICART_ASSET_SQL.upsertLocalization, [
      assetId,
      versionNo,
      languageCode,
      input.title,
      input.subtitle ?? null,
      input.short_description ?? null,
      input.long_description ?? null,
    ]);

    return result.rows[0] ?? {};
  }

  async updateRightsPolicy(
    assetId: Uuid,
    input: RightsPolicyWriteRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_ASSET_SQL.upsertRightsPolicy, [
      assetId,
      input.version_no,
      input.exhibition_allowed,
      input.commercial_use_allowed,
      input.derivative_allowed,
      input.additional_license_required,
      input.age_rating,
      input.region_mode,
      input.region_codes,
      input.rights_summary ?? null,
    ]);

    return result.rows[0] ?? {};
  }

  async updateSalesOffer(
    assetId: Uuid,
    input: SalesOfferWriteRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_ASSET_SQL.upsertSalesOffer, [
      assetId,
      input.sale_type,
      input.sales_state,
      input.base_currency ?? null,
      input.base_price ?? null,
      input.price_label_override ?? null,
      input.sale_start_at ?? null,
      input.sale_end_at ?? null,
      input.limited_sale_flag ?? false,
      input.inventory_cap ?? null,
    ]);

    return result.rows[0] ?? {};
  }

  async updateSubscriptionRule(
    assetId: Uuid,
    input: SubscriptionRuleWriteRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_ASSET_SQL.upsertSubscriptionRule, [
      assetId,
      input.subscription_state,
      input.subscription_eligible,
      input.creator_opt_in,
      input.settlement_group_code ?? null,
      input.subscription_start_at ?? null,
      input.subscription_end_at ?? null,
    ]);

    return result.rows[0] ?? {};
  }

  async runSelfCheck(
    assetId: Uuid,
    versionToken: string,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    void versionToken;

    const detail = await this.getDetail(assetId);
    if (!detail) {
      notFound("Asset not found for self check.", { assetId });
    }

    return {
      asset_id: assetId,
      self_check_passed: false,
      issues: [
        "Phase 2 placeholder: bind file/metadata/rights/sales/subscription completeness logic.",
      ],
    };
  }

  async createReviewRequest(
    _assetId: Uuid,
    _requestedReviewTypes: string[],
    _versionToken: string,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return {
      todo: "Bind actual review request persistence in Phase 3.",
    };
  }

  async decideReview(
    _reviewRequestId: Uuid,
    _input: ReviewDecisionRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return {
      todo: "Bind actual review decision persistence in Phase 3.",
    };
  }

  async publishMarketplace(
    _assetId: Uuid,
    _input: PublishActionRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return {
      todo: "Bind actual marketplace publish in Phase 3.",
    };
  }

  async publishLibraryOnly(
    _assetId: Uuid,
    _input: PublishActionRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return {
      todo: "Bind actual library-only publish in Phase 3.",
    };
  }

  async delist(
    _assetId: Uuid,
    _input: StateActionRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return {
      todo: "Bind actual delist in Phase 3.",
    };
  }

  async restrict(
    _assetId: Uuid,
    _input: StateActionRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return {
      todo: "Bind actual restrict in Phase 3.",
    };
  }

  async archive(
    _assetId: Uuid,
    _input: StateActionRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return {
      todo: "Bind actual archive in Phase 3.",
    };
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/asset-repository.impl.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/db-client.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/db-client.ts

export interface QueryResultRow {
  [key: string]: unknown;
}

export interface QueryResult<T extends QueryResultRow = QueryResultRow> {
  rows: T[];
  rowCount: number;
}

export interface DbClient {
  query<T extends QueryResultRow = QueryResultRow>(
    sql: string,
    params?: unknown[],
  ): Promise<QueryResult<T>>;
  transaction<T>(fn: (client: DbClient) => Promise<T>): Promise<T>;
}

export interface DbClientFactory {
  createPersonaDbClient(): DbClient;
}

export class EnvDbClientFactory implements DbClientFactory {
  createPersonaDbClient(): DbClient {
    const url = process.env.PERSONA_DATABASE_URL ?? "";
    if (!url) {
      throw new Error("PERSONA_DATABASE_URL is required.");
    }

    return {
      async query<T extends QueryResultRow = QueryResultRow>(): Promise<QueryResult<T>> {
        throw new Error("Bind actual DB query implementation later.");
      },
      async transaction<T>(fn: (client: DbClient) => Promise<T>): Promise<T> {
        return fn(this.createPersonaDbClient());
      },
    };
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/db-client.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/entitlement-repository.impl.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/entitlement-repository.impl.ts

import type {
  EntitlementDto,
  PurchaseReflectRequestDto,
  SubscriptionReflectRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";
import type { EntitlementRepository } from "../services/entitlement-service";
import type { DbClientFactory } from "./db-client";
import { STATICART_ENTITLEMENT_SQL } from "./sql/staticart-entitlement-sql";

export class EntitlementRepositoryImpl implements EntitlementRepository {
  constructor(private readonly dbFactory: DbClientFactory) {}

  async getEffectiveEntitlement(
    assetId: Uuid,
    actorUserId: Uuid,
  ): Promise<EntitlementDto | null> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query<{
      asset_id: string;
      effective_entitlement_state: EntitlementDto["effective_entitlement_state"];
      has_owned_permanent: boolean;
      has_subscription_access: boolean;
      sample_available: boolean;
      blocking_reason_code: string | null;
      computed_at: string;
    }>(STATICART_ENTITLEMENT_SQL.selectEffectiveEntitlement, [assetId, actorUserId]);

    const row = result.rows[0];
    if (!row) {
      return null;
    }

    return {
      asset_id: row.asset_id,
      effective_entitlement_state: row.effective_entitlement_state,
      has_owned_permanent: row.has_owned_permanent,
      has_subscription_access: row.has_subscription_access,
      sample_available: row.sample_available,
      blocking_reason_code: row.blocking_reason_code,
      computed_at: row.computed_at,
    };
  }

  async reflectPurchase(
    input: PurchaseReflectRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_ENTITLEMENT_SQL.upsertPurchaseGrantSkeleton, [
      input.user_id,
      input.asset_id,
      input.transaction_id,
      input.grant_type,
      input.granted_at,
    ]);

    return result.rows[0] ?? {};
  }

  async reflectSubscription(
    input: SubscriptionReflectRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_ENTITLEMENT_SQL.upsertSubscriptionGrantSkeleton, [
      input.user_id,
      input.subscription_event_type,
      input.effective_at,
    ]);

    return {
      ...(result.rows[0] ?? {}),
      affected_asset_ids: input.affected_asset_ids,
    };
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/entitlement-repository.impl.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/helpers/entitlement-resolution.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/helpers/entitlement-resolution.ts

import type { EntitlementState } from "../../contracts/types";

export interface EntitlementInputs {
  hasOwnedPermanent: boolean;
  hasSubscriptionAccess: boolean;
  sampleAvailable: boolean;
  blockedByRegion: boolean;
  blockedByAgePolicy: boolean;
  blockedByRightsChange: boolean;
}

export function resolveEffectiveEntitlementState(
  input: EntitlementInputs,
): EntitlementState {
  if (input.blockedByRegion) {
    return "blocked_by_region";
  }

  if (input.blockedByAgePolicy) {
    return "blocked_by_age_policy";
  }

  if (input.blockedByRightsChange) {
    return "blocked_by_rights_change";
  }

  if (input.hasOwnedPermanent && input.hasSubscriptionAccess) {
    return "owned_and_subscription_access";
  }

  if (input.hasOwnedPermanent) {
    return "owned_permanent";
  }

  if (input.hasSubscriptionAccess) {
    return "subscription_access";
  }

  if (input.sampleAvailable) {
    return "sample_only";
  }

  return "none";
}

export function canCreateFullAccessSession(
  state: EntitlementState,
): boolean {
  return (
    state === "owned_permanent" ||
    state === "subscription_access" ||
    state === "owned_and_subscription_access"
  );
}

export function canCreateSampleAccessSession(
  state: EntitlementState,
): boolean {
  return (
    state === "sample_only" ||
    state === "owned_permanent" ||
    state === "subscription_access" ||
    state === "owned_and_subscription_access"
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/helpers/entitlement-resolution.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/helpers/library-continuity.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/helpers/library-continuity.ts

export interface ContinuityVisibilityInput {
  favoriteState: boolean;
  hasReaderProgress: boolean;
  hasViewerProgress: boolean;
  entitlementAllowsLibrary: boolean;
}

export function deriveLibraryProjectionFlags(input: ContinuityVisibilityInput) {
  return {
    visible_in_library: input.entitlementAllowsLibrary || input.favoriteState,
    visible_in_continue_reading: input.entitlementAllowsLibrary && input.hasReaderProgress,
    visible_in_continue_viewing: input.entitlementAllowsLibrary && input.hasViewerProgress,
  };
}

export function favoriteMustSurviveEntitlementLoss(): boolean {
  return true;
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/helpers/library-continuity.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/helpers/lifecycle-transition.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/helpers/lifecycle-transition.ts

import type { LifecycleState } from "../../contracts/types";
import { STATICART_ERROR_CODES } from "../../core/error-codes";
import { StaticArtError } from "../../core/errors";

const ALLOWED_TRANSITIONS: Record<LifecycleState, LifecycleState[]> = {
  draft: ["files_uploaded", "archived"],
  files_uploaded: ["metadata_completed", "archived"],
  metadata_completed: ["self_check_passed", "files_uploaded", "archived"],
  self_check_passed: ["review_pending", "metadata_completed", "archived"],
  review_pending: ["approved", "rejected", "restricted"],
  approved: ["published_marketplace", "published_library_only", "archived"],
  rejected: ["metadata_completed", "self_check_passed", "archived"],
  published_marketplace: ["delisted", "restricted", "replaced", "archived"],
  published_library_only: ["published_marketplace", "restricted", "replaced", "archived"],
  delisted: ["published_marketplace", "published_library_only", "restricted", "archived"],
  restricted: ["review_pending", "delisted", "archived"],
  replaced: ["archived"],
  archived: [],
};

export function assertLifecycleTransition(
  fromState: LifecycleState,
  toState: LifecycleState,
): void {
  const allowed = ALLOWED_TRANSITIONS[fromState] ?? [];

  if (!allowed.includes(toState)) {
    throw new StaticArtError({
      status: 409,
      code: STATICART_ERROR_CODES.STATICART_ASSET_STATE_CONFLICT,
      message: `Invalid lifecycle transition from ${fromState} to ${toState}.`,
      details: {
        from_state: fromState,
        to_state: toState,
        allowed_targets: allowed,
      },
    });
  }
}

export function getAllowedLifecycleTargets(
  fromState: LifecycleState,
): LifecycleState[] {
  return ALLOWED_TRANSITIONS[fromState] ?? [];
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/helpers/lifecycle-transition.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/helpers/repository-errors.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/helpers/repository-errors.ts

import { STATICART_ERROR_CODES } from "../../core/error-codes";
import { StaticArtError } from "../../core/errors";

export function notFound(message: string, details?: Record<string, unknown>): never {
  throw new StaticArtError({
    status: 404,
    code: STATICART_ERROR_CODES.STATICART_ASSET_NOT_FOUND,
    message,
    details,
  });
}

export function conflict(
  code: keyof typeof STATICART_ERROR_CODES,
  message: string,
  details?: Record<string, unknown>,
): never {
  throw new StaticArtError({
    status: 409,
    code: STATICART_ERROR_CODES[code],
    message,
    details,
  });
}

export function unprocessable(
  code: keyof typeof STATICART_ERROR_CODES,
  message: string,
  details?: Record<string, unknown>,
): never {
  throw new StaticArtError({
    status: 422,
    code: STATICART_ERROR_CODES[code],
    message,
    details,
  });
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/helpers/repository-errors.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/interfaces.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/interfaces.ts

export type RepositoryNote =
  "Bind these interfaces to actual DB access later."
  | "Do not embed permission logic here."
  | "Do not emit HTTP responses here."
  | "Do not treat projection tables as canonical sources.";

export const REPOSITORY_NOTES: RepositoryNote[] = [
  "Bind these interfaces to actual DB access later.",
  "Do not embed permission logic here.",
  "Do not emit HTTP responses here.",
  "Do not treat projection tables as canonical sources.",
];


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/interfaces.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/library-repository.impl.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/library-repository.impl.ts

import type {
  FavoriteResponseDto,
  ReaderProgressRequestDto,
  ViewerProgressRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";
import type { LibraryRepository } from "../services/library-service";
import type { DbClientFactory } from "./db-client";
import { STATICART_LIBRARY_SQL } from "./sql/staticart-library-sql";

export class LibraryRepositoryImpl implements LibraryRepository {
  constructor(private readonly dbFactory: DbClientFactory) {}

  async getLibrary(
    actorUserId: Uuid,
    _cursor?: string | null,
    limit = 30,
  ): Promise<{ items: Record<string, unknown>[]; nextCursor: string | null }> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_LIBRARY_SQL.selectLibrary, [
      actorUserId,
      limit,
    ]);

    return {
      items: result.rows,
      nextCursor: null,
    };
  }

  async getContinueReading(
    actorUserId: Uuid,
    _cursor?: string | null,
    limit = 20,
  ): Promise<{ items: Record<string, unknown>[]; nextCursor: string | null }> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_LIBRARY_SQL.selectContinueReading, [
      actorUserId,
      limit,
    ]);

    return {
      items: result.rows,
      nextCursor: null,
    };
  }

  async getContinueViewing(
    actorUserId: Uuid,
    _cursor?: string | null,
    limit = 20,
  ): Promise<{ items: Record<string, unknown>[]; nextCursor: string | null }> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_LIBRARY_SQL.selectContinueViewing, [
      actorUserId,
      limit,
    ]);

    return {
      items: result.rows,
      nextCursor: null,
    };
  }

  async saveReaderProgress(
    assetId: Uuid,
    input: ReaderProgressRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_LIBRARY_SQL.upsertReaderProgress, [
      meta.actorUserId,
      assetId,
      input.current_locator,
      input.progress_percent,
      input.sync_version,
      input.last_device_type ?? null,
    ]);

    return result.rows[0] ?? {};
  }

  async saveViewerProgress(
    assetId: Uuid,
    input: ViewerProgressRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_LIBRARY_SQL.upsertViewerProgress, [
      meta.actorUserId,
      assetId,
      input.current_frame_ref ?? null,
      input.current_page_no ?? null,
      input.zoom_ratio ?? null,
      input.sync_version,
      input.last_device_type ?? null,
    ]);

    return result.rows[0] ?? {};
  }

  async addFavorite(
    assetId: Uuid,
    meta: RequestMeta,
  ): Promise<FavoriteResponseDto> {
    const db = this.dbFactory.createPersonaDbClient();

    await db.query(STATICART_LIBRARY_SQL.addFavorite, [
      meta.actorUserId,
      assetId,
    ]);

    return {
      asset_id: assetId,
      favorite_state: true,
    };
  }

  async deleteFavorite(
    assetId: Uuid,
    meta: RequestMeta,
  ): Promise<FavoriteResponseDto> {
    const db = this.dbFactory.createPersonaDbClient();

    await db.query(STATICART_LIBRARY_SQL.deleteFavorite, [
      meta.actorUserId,
      assetId,
    ]);

    return {
      asset_id: assetId,
      favorite_state: false,
    };
  }

  async createAnnotation(
    assetId: Uuid,
    input: Record<string, unknown>,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();

    const result = await db.query(STATICART_LIBRARY_SQL.insertAnnotation, [
      crypto.randomUUID(),
      meta.actorUserId,
      assetId,
      input.annotation_type ?? "bookmark",
      input.locator ?? "",
      JSON.stringify(input.payload_json ?? {}),
    ]);

    return result.rows[0] ?? {};
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/library-repository.impl.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/projection-repository.impl.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/projection-repository.impl.ts

import type { RequestMeta, Uuid } from "../contracts/types";
import type { ProjectionRepository } from "../services/projection-service";
import type { DbClientFactory } from "./db-client";
import { STATICART_PROJECTION_SQL } from "./sql/staticart-projection-sql";

export class ProjectionRepositoryImpl implements ProjectionRepository {
  constructor(private readonly dbFactory: DbClientFactory) {}

  async getExhibitionProjection(assetId: Uuid): Promise<Record<string, unknown> | null> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_PROJECTION_SQL.selectExhibitionProjection, [
      assetId,
    ]);

    return result.rows[0] ?? null;
  }

  async enqueueProjectionRefresh(
    assetId: Uuid,
    targets: string[],
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_PROJECTION_SQL.enqueueProjectionRefreshSkeleton, [
      assetId,
      targets,
    ]);

    return {
      ...(result.rows[0] ?? {}),
      queued: true,
    };
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/projection-repository.impl.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-access-session-sql.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-access-session-sql.ts

export const STATICART_ACCESS_SESSION_SQL = {
  selectAccessSessionEligibility: `
    select
      am.asset_id,
      am.lifecycle_state,
      am.is_current_version_visible,
      uae.effective_entitlement_state,
      uae.sample_available
    from staticart.asset_master am
    left join staticart.user_asset_entitlement uae
      on uae.asset_id = am.asset_id
     and uae.user_id = $2
    where am.asset_id = $1
  `,
  createAccessSessionSkeleton: `
    -- phase 4 actual access-session persistence or tokenization binds here
    select
      $1::uuid as asset_id,
      $2::uuid as user_id,
      $3::text as access_mode,
      now() as created_at
  `,
} as const;


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-access-session-sql.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-asset-sql.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-asset-sql.ts

export const STATICART_ASSET_SQL = {
  insertAssetMaster: `
    insert into staticart.asset_master (
      asset_id,
      asset_code,
      asset_type,
      creator_id,
      publisher_id,
      current_version_no,
      lifecycle_state,
      is_current_version_visible
    ) values ($1, $2, $3, $4, $5, 1, 'draft', false)
    returning
      asset_id,
      asset_code,
      asset_type,
      creator_id,
      publisher_id,
      current_version_no,
      lifecycle_state,
      created_at
  `,
  insertAssetVersion: `
    insert into staticart.asset_version (
      asset_id,
      version_no,
      version_label,
      is_visible,
      is_replace_target,
      created_by
    ) values ($1, 1, $2, false, false, $3)
  `,
  selectAssetDetail: `
    select
      am.asset_id,
      am.asset_code,
      am.asset_type,
      am.creator_id,
      am.publisher_id,
      am.current_version_no,
      am.lifecycle_state,
      am.is_current_version_visible,
      am.created_at,
      am.updated_at
    from staticart.asset_master am
    where am.asset_id = $1
  `,
  upsertLocalization: `
    insert into staticart.asset_localization (
      asset_id,
      version_no,
      language_code,
      title,
      subtitle,
      short_description,
      long_description
    ) values ($1, $2, $3, $4, $5, $6, $7)
    on conflict (asset_id, version_no, language_code)
    do update set
      title = excluded.title,
      subtitle = excluded.subtitle,
      short_description = excluded.short_description,
      long_description = excluded.long_description,
      updated_at = now()
    returning
      asset_id,
      version_no,
      language_code,
      title,
      subtitle,
      short_description,
      long_description,
      updated_at
  `,
  upsertRightsPolicy: `
    insert into staticart.asset_rights_policy (
      asset_id,
      version_no,
      exhibition_allowed,
      commercial_use_allowed,
      derivative_allowed,
      additional_license_required,
      age_rating,
      region_mode,
      region_codes,
      rights_summary,
      rights_state,
      effective_from,
      updated_at
    ) values (
      $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, 'active', now(), now()
    )
    on conflict (asset_id)
    do update set
      version_no = excluded.version_no,
      exhibition_allowed = excluded.exhibition_allowed,
      commercial_use_allowed = excluded.commercial_use_allowed,
      derivative_allowed = excluded.derivative_allowed,
      additional_license_required = excluded.additional_license_required,
      age_rating = excluded.age_rating,
      region_mode = excluded.region_mode,
      region_codes = excluded.region_codes,
      rights_summary = excluded.rights_summary,
      updated_at = now()
    returning *
  `,
  upsertSalesOffer: `
    insert into staticart.asset_sales_offer (
      asset_id,
      sale_type,
      sales_state,
      base_currency,
      base_price,
      price_label_override,
      sale_start_at,
      sale_end_at,
      limited_sale_flag,
      inventory_cap,
      updated_at
    ) values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,now())
    on conflict (asset_id)
    do update set
      sale_type = excluded.sale_type,
      sales_state = excluded.sales_state,
      base_currency = excluded.base_currency,
      base_price = excluded.base_price,
      price_label_override = excluded.price_label_override,
      sale_start_at = excluded.sale_start_at,
      sale_end_at = excluded.sale_end_at,
      limited_sale_flag = excluded.limited_sale_flag,
      inventory_cap = excluded.inventory_cap,
      updated_at = now()
    returning *
  `,
  upsertSubscriptionRule: `
    insert into staticart.asset_subscription_rule (
      asset_id,
      subscription_state,
      subscription_eligible,
      creator_opt_in,
      settlement_group_code,
      subscription_start_at,
      subscription_end_at,
      updated_at
    ) values ($1,$2,$3,$4,$5,$6,$7,now())
    on conflict (asset_id)
    do update set
      subscription_state = excluded.subscription_state,
      subscription_eligible = excluded.subscription_eligible,
      creator_opt_in = excluded.creator_opt_in,
      settlement_group_code = excluded.settlement_group_code,
      subscription_start_at = excluded.subscription_start_at,
      subscription_end_at = excluded.subscription_end_at,
      updated_at = now()
    returning *
  `,
} as const;


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-asset-sql.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-audit-sql.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-audit-sql.ts

export const STATICART_AUDIT_SQL = {
  insertAuditEvent: `
    insert into staticart.asset_audit_event (
      audit_event_id,
      asset_id,
      user_id,
      event_type,
      from_state,
      to_state,
      reason_code,
      external_ref,
      detail_json,
      created_at
    ) values (
      $1, $2, $3, $4, $5, $6, $7, $8, $9::jsonb, now()
    )
    returning *
  `,
} as const;


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-audit-sql.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-entitlement-resolution-sql.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-entitlement-resolution-sql.ts

export const STATICART_ENTITLEMENT_RESOLUTION_SQL = {
  selectEntitlementResolutionInputs: `
    select
      uae.user_id,
      uae.asset_id,
      uae.has_owned_permanent,
      uae.has_subscription_access,
      uae.sample_available,
      (uae.effective_entitlement_state = 'blocked_by_region') as blocked_by_region,
      (uae.effective_entitlement_state = 'blocked_by_age_policy') as blocked_by_age_policy,
      (uae.effective_entitlement_state = 'blocked_by_rights_change') as blocked_by_rights_change,
      uae.computed_at
    from staticart.user_asset_entitlement uae
    where uae.asset_id = $1
      and uae.user_id = $2
  `,
  upsertEntitlementSnapshotSkeleton: `
    -- phase 4 actual entitlement recompute persistence binds here
    select
      $1::uuid as user_id,
      $2::uuid as asset_id,
      $3::text as effective_entitlement_state,
      now() as computed_at
  `,
} as const;


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-entitlement-resolution-sql.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-entitlement-sql.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-entitlement-sql.ts

export const STATICART_ENTITLEMENT_SQL = {
  selectEffectiveEntitlement: `
    select
      asset_id,
      effective_entitlement_state,
      has_owned_permanent,
      has_subscription_access,
      sample_available,
      blocking_reason_code,
      computed_at
    from staticart.user_asset_entitlement
    where asset_id = $1
      and user_id = $2
  `,
  upsertPurchaseGrantSkeleton: `
    -- phase 2+ actual purchase reflection logic binds here
    select
      $1::uuid as user_id,
      $2::uuid as asset_id,
      $3::text as transaction_id,
      $4::text as grant_type,
      $5::timestamptz as granted_at
  `,
  upsertSubscriptionGrantSkeleton: `
    -- phase 4 actual subscription reflection logic binds here
    select
      $1::uuid as user_id,
      $2::text as subscription_event_type,
      $3::timestamptz as effective_at
  `,
} as const;


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-entitlement-sql.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-governance-sql.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-governance-sql.ts

export const STATICART_GOVERNANCE_SQL = {
  selectLifecycleAndVersion: `
    select
      am.asset_id,
      am.current_version_no,
      am.lifecycle_state,
      am.is_current_version_visible,
      am.creator_id,
      am.publisher_id
    from staticart.asset_master am
    where am.asset_id = $1
  `,

  selectGovernedCompleteness: `
    select
      am.asset_id,
      am.current_version_no,
      exists (
        select 1
        from staticart.asset_localization al
        where al.asset_id = am.asset_id
          and al.version_no = am.current_version_no
      ) as has_localization,
      exists (
        select 1
        from staticart.asset_rights_policy arp
        where arp.asset_id = am.asset_id
          and arp.version_no = am.current_version_no
      ) as has_rights,
      exists (
        select 1
        from staticart.asset_sales_offer aso
        where aso.asset_id = am.asset_id
      ) as has_sales,
      exists (
        select 1
        from staticart.asset_subscription_rule asr
        where asr.asset_id = am.asset_id
      ) as has_subscription,
      exists (
        select 1
        from staticart.asset_file af
        where af.asset_id = am.asset_id
          and af.version_no = am.current_version_no
          and af.file_role = 'thumbnail'
      ) as has_thumbnail,
      exists (
        select 1
        from staticart.asset_file af
        where af.asset_id = am.asset_id
          and af.version_no = am.current_version_no
          and af.file_role = 'sample_file'
      ) as has_sample_file
    from staticart.asset_master am
    where am.asset_id = $1
  `,

  selectActivePendingReview: `
    select
      arr.review_request_id,
      arr.review_round_no,
      arr.review_status
    from staticart.asset_review_request arr
    where arr.asset_id = $1
      and arr.review_status = 'pending'
    order by arr.submitted_at desc
    limit 1
  `,

  insertReviewRequest: `
    insert into staticart.asset_review_request (
      review_request_id,
      asset_id,
      review_round_no,
      submitted_by,
      submitted_at,
      review_status,
      requested_review_types,
      self_check_passed
    ) values (
      $1, $2, $3, $4, now(), 'pending', $5, $6
    )
    returning *
  `,

  insertReviewDecision: `
    insert into staticart.asset_review_decision (
      review_decision_id,
      review_request_id,
      decision_by,
      decision_status,
      decision_reason_code,
      decision_comment,
      decided_at
    ) values (
      $1, $2, $3, $4, $5, $6, now()
    )
    returning *
  `,

  updateAssetLifecycleState: `
    update staticart.asset_master
    set
      lifecycle_state = $2,
      updated_at = now()
    where asset_id = $1
    returning
      asset_id,
      lifecycle_state,
      updated_at,
      current_version_no,
      is_current_version_visible
  `,

  updateAssetVisibility: `
    update staticart.asset_master
    set
      lifecycle_state = $2,
      is_current_version_visible = $3,
      updated_at = now()
    where asset_id = $1
    returning
      asset_id,
      lifecycle_state,
      is_current_version_visible,
      updated_at,
      current_version_no
  `,

  closeReviewRequest: `
    update staticart.asset_review_request
    set
      review_status = $2,
      closed_at = now()
    where review_request_id = $1
    returning *
  `,

  selectNextReviewRound: `
    select coalesce(max(review_round_no), 0) + 1 as next_round_no
    from staticart.asset_review_request
    where asset_id = $1
  `,
} as const;


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-governance-sql.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-library-projection-refresh-sql.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-library-projection-refresh-sql.ts

export const STATICART_LIBRARY_PROJECTION_REFRESH_SQL = {
  selectLibraryProjectionInputs: `
    select
      uae.user_id,
      uae.asset_id,
      uaf.asset_id is not null as favorite_state,
      urp.asset_id is not null as has_reader_progress,
      uvp.asset_id is not null as has_viewer_progress,
      (
        uae.effective_entitlement_state in (
          'owned_permanent',
          'subscription_access',
          'owned_and_subscription_access'
        )
      ) as entitlement_allows_library
    from staticart.user_asset_entitlement uae
    left join staticart.user_asset_favorite uaf
      on uaf.user_id = uae.user_id
     and uaf.asset_id = uae.asset_id
    left join staticart.user_reader_progress urp
      on urp.user_id = uae.user_id
     and urp.asset_id = uae.asset_id
    left join staticart.user_viewer_progress uvp
      on uvp.user_id = uae.user_id
     and uvp.asset_id = uae.asset_id
    where uae.user_id = $1
      and uae.asset_id = $2
  `,
  upsertLibraryProjectionSkeleton: `
    -- phase 5 actual library projection refresh persistence binds here
    select
      $1::uuid as user_id,
      $2::uuid as asset_id,
      $3::boolean as visible_in_library,
      $4::boolean as visible_in_continue_reading,
      $5::boolean as visible_in_continue_viewing,
      now() as projection_refreshed_at
  `,
} as const;


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-library-projection-refresh-sql.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-library-sql.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-library-sql.ts

export const STATICART_LIBRARY_SQL = {
  selectLibrary: `
    select
      ulp.asset_id,
      ulp.visible_in_library,
      ulp.favorite_state,
      ulp.downloadable_now,
      ulp.last_opened_at,
      am.asset_type,
      am.lifecycle_state
    from staticart.user_library_projection ulp
    join staticart.asset_master am
      on am.asset_id = ulp.asset_id
    where ulp.user_id = $1
      and ulp.visible_in_library = true
    order by ulp.last_opened_at desc nulls last
    limit $2
  `,
  selectContinueReading: `
    select
      ulp.asset_id,
      urp.current_locator,
      urp.progress_percent,
      urp.last_opened_at
    from staticart.user_library_projection ulp
    join staticart.user_reader_progress urp
      on urp.user_id = ulp.user_id
     and urp.asset_id = ulp.asset_id
    where ulp.user_id = $1
      and ulp.visible_in_continue_reading = true
    order by urp.last_opened_at desc
    limit $2
  `,
  selectContinueViewing: `
    select
      ulp.asset_id,
      uvp.current_frame_ref,
      uvp.current_page_no,
      uvp.zoom_ratio,
      uvp.last_opened_at
    from staticart.user_library_projection ulp
    join staticart.user_viewer_progress uvp
      on uvp.user_id = ulp.user_id
     and uvp.asset_id = ulp.asset_id
    where ulp.user_id = $1
      and ulp.visible_in_continue_viewing = true
    order by uvp.last_opened_at desc
    limit $2
  `,
  upsertReaderProgress: `
    insert into staticart.user_reader_progress (
      user_id,
      asset_id,
      current_locator,
      progress_percent,
      sync_version,
      last_device_type,
      last_opened_at,
      updated_at
    ) values ($1,$2,$3,$4,$5,$6,now(),now())
    on conflict (user_id, asset_id)
    do update set
      current_locator = excluded.current_locator,
      progress_percent = excluded.progress_percent,
      sync_version = excluded.sync_version,
      last_device_type = excluded.last_device_type,
      last_opened_at = now(),
      updated_at = now()
    returning *
  `,
  upsertViewerProgress: `
    insert into staticart.user_viewer_progress (
      user_id,
      asset_id,
      current_frame_ref,
      current_page_no,
      zoom_ratio,
      sync_version,
      last_device_type,
      last_opened_at,
      updated_at
    ) values ($1,$2,$3,$4,$5,$6,$7,now(),now())
    on conflict (user_id, asset_id)
    do update set
      current_frame_ref = excluded.current_frame_ref,
      current_page_no = excluded.current_page_no,
      zoom_ratio = excluded.zoom_ratio,
      sync_version = excluded.sync_version,
      last_device_type = excluded.last_device_type,
      last_opened_at = now(),
      updated_at = now()
    returning *
  `,
  addFavorite: `
    insert into staticart.user_asset_favorite (
      user_id,
      asset_id,
      created_at
    ) values ($1,$2,now())
    on conflict (user_id, asset_id)
    do nothing
  `,
  deleteFavorite: `
    delete from staticart.user_asset_favorite
    where user_id = $1
      and asset_id = $2
  `,
  insertAnnotation: `
    insert into staticart.user_asset_annotation (
      annotation_id,
      user_id,
      asset_id,
      annotation_type,
      locator,
      payload_json,
      created_at,
      updated_at
    ) values ($1,$2,$3,$4,$5,$6::jsonb,now(),now())
    returning *
  `,
} as const;


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-library-sql.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-projection-queue-sql.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-projection-queue-sql.ts

export const STATICART_PROJECTION_QUEUE_SQL = {
  enqueueProjectionRefreshSkeleton: `
    select
      $1::uuid as asset_id,
      $2::text[] as targets,
      now() as enqueued_at
  `,
  enqueueCx22073jwPublishSkeleton: `
    select
      $1::uuid as asset_id,
      $2::text as publish_scope,
      now() as enqueued_at
  `,
} as const;


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-projection-queue-sql.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-projection-sql.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-projection-sql.ts

export const STATICART_PROJECTION_SQL = {
  selectExhibitionProjection: `
    select
      asset_id,
      version_no,
      projection_status,
      usable_in_exhibition_builder,
      entitlement_state,
      exhibition_allowed,
      additional_license_required,
      price_label,
      rights_summary,
      reason_codes,
      projection_refreshed_at
    from staticart.asset_exhibition_projection
    where asset_id = $1
  `,
  enqueueProjectionRefreshSkeleton: `
    -- phase 3+ queue binding point
    select
      $1::uuid as asset_id,
      $2::text[] as targets
  `,
} as const;


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/repositories/sql/staticart-projection-sql.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/routes/assets.route.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/routes/assets.route.ts

import type {
  AssetCreateRequestDto,
  LocalizationWriteRequestDto,
  PublishActionRequestDto,
  SalesOfferWriteRequestDto,
  StateActionRequestDto,
  SubscriptionRuleWriteRequestDto,
  RightsPolicyWriteRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";
import { success } from "../core/response";
import { requireActor } from "../guards/permission-guard";
import { requireString, requireVersionToken } from "../validators/request-validators";
import { AssetService } from "../services/asset-service";

export class AssetsRoute {
  constructor(private readonly assetService: AssetService) {}

  async createAsset(meta: RequestMeta, body: AssetCreateRequestDto) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireString(body.asset_type, "asset_type");
    requireString(body.creator_id, "creator_id");
    requireString(body.initial_language_code, "initial_language_code");

    const data = await this.assetService.createDraft(body, meta);
    return success(meta.requestId, data);
  }

  async getAssetDetail(meta: RequestMeta, assetId: Uuid) {
    const data = await this.assetService.getAssetDetail(assetId);
    return success(meta.requestId, data);
  }

  async putLocalization(
    meta: RequestMeta,
    assetId: Uuid,
    languageCode: string,
    body: LocalizationWriteRequestDto,
  ) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireVersionToken(body.version_token);
    requireString(languageCode, "language_code");

    const data = await this.assetService.upsertLocalization(assetId, languageCode, body, meta);
    return success(meta.requestId, data);
  }

  async putRightsPolicy(meta: RequestMeta, assetId: Uuid, body: RightsPolicyWriteRequestDto) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.updateRightsPolicy(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async putSalesOffer(meta: RequestMeta, assetId: Uuid, body: SalesOfferWriteRequestDto) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.updateSalesOffer(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async putSubscriptionRule(
    meta: RequestMeta,
    assetId: Uuid,
    body: SubscriptionRuleWriteRequestDto,
  ) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.updateSubscriptionRule(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async runSelfCheck(meta: RequestMeta, assetId: Uuid, versionToken: string) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireVersionToken(versionToken);

    const data = await this.assetService.runSelfCheck(assetId, versionToken, meta);
    return success(meta.requestId, data);
  }

  async publishMarketplace(
    meta: RequestMeta,
    assetId: Uuid,
    body: PublishActionRequestDto,
  ) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.publishMarketplace(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async publishLibraryOnly(
    meta: RequestMeta,
    assetId: Uuid,
    body: PublishActionRequestDto,
  ) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.publishLibraryOnly(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async delist(meta: RequestMeta, assetId: Uuid, body: StateActionRequestDto) {
    requireActor(meta, ["creator_owner", "publisher_operator", "policy_admin"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.delist(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async restrict(meta: RequestMeta, assetId: Uuid, body: StateActionRequestDto) {
    requireActor(meta, ["review_admin", "policy_admin"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.restrict(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async archive(meta: RequestMeta, assetId: Uuid, body: StateActionRequestDto) {
    requireActor(meta, ["creator_owner", "publisher_operator", "policy_admin"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.archive(assetId, body, meta);
    return success(meta.requestId, data);
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/routes/assets.route.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/routes/internal.route.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/routes/internal.route.ts

import type {
  PurchaseReflectRequestDto,
  SubscriptionReflectRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";
import { success } from "../core/response";
import { requireActor } from "../guards/permission-guard";
import { EntitlementService } from "../services/entitlement-service";
import { ProjectionService } from "../services/projection-service";

export class InternalRoute {
  constructor(
    private readonly entitlementService: EntitlementService,
    private readonly projectionService: ProjectionService,
  ) {}

  async getEntitlement(meta: RequestMeta, assetId: Uuid, actorUserId: Uuid) {
    requireActor(meta, ["signed_in_user", "library_user", "support_readonly", "review_admin", "policy_admin"]);
    const data = await this.entitlementService.getEffectiveEntitlement(assetId, actorUserId);
    return success(meta.requestId, data);
  }

  async reflectPurchase(meta: RequestMeta, body: PurchaseReflectRequestDto) {
    requireActor(meta, ["internal_integration"]);
    const data = await this.entitlementService.reflectPurchase(body, meta);
    return success(meta.requestId, data);
  }

  async reflectSubscription(meta: RequestMeta, body: SubscriptionReflectRequestDto) {
    requireActor(meta, ["internal_integration"]);
    const data = await this.entitlementService.reflectSubscription(body, meta);
    return success(meta.requestId, data);
  }

  async getExhibitionProjection(meta: RequestMeta, assetId: Uuid) {
    requireActor(meta, ["exhibition_builder_reader", "review_admin", "policy_admin", "support_readonly"]);
    const data = await this.projectionService.getExhibitionProjection(assetId);
    return success(meta.requestId, data);
  }

  async refreshProjections(meta: RequestMeta, assetId: Uuid, targets: string[]) {
    requireActor(meta, ["review_admin", "policy_admin", "internal_integration"]);
    const data = await this.projectionService.enqueueProjectionRefresh(assetId, targets, meta);
    return success(meta.requestId, data);
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/routes/internal.route.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/routes/library.route.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/routes/library.route.ts

import type {
  ReaderProgressRequestDto,
  ViewerProgressRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";
import { success, successList } from "../core/response";
import { requireActor } from "../guards/permission-guard";
import { requireProgressPercent } from "../validators/request-validators";
import { LibraryService } from "../services/library-service";

export class LibraryRoute {
  constructor(private readonly libraryService: LibraryService) {}

  async getLibrary(meta: RequestMeta, actorUserId: Uuid, cursor?: string | null, limit?: number) {
    requireActor(meta, ["signed_in_user", "library_user", "creator_owner", "publisher_operator", "review_admin", "policy_admin", "support_readonly"]);
    const result = await this.libraryService.getLibrary(actorUserId, cursor, limit);
    return successList(meta.requestId, result.items, result.nextCursor);
  }

  async getContinueReading(meta: RequestMeta, actorUserId: Uuid, cursor?: string | null, limit?: number) {
    const result = await this.libraryService.getContinueReading(actorUserId, cursor, limit);
    return successList(meta.requestId, result.items, result.nextCursor);
  }

  async getContinueViewing(meta: RequestMeta, actorUserId: Uuid, cursor?: string | null, limit?: number) {
    const result = await this.libraryService.getContinueViewing(actorUserId, cursor, limit);
    return successList(meta.requestId, result.items, result.nextCursor);
  }

  async saveReaderProgress(
    meta: RequestMeta,
    assetId: Uuid,
    body: ReaderProgressRequestDto,
  ) {
    requireActor(meta, ["signed_in_user", "library_user"]);
    requireProgressPercent(body.progress_percent);
    const data = await this.libraryService.saveReaderProgress(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async saveViewerProgress(
    meta: RequestMeta,
    assetId: Uuid,
    body: ViewerProgressRequestDto,
  ) {
    requireActor(meta, ["signed_in_user", "library_user"]);
    const data = await this.libraryService.saveViewerProgress(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async addFavorite(meta: RequestMeta, assetId: Uuid) {
    requireActor(meta, ["signed_in_user", "library_user"]);
    const data = await this.libraryService.addFavorite(assetId, meta);
    return success(meta.requestId, data);
  }

  async deleteFavorite(meta: RequestMeta, assetId: Uuid) {
    requireActor(meta, ["signed_in_user", "library_user"]);
    const data = await this.libraryService.deleteFavorite(assetId, meta);
    return success(meta.requestId, data);
  }

  async createAnnotation(
    meta: RequestMeta,
    assetId: Uuid,
    body: Record<string, unknown>,
  ) {
    requireActor(meta, ["signed_in_user", "library_user"]);
    const data = await this.libraryService.createAnnotation(assetId, body, meta);
    return success(meta.requestId, data);
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/routes/library.route.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/routes/review.route.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/routes/review.route.ts

import type { ReviewDecisionRequestDto } from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";
import { success } from "../core/response";
import { requireActor } from "../guards/permission-guard";
import { AssetService } from "../services/asset-service";

export class ReviewRoute {
  constructor(private readonly assetService: AssetService) {}

  async createReviewRequest(
    meta: RequestMeta,
    assetId: Uuid,
    versionToken: string,
    requestedReviewTypes: string[],
  ) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    const data = await this.assetService.createReviewRequest(
      assetId,
      requestedReviewTypes,
      versionToken,
      meta,
    );
    return success(meta.requestId, data);
  }

  async decideReview(
    meta: RequestMeta,
    reviewRequestId: Uuid,
    body: ReviewDecisionRequestDto,
  ) {
    requireActor(meta, ["review_admin", "policy_admin"]);
    const data = await this.assetService.decideReview(reviewRequestId, body, meta);
    return success(meta.requestId, data);
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/routes/review.route.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/services/asset-service.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/services/asset-service.ts

import type {
  AssetCreateRequestDto,
  AssetSummaryDto,
  LocalizationWriteRequestDto,
  PublishActionRequestDto,
  ReviewDecisionRequestDto,
  RightsPolicyWriteRequestDto,
  SalesOfferWriteRequestDto,
  StateActionRequestDto,
  SubscriptionRuleWriteRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";

export interface AssetRepository {
  createDraft(input: AssetCreateRequestDto, meta: RequestMeta): Promise<AssetSummaryDto>;
  getDetail(assetId: Uuid): Promise<Record<string, unknown> | null>;
  upsertLocalization(
    assetId: Uuid,
    languageCode: string,
    input: LocalizationWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  updateRightsPolicy(
    assetId: Uuid,
    input: RightsPolicyWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  updateSalesOffer(
    assetId: Uuid,
    input: SalesOfferWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  updateSubscriptionRule(
    assetId: Uuid,
    input: SubscriptionRuleWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  runSelfCheck(assetId: Uuid, versionToken: string, meta: RequestMeta): Promise<Record<string, unknown>>;
  createReviewRequest(
    assetId: Uuid,
    requestedReviewTypes: string[],
    versionToken: string,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  decideReview(
    reviewRequestId: Uuid,
    input: ReviewDecisionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  publishMarketplace(
    assetId: Uuid,
    input: PublishActionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  publishLibraryOnly(
    assetId: Uuid,
    input: PublishActionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  delist(assetId: Uuid, input: StateActionRequestDto, meta: RequestMeta): Promise<Record<string, unknown>>;
  restrict(assetId: Uuid, input: StateActionRequestDto, meta: RequestMeta): Promise<Record<string, unknown>>;
  archive(assetId: Uuid, input: StateActionRequestDto, meta: RequestMeta): Promise<Record<string, unknown>>;
}

export class AssetService {
  constructor(private readonly repository: AssetRepository) {}

  async createDraft(
    input: AssetCreateRequestDto,
    meta: RequestMeta,
  ): Promise<AssetSummaryDto> {
    return this.repository.createDraft(input, meta);
  }

  async getAssetDetail(assetId: Uuid): Promise<Record<string, unknown> | null> {
    return this.repository.getDetail(assetId);
  }

  async upsertLocalization(
    assetId: Uuid,
    languageCode: string,
    input: LocalizationWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.upsertLocalization(assetId, languageCode, input, meta);
  }

  async updateRightsPolicy(
    assetId: Uuid,
    input: RightsPolicyWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.updateRightsPolicy(assetId, input, meta);
  }

  async updateSalesOffer(
    assetId: Uuid,
    input: SalesOfferWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.updateSalesOffer(assetId, input, meta);
  }

  async updateSubscriptionRule(
    assetId: Uuid,
    input: SubscriptionRuleWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.updateSubscriptionRule(assetId, input, meta);
  }

  async runSelfCheck(
    assetId: Uuid,
    versionToken: string,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.runSelfCheck(assetId, versionToken, meta);
  }

  async createReviewRequest(
    assetId: Uuid,
    requestedReviewTypes: string[],
    versionToken: string,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.createReviewRequest(assetId, requestedReviewTypes, versionToken, meta);
  }

  async decideReview(
    reviewRequestId: Uuid,
    input: ReviewDecisionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.decideReview(reviewRequestId, input, meta);
  }

  async publishMarketplace(
    assetId: Uuid,
    input: PublishActionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.publishMarketplace(assetId, input, meta);
  }

  async publishLibraryOnly(
    assetId: Uuid,
    input: PublishActionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.publishLibraryOnly(assetId, input, meta);
  }

  async delist(
    assetId: Uuid,
    input: StateActionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.delist(assetId, input, meta);
  }

  async restrict(
    assetId: Uuid,
    input: StateActionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.restrict(assetId, input, meta);
  }

  async archive(
    assetId: Uuid,
    input: StateActionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.archive(assetId, input, meta);
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/services/asset-service.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/services/entitlement-service.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/services/entitlement-service.ts

import type {
  EntitlementDto,
  PurchaseReflectRequestDto,
  SubscriptionReflectRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";

export interface EntitlementRepository {
  getEffectiveEntitlement(assetId: Uuid, actorUserId: Uuid): Promise<EntitlementDto | null>;
  reflectPurchase(input: PurchaseReflectRequestDto, meta: RequestMeta): Promise<Record<string, unknown>>;
  reflectSubscription(input: SubscriptionReflectRequestDto, meta: RequestMeta): Promise<Record<string, unknown>>;
}

export class EntitlementService {
  constructor(private readonly repository: EntitlementRepository) {}

  async getEffectiveEntitlement(
    assetId: Uuid,
    actorUserId: Uuid,
  ): Promise<EntitlementDto | null> {
    return this.repository.getEffectiveEntitlement(assetId, actorUserId);
  }

  async reflectPurchase(
    input: PurchaseReflectRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.reflectPurchase(input, meta);
  }

  async reflectSubscription(
    input: SubscriptionReflectRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.reflectSubscription(input, meta);
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/services/entitlement-service.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/services/idempotency-service.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/services/idempotency-service.ts

import { STATICART_ERROR_CODES } from "../core/error-codes";
import { StaticArtError } from "../core/errors";

export interface IdempotencyRecord {
  key: string;
  requestHash: string;
  responsePayload: unknown;
}

export interface IdempotencyRepository {
  findByKey(key: string): Promise<IdempotencyRecord | null>;
  save(record: IdempotencyRecord): Promise<void>;
}

export class IdempotencyService {
  constructor(private readonly repository: IdempotencyRepository) {}

  async checkReplayOrMismatch(
    key: string,
    requestHash: string,
  ): Promise<IdempotencyRecord | null> {
    const existing = await this.repository.findByKey(key);
    if (!existing) {
      return null;
    }

    if (existing.requestHash !== requestHash) {
      throw new StaticArtError({
        status: 409,
        code: STATICART_ERROR_CODES.STATICART_IDEMPOTENCY_REPLAY_MISMATCH,
        message: "Same idempotency key was used with a different request body.",
      });
    }

    return existing;
  }

  async saveResult(
    key: string,
    requestHash: string,
    responsePayload: unknown,
  ): Promise<void> {
    await this.repository.save({
      key,
      requestHash,
      responsePayload,
    });
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/services/idempotency-service.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/services/library-service.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/services/library-service.ts

import type {
  FavoriteResponseDto,
  ReaderProgressRequestDto,
  ViewerProgressRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";

export interface LibraryRepository {
  getLibrary(actorUserId: Uuid, cursor?: string | null, limit?: number): Promise<{ items: Record<string, unknown>[]; nextCursor: string | null }>;
  getContinueReading(actorUserId: Uuid, cursor?: string | null, limit?: number): Promise<{ items: Record<string, unknown>[]; nextCursor: string | null }>;
  getContinueViewing(actorUserId: Uuid, cursor?: string | null, limit?: number): Promise<{ items: Record<string, unknown>[]; nextCursor: string | null }>;
  saveReaderProgress(assetId: Uuid, input: ReaderProgressRequestDto, meta: RequestMeta): Promise<Record<string, unknown>>;
  saveViewerProgress(assetId: Uuid, input: ViewerProgressRequestDto, meta: RequestMeta): Promise<Record<string, unknown>>;
  addFavorite(assetId: Uuid, meta: RequestMeta): Promise<FavoriteResponseDto>;
  deleteFavorite(assetId: Uuid, meta: RequestMeta): Promise<FavoriteResponseDto>;
  createAnnotation(assetId: Uuid, input: Record<string, unknown>, meta: RequestMeta): Promise<Record<string, unknown>>;
}

export class LibraryService {
  constructor(private readonly repository: LibraryRepository) {}

  async getLibrary(actorUserId: Uuid, cursor?: string | null, limit?: number) {
    return this.repository.getLibrary(actorUserId, cursor, limit);
  }

  async getContinueReading(actorUserId: Uuid, cursor?: string | null, limit?: number) {
    return this.repository.getContinueReading(actorUserId, cursor, limit);
  }

  async getContinueViewing(actorUserId: Uuid, cursor?: string | null, limit?: number) {
    return this.repository.getContinueViewing(actorUserId, cursor, limit);
  }

  async saveReaderProgress(assetId: Uuid, input: ReaderProgressRequestDto, meta: RequestMeta) {
    return this.repository.saveReaderProgress(assetId, input, meta);
  }

  async saveViewerProgress(assetId: Uuid, input: ViewerProgressRequestDto, meta: RequestMeta) {
    return this.repository.saveViewerProgress(assetId, input, meta);
  }

  async addFavorite(assetId: Uuid, meta: RequestMeta) {
    return this.repository.addFavorite(assetId, meta);
  }

  async deleteFavorite(assetId: Uuid, meta: RequestMeta) {
    return this.repository.deleteFavorite(assetId, meta);
  }

  async createAnnotation(assetId: Uuid, input: Record<string, unknown>, meta: RequestMeta) {
    return this.repository.createAnnotation(assetId, input, meta);
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/services/library-service.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/services/projection-service.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/services/projection-service.ts

import type { RequestMeta, Uuid } from "../contracts/types";

export interface ProjectionRepository {
  getExhibitionProjection(assetId: Uuid): Promise<Record<string, unknown> | null>;
  enqueueProjectionRefresh(assetId: Uuid, targets: string[], meta: RequestMeta): Promise<Record<string, unknown>>;
}

export class ProjectionService {
  constructor(private readonly repository: ProjectionRepository) {}

  async getExhibitionProjection(assetId: Uuid): Promise<Record<string, unknown> | null> {
    return this.repository.getExhibitionProjection(assetId);
  }

  async enqueueProjectionRefresh(
    assetId: Uuid,
    targets: string[],
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.enqueueProjectionRefresh(assetId, targets, meta);
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/services/projection-service.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/validators/request-validators.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/validators/request-validators.ts

import { STATICART_ERROR_CODES } from "../core/error-codes";
import { StaticArtError } from "../core/errors";

function badRequest(
  message: string,
  details?: Record<string, unknown>,
): never {
  throw new StaticArtError({
    status: 400,
    code: STATICART_ERROR_CODES.STATICART_VALIDATION_ERROR,
    message,
    details,
  });
}

export function requireString(value: unknown, fieldName: string): void {
  if (typeof value !== "string" || value.trim() === "") {
    badRequest(`${fieldName} must be a non-empty string.`, { fieldName });
  }
}

export function requireBoolean(value: unknown, fieldName: string): void {
  if (typeof value !== "boolean") {
    badRequest(`${fieldName} must be a boolean.`, { fieldName });
  }
}

export function requireNumber(value: unknown, fieldName: string): void {
  if (typeof value !== "number" || Number.isNaN(value)) {
    badRequest(`${fieldName} must be a number.`, { fieldName });
  }
}

export function requireArray(value: unknown, fieldName: string): void {
  if (!Array.isArray(value)) {
    badRequest(`${fieldName} must be an array.`, { fieldName });
  }
}

export function requireVersionToken(value: unknown): void {
  requireString(value, "version_token");
}

export function requireIdempotencyKey(value: unknown): void {
  requireString(value, "Idempotency-Key");
}

export function requireProgressPercent(value: unknown): void {
  requireNumber(value, "progress_percent");
  if ((value as number) < 0 || (value as number) > 100) {
    badRequest("progress_percent must be between 0 and 100.", {
      progress_percent: value,
    });
  }
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api/validators/request-validators.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123100_STATIC_ART_OS_UI_IMPLEMENTATION_PREP_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123100_STATIC_ART_OS_UI_IMPLEMENTATION_PREP_INDEX.md

# ============================================================
# STATIC ART OS UI IMPLEMENTATION PREP INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

files:
  - 123110_STATIC_ART_OS_SCREEN_IMPLEMENTATION_LEDGER.md
  - 123120_STATIC_ART_OS_COMPONENT_BOUNDARY_SKELETON.md
  - 123130_STATIC_ART_OS_BUTTON_STATE_MATRIX.md
  - 123140_STATIC_ART_OS_LOADING_EMPTY_ERROR_FORBIDDEN_MATRIX.md

objective:
  - Turn screen exactness into implementation-sized UI units
  - Freeze button activation conditions
  - Freeze common state handling


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123100_STATIC_ART_OS_UI_IMPLEMENTATION_PREP_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123110_STATIC_ART_OS_SCREEN_IMPLEMENTATION_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123110_STATIC_ART_OS_SCREEN_IMPLEMENTATION_LEDGER.md

# ============================================================
# STATIC ART OS SCREEN IMPLEMENTATION LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

screen_groups:
  creator:
    - SA-CR-001 Asset Draft List
    - SA-CR-010 Create Asset
    - SA-CR-020 Asset Workspace
  marketplace:
    - SA-MK-001 Marketplace List
    - SA-MK-010 Product Detail
    - SA-MK-020 Purchase Result Overlay
  library:
    - SA-LB-001 My Library
    - SA-LB-010 Continue Reading
    - SA-LB-020 Continue Viewing
    - SA-RD-001 Reader
    - SA-RD-010 Reader Bookmark/Note Panel
    - SA-VW-001 Viewer
  admin:
    - SA-AD-001 Review Queue
    - SA-AD-010 Review Detail
    - SA-AD-020 Restriction/Delist/Audit Detail

screen_task_template:
  required_fields:
    - screen id
    - purpose
    - route
    - required api endpoints
    - required data model
    - primary actions
    - button states
    - loading/empty/error/forbidden states
    - asset_type split
    - entry and exit transitions

implementation_priority:
  - Asset Draft List
  - Create Asset
  - Asset Workspace Files/Metadata/Rights/Self Check/Review/Publish
  - Marketplace List and Product Detail
  - My Library
  - Reader and Viewer
  - Review Queue and Review Detail


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123110_STATIC_ART_OS_SCREEN_IMPLEMENTATION_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123120_STATIC_ART_OS_COMPONENT_BOUNDARY_SKELETON.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123120_STATIC_ART_OS_COMPONENT_BOUNDARY_SKELETON.md

# ============================================================
# STATIC ART OS COMPONENT BOUNDARY SKELETON
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

creator_components:
  - AssetSummaryRail
  - AssetWorkspaceTabNav
  - FileRoleRequirementPanel
  - LocalizationEditor
  - CategoryTagEditor
  - SamplePreviewPanel
  - RightsImpactPreview
  - SalesOfferEditor
  - SubscriptionRuleEditor
  - SelfCheckIssuePanel
  - ReviewTimelinePanel
  - PublishReadinessPanel
  - AuditSummaryPanel

marketplace_components:
  - MarketplaceSearchBar
  - MarketplaceFilterPanel
  - ProductCard
  - ProductHero
  - AllowedActionsPanel
  - PurchaseResultOverlay

library_components:
  - LibraryShelfTabs
  - ContinueReadingCard
  - ContinueViewingCard
  - ReaderToolbar
  - ReaderProgressBar
  - ReaderAnnotationPanel
  - ViewerToolbar
  - ViewerPageStrip
  - ViewerZoomControl

admin_components:
  - ReviewQueueTable
  - ReviewRiskBadge
  - ReviewDetailDecisionPanel
  - RestrictionImpactPanel
  - AuditTrailTimeline

rules:
  - publishing and visual viewers must not be collapsed into one continuity state component
  - allowed_actions must be the UI truth source on product detail
  - common error and loading shells should be reused across screens


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123120_STATIC_ART_OS_COMPONENT_BOUNDARY_SKELETON.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123130_STATIC_ART_OS_BUTTON_STATE_MATRIX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123130_STATIC_ART_OS_BUTTON_STATE_MATRIX.md

# ============================================================
# STATIC ART OS BUTTON STATE MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

buttons:
  review_submit:
    enabled_if:
      - lifecycle_state=self_check_passed
      - no pending review
      - required files complete
      - localization exists
      - rights configured

  publish_marketplace:
    enabled_if:
      - lifecycle_state=approved
      - required publish files ready
      - metadata complete
      - rights configured
      - sales valid
      - not restricted

  publish_library_only:
    enabled_if:
      - lifecycle_state=approved
      - required publish files ready
      - metadata complete
      - rights configured

  full_open:
    enabled_if:
      - effective entitlement is full-access type
      - lifecycle is publish-visible
      - no region block
      - no age block
      - no rights-change block
      - not restricted

  favorite_toggle:
    enabled_if:
      - signed in
      - detail visible

  self_check_run:
    enabled_if:
      - asset draft exists
      - required governed inputs can be evaluated

ui_rule:
  - disabled buttons must show reason text where applicable


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123130_STATIC_ART_OS_BUTTON_STATE_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123140_STATIC_ART_OS_LOADING_EMPTY_ERROR_FORBIDDEN_MATRIX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123140_STATIC_ART_OS_LOADING_EMPTY_ERROR_FORBIDDEN_MATRIX.md

# ============================================================
# STATIC ART OS LOADING EMPTY ERROR FORBIDDEN MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

common_state_requirements:
  every_screen:
    - loading
    - empty
    - error
    - forbidden_or_read_only

state_rules:
  loading:
    - show skeleton or safe placeholder
    - disable primary destructive actions
  empty:
    - explain why no data exists
    - show next action CTA when meaningful
  error:
    - show retry
    - keep request_id visible where useful
  forbidden:
    - prefer read-only shell where partial visibility is allowed
    - show hard 403 screen where no visibility is allowed

important_cases:
  - product detail blocked by region
  - product detail blocked by age
  - library empty
  - review queue empty
  - creator workspace conflict on stale version_token


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123140_STATIC_ART_OS_LOADING_EMPTY_ERROR_FORBIDDEN_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123150_STATIC_ART_OS_UI_SOURCE_SKELETON_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123150_STATIC_ART_OS_UI_SOURCE_SKELETON_INDEX.md

# ============================================================
# STATIC ART OS UI SOURCE SKELETON INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
This file defines the initial UI source skeleton layout for
StaticArtOS implementation.

source_root:
  - 123.ui-implementation-prep/source-skeleton/staticart-ui

main_units:
  - contracts
  - navigation
  - state
  - components/common
  - components/creator
  - components/marketplace
  - components/library
  - components/admin
  - screens/creator
  - screens/marketplace
  - screens/library
  - screens/admin

implementation_objective:
  - Freeze screen/component/state boundaries
  - Keep creator / marketplace / library / admin separated
  - Keep loading / empty / error / forbidden reusable
  - Keep reader continuity and viewer continuity separated

important_rules:
  - Screen files do not embed transport or storage logic
  - Components do not fetch canonical data directly
  - State decides loading/error/forbidden rendering
  - Product detail uses allowed_actions as UI truth source
  - Reader and Viewer remain separate surfaces


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123150_STATIC_ART_OS_UI_SOURCE_SKELETON_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123_OVERVIEW.md

# ============================================================
# UI IMPLEMENTATION PREP OVERVIEW
# ============================================================

status: active
system: StaticArtOS
folder: 123.ui-implementation-prep
owner: Boss
prepared_by: Zero

summary:
- This folder belongs to StaticArtOS standalone implementation-prep flow.
- This overview was repair-generated because OVERVIEW was missing.
- Detailed semantics should continue to live in the canonical files already placed under this folder.

notes:
- Non-destructive generation only.
- Existing files were not overwritten.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/README.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/README.md

# StaticArtOS UI Source Skeleton

This directory is the framework-light UI source skeleton for StaticArtOS.

## Intent

- freeze screen boundaries
- freeze reusable component boundaries
- freeze UI state handling
- preserve creator / marketplace / library / admin separation

## Directory rules

- `screens/` compose route-level UI
- `components/` contain reusable presentation pieces
- `state/` contains view-state helpers only
- `contracts/` contains shared UI view-model types
- `navigation/` contains canonical route mapping

## Important

- do not fetch canonical data directly inside presentational components
- do not merge Reader and Viewer into one continuity surface
- use allowed_actions as product detail truth source
- keep loading / empty / error / forbidden reusable


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/README.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/admin/ReviewDecisionPanel.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/admin/ReviewDecisionPanel.tsx

import { ActionButton } from "../common/ActionButton";

export interface ReviewDecisionPanelProps {
  approveEnabled: boolean;
  rejectEnabled: boolean;
  reworkEnabled: boolean;
  restrictEnabled: boolean;
}

export function ReviewDecisionPanel(props: ReviewDecisionPanelProps) {
  return (
    <section>
      <ActionButton
        label="Approve"
        state={{ enabled: props.approveEnabled, reasonText: null }}
      />
      <ActionButton
        label="Reject"
        state={{ enabled: props.rejectEnabled, reasonText: null }}
      />
      <ActionButton
        label="Rework"
        state={{ enabled: props.reworkEnabled, reasonText: null }}
      />
      <ActionButton
        label="Restrict"
        state={{ enabled: props.restrictEnabled, reasonText: null }}
      />
    </section>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/admin/ReviewDecisionPanel.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/common/ActionButton.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/common/ActionButton.tsx

import type { ButtonStateViewModel } from "../../contracts/ui-types";

export interface ActionButtonProps {
  label: string;
  state: ButtonStateViewModel;
  onClick?: () => void;
}

export function ActionButton(props: ActionButtonProps) {
  const { label, state, onClick } = props;

  return (
    <div>
      <button disabled={!state.enabled} onClick={onClick}>
        {label}
      </button>
      {!state.enabled && state.reasonText ? <p>{state.reasonText}</p> : null}
    </div>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/common/ActionButton.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/common/ScreenShell.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/common/ScreenShell.tsx

import type { PropsWithChildren } from "react";
import type { ScreenShellState } from "../../contracts/ui-types";
import { StatePanel } from "./StatePanel";

export interface ScreenShellProps extends PropsWithChildren {
  shell: ScreenShellState;
}

export function ScreenShell(props: ScreenShellProps) {
  const { shell, children } = props;

  return (
    <div>
      <header>
        <h1>{shell.title}</h1>
        {shell.subtitle ? <p>{shell.subtitle}</p> : null}
      </header>

      {shell.loadState !== "ready" ? (
        <StatePanel
          state={shell.loadState}
          errorMessage={shell.errorMessage}
          forbiddenReason={shell.forbiddenReason}
        />
      ) : (
        <main>{children}</main>
      )}
    </div>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/common/ScreenShell.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/common/StatePanel.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/common/StatePanel.tsx

import type { UiLoadState } from "../../contracts/ui-types";

export interface StatePanelProps {
  state: UiLoadState;
  errorMessage?: string | null;
  forbiddenReason?: string | null;
}

export function StatePanel(props: StatePanelProps) {
  const { state, errorMessage, forbiddenReason } = props;

  if (state === "loading") {
    return <section>Loading...</section>;
  }

  if (state === "empty") {
    return <section>No data available.</section>;
  }

  if (state === "error") {
    return <section>{errorMessage ?? "Unexpected error."}</section>;
  }

  if (state === "forbidden") {
    return <section>{forbiddenReason ?? "Forbidden."}</section>;
  }

  return <section>Idle.</section>;
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/common/StatePanel.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/creator/AssetSummaryRail.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/creator/AssetSummaryRail.tsx

import type { AssetSummaryViewModel } from "../../contracts/ui-types";

export interface AssetSummaryRailProps {
  asset: AssetSummaryViewModel;
}

export function AssetSummaryRail(props: AssetSummaryRailProps) {
  const { asset } = props;

  return (
    <section>
      <h2>{asset.title}</h2>
      <p>{asset.assetType}</p>
      <p>{asset.lifecycleState}</p>
      {asset.reviewStatus ? <p>{asset.reviewStatus}</p> : null}
      {asset.salesState ? <p>{asset.salesState}</p> : null}
      {asset.subscriptionState ? <p>{asset.subscriptionState}</p> : null}
    </section>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/creator/AssetSummaryRail.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/creator/WorkspaceTabNav.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/creator/WorkspaceTabNav.tsx

import type { CreatorWorkspaceState } from "../../contracts/ui-types";

export interface WorkspaceTabNavProps {
  workspace: CreatorWorkspaceState;
  onSelectTab?: (tab: CreatorWorkspaceState["selectedTab"]) => void;
}

const TABS: CreatorWorkspaceState["selectedTab"][] = [
  "files",
  "metadata",
  "preview",
  "rights",
  "sales",
  "subscription",
  "self_check",
  "review",
  "publish",
  "audit",
];

export function WorkspaceTabNav(props: WorkspaceTabNavProps) {
  const { workspace, onSelectTab } = props;

  return (
    <nav>
      {TABS.map((tab) => (
        <button
          key={tab}
          aria-pressed={workspace.selectedTab === tab}
          onClick={() => onSelectTab?.(tab)}
        >
          {tab}
        </button>
      ))}
    </nav>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/creator/WorkspaceTabNav.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/library/LibraryShelf.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/library/LibraryShelf.tsx

import type { AssetSummaryViewModel } from "../../contracts/ui-types";

export interface LibraryShelfProps {
  title: string;
  items: AssetSummaryViewModel[];
}

export function LibraryShelf(props: LibraryShelfProps) {
  const { title, items } = props;

  return (
    <section>
      <h2>{title}</h2>
      <ul>
        {items.map((item) => (
          <li key={item.assetId}>
            <strong>{item.title}</strong>
            <span>{item.assetType}</span>
          </li>
        ))}
      </ul>
    </section>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/library/LibraryShelf.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/library/ReaderToolbar.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/library/ReaderToolbar.tsx

export function ReaderToolbar() {
  return (
    <header>
      <button>Close</button>
      <button>Chapters</button>
      <button>Bookmark</button>
      <button>Note</button>
      <button>Layout</button>
    </header>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/library/ReaderToolbar.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/library/ViewerToolbar.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/library/ViewerToolbar.tsx

export function ViewerToolbar() {
  return (
    <header>
      <button>Close</button>
      <button>Prev</button>
      <button>Next</button>
      <button>Zoom In</button>
      <button>Zoom Out</button>
      <button>Fit</button>
      <button>Full Screen</button>
    </header>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/library/ViewerToolbar.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/marketplace/AllowedActionsPanel.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/marketplace/AllowedActionsPanel.tsx

import type { AllowedActionsViewModel, ButtonStateViewModel } from "../../contracts/ui-types";
import { ActionButton } from "../common/ActionButton";

export interface AllowedActionsPanelProps {
  allowed: AllowedActionsViewModel;
  fullOpenState: ButtonStateViewModel;
  favoriteState: ButtonStateViewModel;
}

export function AllowedActionsPanel(props: AllowedActionsPanelProps) {
  const { allowed, fullOpenState, favoriteState } = props;

  return (
    <section>
      {allowed.sampleOpen ? <button>Open Sample</button> : null}
      {allowed.purchase ? <button>Purchase</button> : null}
      {allowed.subscriptionOpen ? <button>Open With Subscription</button> : null}
      <ActionButton label="Full Open" state={fullOpenState} />
      {allowed.favoriteToggle ? (
        <ActionButton label="Favorite" state={favoriteState} />
      ) : null}
    </section>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/marketplace/AllowedActionsPanel.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/marketplace/ProductCard.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/marketplace/ProductCard.tsx

import type { AssetSummaryViewModel } from "../../contracts/ui-types";

export interface ProductCardProps {
  asset: AssetSummaryViewModel;
  onOpen?: (assetId: string) => void;
}

export function ProductCard(props: ProductCardProps) {
  const { asset, onOpen } = props;

  return (
    <article>
      <h3>{asset.title}</h3>
      <p>{asset.assetType}</p>
      <p>{asset.lifecycleState}</p>
      <button onClick={() => onOpen?.(asset.assetId)}>Open</button>
    </article>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/components/marketplace/ProductCard.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/contracts/ui-types.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/contracts/ui-types.ts

export type ScreenId =
  | "SA-CR-001"
  | "SA-CR-010"
  | "SA-CR-020"
  | "SA-MK-001"
  | "SA-MK-010"
  | "SA-MK-020"
  | "SA-LB-001"
  | "SA-LB-010"
  | "SA-LB-020"
  | "SA-RD-001"
  | "SA-RD-010"
  | "SA-VW-001"
  | "SA-AD-001"
  | "SA-AD-010"
  | "SA-AD-020";

export type UiLoadState =
  | "idle"
  | "loading"
  | "ready"
  | "empty"
  | "error"
  | "forbidden";

export type AssetFamily =
  | "publishing"
  | "visual";

export type LifecycleState =
  | "draft"
  | "files_uploaded"
  | "metadata_completed"
  | "self_check_passed"
  | "review_pending"
  | "approved"
  | "rejected"
  | "published_marketplace"
  | "published_library_only"
  | "delisted"
  | "restricted"
  | "replaced"
  | "archived";

export type EntitlementState =
  | "none"
  | "sample_only"
  | "subscription_access"
  | "owned_permanent"
  | "owned_and_subscription_access"
  | "blocked_by_region"
  | "blocked_by_age_policy"
  | "blocked_by_rights_change";

export interface ScreenShellState {
  title: string;
  subtitle?: string | null;
  loadState: UiLoadState;
  errorMessage?: string | null;
  forbiddenReason?: string | null;
}

export interface AssetSummaryViewModel {
  assetId: string;
  title: string;
  assetType: string;
  assetFamily: AssetFamily;
  thumbnailUrl?: string | null;
  lifecycleState: LifecycleState;
  entitlementState?: EntitlementState | null;
  reviewStatus?: string | null;
  salesState?: string | null;
  subscriptionState?: string | null;
  favoriteState?: boolean;
  lastOpenedAt?: string | null;
}

export interface AllowedActionsViewModel {
  sampleOpen: boolean;
  purchase: boolean;
  subscriptionOpen: boolean;
  fullOpen: boolean;
  favoriteToggle: boolean;
}

export interface ButtonStateViewModel {
  enabled: boolean;
  reasonText?: string | null;
}

export interface CreatorWorkspaceState {
  selectedTab:
    | "files"
    | "metadata"
    | "preview"
    | "rights"
    | "sales"
    | "subscription"
    | "self_check"
    | "review"
    | "publish"
    | "audit";
  asset: AssetSummaryViewModel;
  reviewSubmit: ButtonStateViewModel;
  publishMarketplace: ButtonStateViewModel;
  publishLibraryOnly: ButtonStateViewModel;
}

export interface LibraryListState {
  items: AssetSummaryViewModel[];
  nextCursor?: string | null;
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/contracts/ui-types.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/navigation/staticart-ui-routes.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/navigation/staticart-ui-routes.ts

import type { ScreenId } from "../contracts/ui-types";

export interface StaticArtRouteDefinition {
  screenId: ScreenId;
  routePath: string;
  description: string;
}

export const STATICART_UI_ROUTES: StaticArtRouteDefinition[] = [
  {
    screenId: "SA-CR-001",
    routePath: "/creator/assets",
    description: "Asset Draft List",
  },
  {
    screenId: "SA-CR-010",
    routePath: "/creator/assets/new",
    description: "Create Asset",
  },
  {
    screenId: "SA-CR-020",
    routePath: "/creator/assets/:assetId",
    description: "Asset Workspace",
  },
  {
    screenId: "SA-MK-001",
    routePath: "/marketplace/staticart",
    description: "Marketplace List",
  },
  {
    screenId: "SA-MK-010",
    routePath: "/marketplace/staticart/:assetId",
    description: "Product Detail",
  },
  {
    screenId: "SA-MK-020",
    routePath: "/marketplace/staticart/:assetId/purchase-result",
    description: "Purchase Result Overlay",
  },
  {
    screenId: "SA-LB-001",
    routePath: "/library/staticart",
    description: "My Library",
  },
  {
    screenId: "SA-LB-010",
    routePath: "/library/staticart/continue-reading",
    description: "Continue Reading",
  },
  {
    screenId: "SA-LB-020",
    routePath: "/library/staticart/continue-viewing",
    description: "Continue Viewing",
  },
  {
    screenId: "SA-RD-001",
    routePath: "/reader/staticart/:assetId",
    description: "Reader",
  },
  {
    screenId: "SA-RD-010",
    routePath: "/reader/staticart/:assetId/annotations",
    description: "Reader Bookmark Note Panel",
  },
  {
    screenId: "SA-VW-001",
    routePath: "/viewer/staticart/:assetId",
    description: "Viewer",
  },
  {
    screenId: "SA-AD-001",
    routePath: "/admin/staticart/review-queue",
    description: "Review Queue",
  },
  {
    screenId: "SA-AD-010",
    routePath: "/admin/staticart/review/:reviewRequestId",
    description: "Review Detail",
  },
  {
    screenId: "SA-AD-020",
    routePath: "/admin/staticart/audit/:assetId",
    description: "Restriction Delist Audit Detail",
  },
];


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/navigation/staticart-ui-routes.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/admin/AuditDetailScreen.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/admin/AuditDetailScreen.tsx

import { ScreenShell } from "../../components/common/ScreenShell";

export function AuditDetailScreen() {
  return (
    <ScreenShell
      shell={{
        title: "Restriction Delist Audit Detail",
        loadState: "ready",
      }}
    >
      <section>
        <p>Current lifecycle state</p>
        <p>Blocking effects</p>
        <p>Reason code timeline</p>
        <p>Projection refresh result</p>
      </section>
    </ScreenShell>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/admin/AuditDetailScreen.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/admin/ReviewDetailScreen.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/admin/ReviewDetailScreen.tsx

import { ScreenShell } from "../../components/common/ScreenShell";
import { ReviewDecisionPanel } from "../../components/admin/ReviewDecisionPanel";

export function ReviewDetailScreen() {
  return (
    <ScreenShell
      shell={{
        title: "Review Detail",
        loadState: "ready",
      }}
    >
      <section>
        <p>Asset summary area</p>
        <p>File readiness area</p>
        <p>Rights and policy area</p>
      </section>

      <ReviewDecisionPanel
        approveEnabled={true}
        rejectEnabled={true}
        reworkEnabled={true}
        restrictEnabled={true}
      />
    </ScreenShell>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/admin/ReviewDetailScreen.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/admin/ReviewQueueScreen.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/admin/ReviewQueueScreen.tsx

import type { AssetSummaryViewModel } from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { ProductCard } from "../../components/marketplace/ProductCard";

export interface ReviewQueueScreenProps {
  items: AssetSummaryViewModel[];
}

export function ReviewQueueScreen(props: ReviewQueueScreenProps) {
  return (
    <ScreenShell
      shell={{
        title: "Review Queue",
        loadState: props.items.length === 0 ? "empty" : "ready",
      }}
    >
      <section>
        {props.items.map((item) => (
          <ProductCard key={item.assetId} asset={item} />
        ))}
      </section>
    </ScreenShell>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/admin/ReviewQueueScreen.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/creator/AssetDraftListScreen.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/creator/AssetDraftListScreen.tsx

import type { AssetSummaryViewModel } from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { ProductCard } from "../../components/marketplace/ProductCard";

export interface AssetDraftListScreenProps {
  items: AssetSummaryViewModel[];
}

export function AssetDraftListScreen(props: AssetDraftListScreenProps) {
  return (
    <ScreenShell
      shell={{
        title: "Asset Draft List",
        loadState: props.items.length === 0 ? "empty" : "ready",
      }}
    >
      <section>
        {props.items.map((item) => (
          <ProductCard key={item.assetId} asset={item} />
        ))}
      </section>
    </ScreenShell>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/creator/AssetDraftListScreen.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/creator/AssetWorkspaceScreen.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/creator/AssetWorkspaceScreen.tsx

import type { CreatorWorkspaceState } from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { ActionButton } from "../../components/common/ActionButton";
import { AssetSummaryRail } from "../../components/creator/AssetSummaryRail";
import { WorkspaceTabNav } from "../../components/creator/WorkspaceTabNav";

export interface AssetWorkspaceScreenProps {
  workspace: CreatorWorkspaceState;
}

export function AssetWorkspaceScreen(props: AssetWorkspaceScreenProps) {
  const { workspace } = props;

  return (
    <ScreenShell
      shell={{
        title: "Asset Workspace",
        subtitle: workspace.asset.title,
        loadState: "ready",
      }}
    >
      <AssetSummaryRail asset={workspace.asset} />
      <WorkspaceTabNav workspace={workspace} />
      <section>
        <p>Selected Tab: {workspace.selectedTab}</p>
        <ActionButton label="Submit Review" state={workspace.reviewSubmit} />
        <ActionButton
          label="Publish Marketplace"
          state={workspace.publishMarketplace}
        />
        <ActionButton
          label="Publish Library Only"
          state={workspace.publishLibraryOnly}
        />
      </section>
    </ScreenShell>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/creator/AssetWorkspaceScreen.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/creator/CreateAssetScreen.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/creator/CreateAssetScreen.tsx

import { ScreenShell } from "../../components/common/ScreenShell";

export function CreateAssetScreen() {
  return (
    <ScreenShell
      shell={{
        title: "Create Asset",
        loadState: "ready",
      }}
    >
      <form>
        <label>
          Asset Type
          <input name="asset_type" />
        </label>
        <label>
          Initial Language
          <input name="initial_language_code" />
        </label>
        <label>
          Publisher Id
          <input name="publisher_id" />
        </label>
        <button type="submit">Create</button>
      </form>
    </ScreenShell>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/creator/CreateAssetScreen.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/ContinueReadingScreen.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/ContinueReadingScreen.tsx

import type { AssetSummaryViewModel } from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { LibraryShelf } from "../../components/library/LibraryShelf";

export interface ContinueReadingScreenProps {
  items: AssetSummaryViewModel[];
}

export function ContinueReadingScreen(props: ContinueReadingScreenProps) {
  return (
    <ScreenShell
      shell={{
        title: "Continue Reading",
        loadState: props.items.length === 0 ? "empty" : "ready",
      }}
    >
      <LibraryShelf title="Continue Reading" items={props.items} />
    </ScreenShell>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/ContinueReadingScreen.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/ContinueViewingScreen.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/ContinueViewingScreen.tsx

import type { AssetSummaryViewModel } from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { LibraryShelf } from "../../components/library/LibraryShelf";

export interface ContinueViewingScreenProps {
  items: AssetSummaryViewModel[];
}

export function ContinueViewingScreen(props: ContinueViewingScreenProps) {
  return (
    <ScreenShell
      shell={{
        title: "Continue Viewing",
        loadState: props.items.length === 0 ? "empty" : "ready",
      }}
    >
      <LibraryShelf title="Continue Viewing" items={props.items} />
    </ScreenShell>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/ContinueViewingScreen.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/MyLibraryScreen.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/MyLibraryScreen.tsx

import type { AssetSummaryViewModel } from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { LibraryShelf } from "../../components/library/LibraryShelf";

export interface MyLibraryScreenProps {
  items: AssetSummaryViewModel[];
}

export function MyLibraryScreen(props: MyLibraryScreenProps) {
  return (
    <ScreenShell
      shell={{
        title: "My Library",
        loadState: props.items.length === 0 ? "empty" : "ready",
      }}
    >
      <LibraryShelf title="All" items={props.items} />
    </ScreenShell>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/MyLibraryScreen.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/ReaderAnnotationPanelScreen.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/ReaderAnnotationPanelScreen.tsx

import { ScreenShell } from "../../components/common/ScreenShell";

export function ReaderAnnotationPanelScreen() {
  return (
    <ScreenShell
      shell={{
        title: "Reader Annotation Panel",
        loadState: "ready",
      }}
    >
      <section>
        <p>Bookmark list</p>
        <p>Note list</p>
        <p>Highlight list</p>
      </section>
    </ScreenShell>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/ReaderAnnotationPanelScreen.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/ReaderScreen.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/ReaderScreen.tsx

import { ScreenShell } from "../../components/common/ScreenShell";
import { ReaderToolbar } from "../../components/library/ReaderToolbar";

export function ReaderScreen() {
  return (
    <ScreenShell
      shell={{
        title: "Reader",
        loadState: "ready",
      }}
    >
      <ReaderToolbar />
      <section>
        <p>Reader body area.</p>
      </section>
    </ScreenShell>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/ReaderScreen.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/ViewerScreen.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/ViewerScreen.tsx

import { ScreenShell } from "../../components/common/ScreenShell";
import { ViewerToolbar } from "../../components/library/ViewerToolbar";

export function ViewerScreen() {
  return (
    <ScreenShell
      shell={{
        title: "Viewer",
        loadState: "ready",
      }}
    >
      <ViewerToolbar />
      <section>
        <p>Viewer canvas area.</p>
      </section>
    </ScreenShell>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/library/ViewerScreen.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/marketplace/MarketplaceListScreen.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/marketplace/MarketplaceListScreen.tsx

import type { AssetSummaryViewModel } from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { ProductCard } from "../../components/marketplace/ProductCard";

export interface MarketplaceListScreenProps {
  items: AssetSummaryViewModel[];
}

export function MarketplaceListScreen(props: MarketplaceListScreenProps) {
  return (
    <ScreenShell
      shell={{
        title: "Marketplace",
        loadState: props.items.length === 0 ? "empty" : "ready",
      }}
    >
      <section>
        {props.items.map((item) => (
          <ProductCard key={item.assetId} asset={item} />
        ))}
      </section>
    </ScreenShell>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/marketplace/MarketplaceListScreen.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/marketplace/ProductDetailScreen.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/marketplace/ProductDetailScreen.tsx

import type {
  AllowedActionsViewModel,
  AssetSummaryViewModel,
  ButtonStateViewModel,
} from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { AllowedActionsPanel } from "../../components/marketplace/AllowedActionsPanel";

export interface ProductDetailScreenProps {
  asset: AssetSummaryViewModel;
  allowedActions: AllowedActionsViewModel;
  fullOpenState: ButtonStateViewModel;
  favoriteState: ButtonStateViewModel;
}

export function ProductDetailScreen(props: ProductDetailScreenProps) {
  return (
    <ScreenShell
      shell={{
        title: props.asset.title,
        subtitle: props.asset.assetType,
        loadState: "ready",
      }}
    >
      <section>
        <p>{props.asset.lifecycleState}</p>
        <p>{props.asset.entitlementState ?? "none"}</p>
      </section>

      <AllowedActionsPanel
        allowed={props.allowedActions}
        fullOpenState={props.fullOpenState}
        favoriteState={props.favoriteState}
      />
    </ScreenShell>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/marketplace/ProductDetailScreen.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/marketplace/PurchaseResultOverlayScreen.tsx -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/marketplace/PurchaseResultOverlayScreen.tsx

import { ScreenShell } from "../../components/common/ScreenShell";

export interface PurchaseResultOverlayScreenProps {
  title: string;
}

export function PurchaseResultOverlayScreen(
  props: PurchaseResultOverlayScreenProps,
) {
  return (
    <ScreenShell
      shell={{
        title: "Purchase Result",
        subtitle: props.title,
        loadState: "ready",
      }}
    >
      <section>
        <p>Purchase succeeded.</p>
        <button>Open Now</button>
        <button>Go To My Library</button>
      </section>
    </ScreenShell>
  );
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/screens/marketplace/PurchaseResultOverlayScreen.tsx -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/state/staticart-ui-store.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/state/staticart-ui-store.ts

import type {
  AllowedActionsViewModel,
  AssetSummaryViewModel,
  ButtonStateViewModel,
  CreatorWorkspaceState,
  LibraryListState,
  UiLoadState,
} from "../contracts/ui-types";

export interface StaticArtUiStore {
  screenLoadState: UiLoadState;
  assetDetail?: AssetSummaryViewModel | null;
  allowedActions?: AllowedActionsViewModel | null;
  creatorWorkspace?: CreatorWorkspaceState | null;
  library?: LibraryListState | null;
}

export const STATICART_UI_INITIAL_STORE: StaticArtUiStore = {
  screenLoadState: "idle",
  assetDetail: null,
  allowedActions: null,
  creatorWorkspace: null,
  library: null,
};

export function createDisabledButton(reasonText: string): ButtonStateViewModel {
  return {
    enabled: false,
    reasonText,
  };
}

export function createEnabledButton(): ButtonStateViewModel {
  return {
    enabled: true,
    reasonText: null,
  };
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui/state/staticart-ui-store.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124100_STATIC_ART_OS_TEST_IMPLEMENTATION_PREP_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124100_STATIC_ART_OS_TEST_IMPLEMENTATION_PREP_INDEX.md

# ============================================================
# STATIC ART OS TEST IMPLEMENTATION PREP INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

files:
  - 124110_STATIC_ART_OS_ACCEPTANCE_CASE_EXECUTION_LEDGER.md
  - 124120_STATIC_ART_OS_FIXTURE_AND_SEED_SKELETON.md
  - 124130_STATIC_ART_OS_PERMISSION_TEST_MATRIX.md
  - 124140_STATIC_ART_OS_POLICY_AND_PROJECTION_TEST_MATRIX.md

objective:
  - Make acceptance cases executable
  - Freeze minimum seed data direction
  - Freeze permission/policy regression targets


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124100_STATIC_ART_OS_TEST_IMPLEMENTATION_PREP_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124110_STATIC_ART_OS_ACCEPTANCE_CASE_EXECUTION_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124110_STATIC_ART_OS_ACCEPTANCE_CASE_EXECUTION_LEDGER.md

# ============================================================
# STATIC ART OS ACCEPTANCE CASE EXECUTION LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

case_groups:
  lifecycle_publish:
    - AC-LC-001
    - AC-LC-002
    - AC-LC-003
    - AC-LC-004

  review_governance:
    - AC-RV-001
    - AC-RV-002
    - AC-RV-003
    - AC-RV-004

  entitlement_access:
    - AC-EN-001
    - AC-EN-002
    - AC-EN-003
    - AC-EN-004
    - AC-EN-005

  library_continuity:
    - AC-LB-001
    - AC-LB-002
    - AC-LB-003
    - AC-LB-004

  policy_blocking:
    - AC-PL-001
    - AC-PL-002
    - AC-PL-003
    - AC-PL-004

  cx_projection:
    - AC-CX-001
    - AC-CX-002
    - AC-CX-003

  audit_permission:
    - AC-AU-001
    - AC-AU-002
    - AC-AU-003
    - AC-AU-004

execution_template:
  required_fields:
    - case id
    - scenario
    - seed prerequisite
    - api steps
    - ui confirmation points
    - expected db/projection result
    - expected audit result


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124110_STATIC_ART_OS_ACCEPTANCE_CASE_EXECUTION_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124120_STATIC_ART_OS_FIXTURE_AND_SEED_SKELETON.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124120_STATIC_ART_OS_FIXTURE_AND_SEED_SKELETON.md

# ============================================================
# STATIC ART OS FIXTURE AND SEED SKELETON
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

minimum_assets:
  - one publishing draft
  - one visual draft
  - one published marketplace asset
  - one library-only asset
  - one restricted asset
  - one delisted asset

minimum_users:
  - one owned_permanent user
  - one subscription_access user
  - one owned_and_subscription_access user
  - one blocked_by_region user
  - one review_admin
  - one policy_admin
  - one support_readonly

seed_requirements:
  - at least one asset with exhibition_allowed=true
  - at least one asset with rights-change block scenario
  - at least one asset with reader progress
  - at least one asset with viewer progress
  - at least one asset with favorite without ownership


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124120_STATIC_ART_OS_FIXTURE_AND_SEED_SKELETON.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124130_STATIC_ART_OS_PERMISSION_TEST_MATRIX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124130_STATIC_ART_OS_PERMISSION_TEST_MATRIX.md

# ============================================================
# STATIC ART OS PERMISSION TEST MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

actors:
  - guest
  - signed_in_user
  - library_user
  - creator_owner
  - publisher_operator
  - review_admin
  - policy_admin
  - support_readonly
  - internal_integration
  - exhibition_builder_reader

must_test:
  - guest cannot favorite
  - signed_in_user can favorite visible detail
  - library_user can full open entitled asset
  - creator_owner cannot self-approve
  - review_admin can decide review
  - support_readonly cannot write
  - internal_integration cannot rewrite rights
  - exhibition_builder_reader cannot write canonical or projection data


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124130_STATIC_ART_OS_PERMISSION_TEST_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124140_STATIC_ART_OS_POLICY_AND_PROJECTION_TEST_MATRIX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124140_STATIC_ART_OS_POLICY_AND_PROJECTION_TEST_MATRIX.md

# ============================================================
# STATIC ART OS POLICY AND PROJECTION TEST MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

must_test:
  - region block affects full open
  - age block affects sample and full open
  - restricted state stops sample, purchase, full open
  - delisted preserves existing owner access
  - rights change produces blocked_by_rights_change without history deletion
  - publish updates cx22073jw reference areas
  - exhibition eligibility refreshes after rights change
  - projection remains derived and not canonical


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124140_STATIC_ART_OS_POLICY_AND_PROJECTION_TEST_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124150_STATIC_ART_OS_TEST_SOURCE_SKELETON_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124150_STATIC_ART_OS_TEST_SOURCE_SKELETON_INDEX.md

# ============================================================
# STATIC ART OS TEST SOURCE SKELETON INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
This file defines the initial source-skeleton layout for
StaticArtOS test implementation.

source_root:
  - 124.test-implementation-prep/source-skeleton/staticart-tests

main_units:
  - config
  - fixtures
  - api
  - policy
  - audit
  - runners

implementation_objective:
  - Turn acceptance cases into executable test entry points
  - Keep permission/policy/projection regression targets visible
  - Keep PERSONA side environment assumptions explicit

important_rules:
  - Use PERSONA_DATABASE_URL for Persona-side DB work
  - Do not treat projection data as canonical source in tests
  - Reader continuity and viewer continuity remain separate
  - Audit assertions must be included for governance actions


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124150_STATIC_ART_OS_TEST_SOURCE_SKELETON_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124160_STATIC_ART_OS_PHASE6_7_CHECK_PACK_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124160_STATIC_ART_OS_PHASE6_7_CHECK_PACK_INDEX.md

# ============================================================
# STATIC ART OS PHASE6_7 CHECK PACK INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Provides the standalone Phase 6 and Phase 7 verification pack.

scope:
  - admin/governance UI implementation presence
  - acceptance/regression source presence
  - Persona-side environment assumption check
  - final standalone readiness smoke check

files:
  - phase6-7-checks/961_staticart_phase6_7_env_check.sh
  - phase6-7-checks/962_staticart_phase6_ui_file_presence_check.sh
  - phase6-7-checks/963_staticart_phase7_test_file_presence_check.sh
  - phase6-7-checks/964_staticart_phase6_7_binding_smoke_check.sh
  - phase6-7-checks/990_staticart_phase6_7_full_check.sh


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124160_STATIC_ART_OS_PHASE6_7_CHECK_PACK_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124_OVERVIEW.md

# ============================================================
# TEST IMPLEMENTATION PREP OVERVIEW
# ============================================================

status: active
system: StaticArtOS
folder: 124.test-implementation-prep
owner: Boss
prepared_by: Zero

summary:
- This folder belongs to StaticArtOS standalone implementation-prep flow.
- This overview was repair-generated because OVERVIEW was missing.
- Detailed semantics should continue to live in the canonical files already placed under this folder.

notes:
- Non-destructive generation only.
- Existing files were not overwritten.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/final-standalone-checks/971_staticart_standalone_env_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/final-standalone-checks/971_staticart_standalone_env_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

printf '\n============================================================\n'
printf 'STATICART STANDALONE FINAL ENV CHECK\n'
printf '============================================================\n'

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

echo "OK: PERSONA_DATABASE_URL is set"

if [ -n "${DATABASE_URL:-}" ]; then
  echo "INFO: DATABASE_URL is also set"
  echo "INFO: StaticArtOS standalone final flow still uses PERSONA_DATABASE_URL only"
else
  echo "INFO: DATABASE_URL is not set"
fi


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/final-standalone-checks/971_staticart_standalone_env_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/final-standalone-checks/972_staticart_standalone_file_presence_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/final-standalone-checks/972_staticart_standalone_file_presence_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os"

printf '\n============================================================\n'
printf 'STATICART STANDALONE FINAL FILE PRESENCE CHECK\n'
printf '============================================================\n'

check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "OK  $file"
  else
    echo "NG  $file"
  fi
}

check_file "$BASE/121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh"
check_file "$BASE/122.api-implementation-prep/122170_STATIC_ART_OS_PHASE2_BINDING_TASK_LEDGER.md"
check_file "$BASE/122.api-implementation-prep/122270_STATIC_ART_OS_PHASE3_GOVERNANCE_AND_PUBLISH_TASK_LEDGER.md"
check_file "$BASE/131.implementation-roadmap/131250_STATIC_ART_OS_PHASE4_5_MASTER_LEDGER.md"
check_file "$BASE/131.implementation-roadmap/131290_STATIC_ART_OS_PHASE6_ADMIN_GOVERNANCE_UI_TASK_LEDGER.md"
check_file "$BASE/131.implementation-roadmap/131300_STATIC_ART_OS_PHASE7_ACCEPTANCE_REGRESSION_TASK_LEDGER.md"
check_file "$BASE/131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md"
check_file "$BASE/131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md"


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/final-standalone-checks/972_staticart_standalone_file_presence_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/final-standalone-checks/973_staticart_standalone_phase_runner_presence_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/final-standalone-checks/973_staticart_standalone_phase_runner_presence_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os"

printf '\n============================================================\n'
printf 'STATICART STANDALONE PHASE RUNNER PRESENCE CHECK\n'
printf '============================================================\n'

check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "OK  $file"
  else
    echo "NG  $file"
  fi
}

check_file "$BASE/121.db-implementation-prep/verification/990_staticart_phase1_full_verify.sh"
check_file "$BASE/122.api-implementation-prep/phase2-checks/990_staticart_phase2_full_check.sh"
check_file "$BASE/122.api-implementation-prep/phase3-checks/990_staticart_phase3_full_check.sh"
check_file "$BASE/122.api-implementation-prep/phase4-5-checks/990_staticart_phase4_5_full_check.sh"
check_file "$BASE/124.test-implementation-prep/phase6-7-checks/990_staticart_phase6_7_full_check.sh"


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/final-standalone-checks/973_staticart_standalone_phase_runner_presence_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/final-standalone-checks/974_staticart_standalone_summary_smoke_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/final-standalone-checks/974_staticart_standalone_summary_smoke_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROADBASE="$HOME/01.civilization-system/10.staticart-os/131.implementation-roadmap"

printf '\n============================================================\n'
printf 'STATICART STANDALONE SUMMARY SMOKE CHECK\n'
printf '============================================================\n'

check_pattern() {
  local file="$1"
  local pattern="$2"
  local label="$3"

  if grep -q "$pattern" "$file"; then
    echo "OK  $label"
  else
    echo "NG  $label"
  fi
}

check_pattern "$ROADBASE/131320_STATIC_ART_OS_STANDALONE_FINAL_ROADMAP.md" "Phase 1" "standalone final roadmap has Phase 1"
check_pattern "$ROADBASE/131320_STATIC_ART_OS_STANDALONE_FINAL_ROADMAP.md" "Phase 7" "standalone final roadmap has Phase 7"
check_pattern "$ROADBASE/131310_STATIC_ART_OS_PHASE8_DEFERRED_EXTERNAL_INTEGRATION_NOTE.md" "deferred" "external integration is deferred"
check_pattern "$ROADBASE/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md" "implementation_ready_judgement" "final checklist has implementation judgement"
check_pattern "$ROADBASE/131340_STATIC_ART_OS_STANDALONE_MASTER_OPERATION_MANUAL.md" "PERSONA_DATABASE_URL" "master operation manual fixes PERSONA_DATABASE_URL"


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/final-standalone-checks/974_staticart_standalone_summary_smoke_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/final-standalone-checks/999_staticart_standalone_full_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/final-standalone-checks/999_staticart_standalone_full_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os"
FINALBASE="$BASE/124.test-implementation-prep/final-standalone-checks"

printf '\n============================================================\n'
printf 'STATICART STANDALONE FULL CHECK START\n'
printf '============================================================\n'

bash "$FINALBASE/971_staticart_standalone_env_check.sh"
bash "$FINALBASE/972_staticart_standalone_file_presence_check.sh"
bash "$FINALBASE/973_staticart_standalone_phase_runner_presence_check.sh"
bash "$FINALBASE/974_staticart_standalone_summary_smoke_check.sh"

printf '\n============================================================\n'
printf 'OPTIONAL CHAINED PHASE CHECKS\n'
printf '============================================================\n'
printf 'To run full chained checks manually:\n'
printf '  bash "%s/121.db-implementation-prep/verification/990_staticart_phase1_full_verify.sh"\n' "$BASE"
printf '  bash "%s/122.api-implementation-prep/phase2-checks/990_staticart_phase2_full_check.sh"\n' "$BASE"
printf '  bash "%s/122.api-implementation-prep/phase3-checks/990_staticart_phase3_full_check.sh"\n' "$BASE"
printf '  bash "%s/122.api-implementation-prep/phase4-5-checks/990_staticart_phase4_5_full_check.sh"\n' "$BASE"
printf '  bash "%s/124.test-implementation-prep/phase6-7-checks/990_staticart_phase6_7_full_check.sh"\n' "$BASE"

printf '\n============================================================\n'
printf 'STATICART STANDALONE FULL CHECK DONE\n'
printf '============================================================\n'


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/final-standalone-checks/999_staticart_standalone_full_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks/961_staticart_phase6_7_env_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks/961_staticart_phase6_7_env_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

printf '\n============================================================\n'
printf 'STATICART PHASE6_7 ENV CHECK\n'
printf '============================================================\n'

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

echo "OK: PERSONA_DATABASE_URL is set"

if [ -n "${DATABASE_URL:-}" ]; then
  echo "INFO: DATABASE_URL is also set"
  echo "INFO: StaticArtOS standalone Persona-side assumptions still use PERSONA_DATABASE_URL only"
else
  echo "INFO: DATABASE_URL is not set"
fi


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks/961_staticart_phase6_7_env_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks/962_staticart_phase6_ui_file_presence_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks/962_staticart_phase6_ui_file_presence_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

UIBASE="$HOME/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui"

printf '\n============================================================\n'
printf 'STATICART PHASE6 UI FILE PRESENCE CHECK\n'
printf '============================================================\n'

check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "OK  $file"
  else
    echo "NG  $file"
  fi
}

check_file "$UIBASE/screens/admin/ReviewQueueScreen.tsx"
check_file "$UIBASE/screens/admin/ReviewDetailScreen.tsx"
check_file "$UIBASE/screens/admin/AuditDetailScreen.tsx"
check_file "$UIBASE/components/admin/ReviewDecisionPanel.tsx"
check_file "$UIBASE/components/common/ScreenShell.tsx"
check_file "$UIBASE/components/common/StatePanel.tsx"


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks/962_staticart_phase6_ui_file_presence_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks/963_staticart_phase7_test_file_presence_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks/963_staticart_phase7_test_file_presence_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

TESTSRC="$HOME/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests"

printf '\n============================================================\n'
printf 'STATICART PHASE7 TEST FILE PRESENCE CHECK\n'
printf '============================================================\n'

check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "OK  $file"
  else
    echo "NG  $file"
  fi
}

check_file "$TESTSRC/api/lifecycle-and-review.test.ts"
check_file "$TESTSRC/api/entitlement-and-library.test.ts"
check_file "$TESTSRC/policy/policy-and-projection.test.ts"
check_file "$TESTSRC/audit/permission-and-audit.test.ts"
check_file "$TESTSRC/config/test-env.ts"
check_file "$TESTSRC/runners/900_staticart_test_execution_order.md"
check_file "$TESTSRC/runners/910_staticart_test_env_check.sh"


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks/963_staticart_phase7_test_file_presence_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks/964_staticart_phase6_7_binding_smoke_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks/964_staticart_phase6_7_binding_smoke_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

UIBASE="$HOME/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui"
TESTSRC="$HOME/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests"

printf '\n============================================================\n'
printf 'STATICART PHASE6_7 BINDING SMOKE CHECK\n'
printf '============================================================\n'

check_pattern() {
  local file="$1"
  local pattern="$2"
  local label="$3"

  if grep -q "$pattern" "$file"; then
    echo "OK  $label"
  else
    echo "NG  $label"
  fi
}

check_pattern "$UIBASE/screens/admin/ReviewQueueScreen.tsx" "ReviewQueueScreen" "ReviewQueueScreen exists"
check_pattern "$UIBASE/screens/admin/ReviewDetailScreen.tsx" "ReviewDetailScreen" "ReviewDetailScreen exists"
check_pattern "$UIBASE/screens/admin/AuditDetailScreen.tsx" "AuditDetailScreen" "AuditDetailScreen exists"
check_pattern "$UIBASE/components/admin/ReviewDecisionPanel.tsx" "ReviewDecisionPanel" "ReviewDecisionPanel exists"

check_pattern "$TESTSRC/api/lifecycle-and-review.test.ts" "AC-LC-001" "lifecycle acceptance case present"
check_pattern "$TESTSRC/api/entitlement-and-library.test.ts" "AC-EN-001" "entitlement acceptance case present"
check_pattern "$TESTSRC/policy/policy-and-projection.test.ts" "AC-PL-001" "policy acceptance case present"
check_pattern "$TESTSRC/audit/permission-and-audit.test.ts" "AC-AU-001" "audit acceptance case present"


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks/964_staticart_phase6_7_binding_smoke_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks/990_staticart_phase6_7_full_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks/990_staticart_phase6_7_full_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks"

printf '\n============================================================\n'
printf 'STATICART PHASE6_7 FULL CHECK START\n'
printf '============================================================\n'

bash "$BASE/961_staticart_phase6_7_env_check.sh"
bash "$BASE/962_staticart_phase6_ui_file_presence_check.sh"
bash "$BASE/963_staticart_phase7_test_file_presence_check.sh"
bash "$BASE/964_staticart_phase6_7_binding_smoke_check.sh"

printf '\n============================================================\n'
printf 'STATICART PHASE6_7 FULL CHECK DONE\n'
printf '============================================================\n'


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks/990_staticart_phase6_7_full_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/README.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/README.md

# StaticArtOS Test Source Skeleton

This directory is the framework-light test source skeleton for StaticArtOS.

## Intent

- turn acceptance cases into executable test entry points
- keep policy and projection regression visible
- keep permission and audit checks explicit

## Important

- Persona-side DB assumptions use PERSONA_DATABASE_URL
- projection is derived and must never be asserted as canonical source
- reader continuity and viewer continuity must remain separate test surfaces


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/README.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/api/entitlement-and-library.test.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/api/entitlement-and-library.test.ts

import { getStaticArtTestEnv } from "../config/test-env";

describe("StaticArtOS entitlement and library continuity", () => {
  const env = getStaticArtTestEnv();

  it("AC-EN-001 purchase reflection yields owned_permanent", async () => {
    void env;

    // Arrange
    // - reflect purchase event

    // Act
    // - read entitlement
    // - read library

    // Assert
    // - effective state owned_permanent
    // - asset visible in library
    // - full access session allowed
  });

  it("AC-EN-003 purchase plus subscription yields owned_and_subscription_access", async () => {
    // Arrange
    // - reflect purchase
    // - reflect subscription active

    // Assert
    // - both ownership and subscription flags true
  });

  it("AC-LB-001 reader progress appears in Continue Reading", async () => {
    // Arrange
    // - entitled publishing asset

    // Act
    // - save reader progress

    // Assert
    // - continue reading list contains asset
    // - locator and progress summary updated
  });

  it("AC-LB-002 viewer progress appears in Continue Viewing", async () => {
    // Arrange
    // - entitled visual asset

    // Act
    // - save viewer progress

    // Assert
    // - continue viewing list contains asset
    // - page/frame summary updated
  });

  it("AC-LB-004 entitlement loss does not remove favorite", async () => {
    // Arrange
    // - favorite exists
    // - entitlement later removed or blocked

    // Act
    // - reload library and favorite state

    // Assert
    // - favorite remains
    // - access may be blocked
  });
});


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/api/entitlement-and-library.test.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/api/lifecycle-and-review.test.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/api/lifecycle-and-review.test.ts

import { getStaticArtTestEnv } from "../config/test-env";

describe("StaticArtOS lifecycle and review", () => {
  const env = getStaticArtTestEnv();

  it("AC-LC-001 draft can pass through self-check preparation flow", async () => {
    void env;

    // Arrange
    // - create draft
    // - upload required file roles
    // - save localization
    // - save rights/sales/subscription

    // Act
    // - run self check

    // Assert
    // - lifecycle becomes self_check_passed
    // - blocker list is empty
  });

  it("AC-RV-001 self_check_passed asset can create review request", async () => {
    // Arrange
    // - asset in self_check_passed

    // Act
    // - create review request

    // Assert
    // - review request created
    // - lifecycle becomes review_pending
  });

  it("AC-RV-002 creator cannot edit governed fields during review_pending", async () => {
    // Arrange
    // - asset in review_pending

    // Act
    // - attempt localization or rights update

    // Assert
    // - status 409
    // - error code STATICART_ASSET_STATE_CONFLICT
  });

  it("AC-RV-003 review_admin can approve reject rework or restrict", async () => {
    // Arrange
    // - pending review exists

    // Act
    // - decide review as each supported decision

    // Assert
    // - lifecycle transitions correctly
    // - audit row exists
  });

  it("AC-RV-004 creator cannot self-approve", async () => {
    // Arrange
    // - creator actor on own asset

    // Act
    // - attempt review decision

    // Assert
    // - status 403
    // - error code STATICART_FORBIDDEN
  });
});


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/api/lifecycle-and-review.test.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/audit/permission-and-audit.test.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/audit/permission-and-audit.test.ts

import { getStaticArtTestEnv } from "../config/test-env";

describe("StaticArtOS permission and audit", () => {
  const env = getStaticArtTestEnv();

  it("AC-AU-001 governance actions create audit events", async () => {
    void env;

    // Arrange
    // - target asset exists

    // Act
    // - review decide
    // - publish
    // - restrict
    // - delist
    // - archive

    // Assert
    // - audit events exist for each action
    // - actor and request_id are traceable
  });

  it("AC-AU-002 support_readonly can read but cannot write", async () => {
    // Arrange
    // - support_readonly actor

    // Act / Assert
    // - read endpoints succeed
    // - write endpoints fail with 403
  });

  it("AC-AU-003 exhibition_builder_reader reads projection only", async () => {
    // Arrange
    // - projection exists

    // Act / Assert
    // - projection read succeeds
    // - canonical write fails with 403
  });

  it("AC-AU-004 same idempotency key same body does not double-apply", async () => {
    // Arrange
    // - choose idempotent endpoint

    // Act
    // - send same request twice with same key and body

    // Assert
    // - same result returned
    // - no double grant or duplicate state transition
  });
});


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/audit/permission-and-audit.test.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/config/test-env.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/config/test-env.ts

export interface StaticArtTestEnv {
  personaDatabaseUrl: string;
  apiBaseUrl: string;
  actorMode: "local_stub" | "integration";
}

export function getStaticArtTestEnv(): StaticArtTestEnv {
  const personaDatabaseUrl = process.env.PERSONA_DATABASE_URL ?? "";
  const apiBaseUrl = process.env.STATICART_API_BASE_URL ?? "http://localhost:3000/api/v1/staticart";
  const actorMode = (process.env.STATICART_TEST_ACTOR_MODE ?? "local_stub") as
    | "local_stub"
    | "integration";

  if (!personaDatabaseUrl) {
    throw new Error("PERSONA_DATABASE_URL is required for StaticArtOS test execution.");
  }

  return {
    personaDatabaseUrl,
    apiBaseUrl,
    actorMode,
  };
}


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/config/test-env.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/fixtures/staticart-fixture-plan.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/fixtures/staticart-fixture-plan.md

# ============================================================
# STATIC ART OS FIXTURE PLAN
# ============================================================

required_assets:
  - one publishing draft
  - one visual draft
  - one published marketplace asset
  - one library-only asset
  - one restricted asset
  - one delisted asset

required_users:
  - one owned_permanent user
  - one subscription_access user
  - one owned_and_subscription_access user
  - one blocked_by_region user
  - one review_admin
  - one policy_admin
  - one support_readonly

required_special_cases:
  - one asset with exhibition_allowed=true
  - one asset with rights-change block scenario
  - one asset with reader progress
  - one asset with viewer progress
  - one asset favorited without permanent ownership

fixture_rules:
  - fixture ids must be deterministic in local test runs
  - publishing and visual assets must both be covered
  - restricted and delisted must be separate assets
  - favorites must survive entitlement-loss scenario validation


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/fixtures/staticart-fixture-plan.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/policy/policy-and-projection.test.ts -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/policy/policy-and-projection.test.ts

import { getStaticArtTestEnv } from "../config/test-env";

describe("StaticArtOS policy and projection", () => {
  const env = getStaticArtTestEnv();

  it("AC-PL-001 region block denies full open", async () => {
    void env;

    // Arrange
    // - asset region policy blocks actor region

    // Act
    // - request full access session

    // Assert
    // - status 403
    // - blocked_by_region or STATICART_REGION_POLICY_BLOCKED
  });

  it("AC-PL-003 restricted asset blocks new purchase sample and full open", async () => {
    // Arrange
    // - asset is restricted

    // Act / Assert
    // - purchase blocked
    // - sample blocked
    // - full open blocked
  });

  it("AC-CX-001 publish updates CX22073JW reference areas", async () => {
    // Arrange
    // - approved publishable asset

    // Act
    // - publish asset

    // Assert
    // - reference publish job queued
    // - projection/search reference areas updated
  });

  it("AC-CX-002 rights change refreshes exhibition eligibility", async () => {
    // Arrange
    // - published asset initially eligible

    // Act
    // - change rights to make exhibition unavailable

    // Assert
    // - projection becomes ineligible or revoked
    // - reason codes updated
  });

  it("AC-CX-003 CX helper signals do not overwrite canonical automatically", async () => {
    // Arrange
    // - CX-side suggestion exists

    // Act
    // - read canonical metadata after suggestion arrives

    // Assert
    // - canonical values unchanged
  });
});


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/policy/policy-and-projection.test.ts -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/runners/900_staticart_test_execution_order.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/runners/900_staticart_test_execution_order.md

# ============================================================
# STATIC ART OS TEST EXECUTION ORDER
# ============================================================

recommended_order:
  - lifecycle-and-review.test.ts
  - entitlement-and-library.test.ts
  - policy-and-projection.test.ts
  - permission-and-audit.test.ts

reasoning:
  - lifecycle and review establish valid entity states
  - entitlement and library depend on valid publishable assets
  - policy and projection depend on published and governed states
  - audit and permission should validate across all prior flows


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/runners/900_staticart_test_execution_order.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/runners/910_staticart_test_env_check.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/runners/910_staticart_test_env_check.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

echo "OK: PERSONA_DATABASE_URL is set"

if [ -z "${STATICART_API_BASE_URL:-}" ]; then
  echo "INFO: STATICART_API_BASE_URL is not set"
  echo "INFO: default test runtime should use http://localhost:3000/api/v1/staticart"
else
  echo "OK: STATICART_API_BASE_URL=$STATICART_API_BASE_URL"
fi

if [ -z "${STATICART_TEST_ACTOR_MODE:-}" ]; then
  echo "INFO: STATICART_TEST_ACTOR_MODE is not set"
  echo "INFO: default actor mode should be local_stub"
else
  echo "OK: STATICART_TEST_ACTOR_MODE=$STATICART_TEST_ACTOR_MODE"
fi


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests/runners/910_staticart_test_env_check.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/000_STATIC_ART_DEVELOPMENT_AND_RELEASE_RULES.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/000_STATIC_ART_DEVELOPMENT_AND_RELEASE_RULES.md

# ============================================================
# STATIC ART DEVELOPMENT AND RELEASE RULES
# ============================================================

status: implementation-ready-development
layer: development
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Schema Rule

All StaticArtOS tables must be created under schema `staticart`.

## 2. Change Rule

Changes to:
- entitlement logic
- rights logic
- projection logic
- lifecycle states

must be additive or migration-safe and must preserve auditability.

## 3. Test Priority Rule

Highest priority tests:
- entitlement resolution
- subscription expiry behavior
- library visibility refresh
- reader and viewer access blocking
- projection eligibility resolution
- restriction behavior

## 4. Release Rule

A release is not acceptable unless:
- API contracts match implementation-ready design
- permission rules match implementation-ready design
- lifecycle states and entitlement states match implementation-ready design


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/000_STATIC_ART_DEVELOPMENT_AND_RELEASE_RULES.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/000_STATIC_ART_DEVELOPMENT_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/000_STATIC_ART_DEVELOPMENT_INDEX.md

# ============================================================
# STATIC ART DEVELOPMENT INDEX
# ============================================================

status: canonical-index
layer: development
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## Files

- 000_STATIC_ART_DEVELOPMENT_INDEX.md
- 000_STATIC_ART_DEVELOPMENT_OVERVIEW.md
- 000_STATIC_ART_DEVELOPMENT_AND_RELEASE_RULES.md

## Scope

- development rules
- migration rules
- release rules
- testing direction


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/000_STATIC_ART_DEVELOPMENT_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/000_STATIC_ART_DEVELOPMENT_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/000_STATIC_ART_DEVELOPMENT_OVERVIEW.md

# ============================================================
# STATIC ART DEVELOPMENT OVERVIEW
# ============================================================

status: canonical-overview
layer: development
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Development Objective

Development must implement StaticArtOS without violating canonical ownership, entitlement separation, or projection contract rules.

## 2. Development Priorities

- schema correctness
- entitlement correctness
- policy correctness
- marketplace correctness
- reader and viewer continuity correctness
- projection correctness


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/000_STATIC_ART_DEVELOPMENT_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/130110_STATIC_ART_OS_ACCEPTANCE_AND_TEST_EXACTNESS.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/130110_STATIC_ART_OS_ACCEPTANCE_AND_TEST_EXACTNESS.md

# ============================================================
# STATIC ART OS ACCEPTANCE AND TEST EXACTNESS
# ============================================================

status: implementation-ready
system: StaticArtOS
layer: development
owner: Boss
prepared_by: Zero

acceptance_principle:
  StaticArtOS is accepted only when database, API, UI, policy,
  projection, and continuity are connected end-to-end.

acceptance_groups:
  - lifecycle_and_publish
  - review_and_governance
  - entitlement_and_access
  - library_and_continuity
  - policy_and_blocking
  - cx22073jw_and_projection
  - audit_and_permission

required_cases:
  lifecycle_and_publish:
    - AC-LC-001 draft can progress through files/metadata/rights/sales/subscription and pass self check
    - AC-LC-002 approved asset can publish to marketplace
    - AC-LC-003 unapproved asset cannot publish
    - AC-LC-004 archived asset cannot be republished

  review_and_governance:
    - AC-RV-001 self_check_passed asset can create review request
    - AC-RV-002 creator cannot edit metadata during review_pending
    - AC-RV-003 review_admin can approve/reject/rework/restrict
    - AC-RV-004 creator cannot self-approve

  entitlement_and_access:
    - AC-EN-001 purchase reflection yields owned_permanent
    - AC-EN-002 subscription only yields subscription_access
    - AC-EN-003 purchase plus subscription yields owned_and_subscription_access
    - AC-EN-004 subscription end without ownership blocks full open
    - AC-EN-005 rights-change block preserves purchase history and user artifacts

  library_and_continuity:
    - AC-LB-001 reader progress appears in Continue Reading
    - AC-LB-002 viewer progress appears in Continue Viewing
    - AC-LB-003 sample_only asset can still be favorited
    - AC-LB-004 entitlement loss does not remove favorite

  policy_and_blocking:
    - AC-PL-001 region deny blocks full open
    - AC-PL-002 age policy can block sample as well
    - AC-PL-003 restricted asset blocks new purchase/sample/full open
    - AC-PL-004 delisted asset preserves existing owner access

  cx22073jw_and_projection:
    - AC-CX-001 publish updates search and exhibition reference areas
    - AC-CX-002 rights change updates exhibition eligibility
    - AC-CX-003 CX-side helper signals do not overwrite canonical automatically

  audit_and_permission:
    - AC-AU-001 review/publish/restrict/delist/archive all create audit events
    - AC-AU-002 support_readonly can read but cannot write
    - AC-AU-003 exhibition_builder_reader reads projection only
    - AC-AU-004 same Idempotency-Key same body does not double-apply

non_functional:
  - NF-001 stable response behavior for library list, detail, entitlement, access-session
  - NF-002 retry safety for publish/review/purchase reflect/progress save
  - NF-003 audit traceability with request_id and actor
  - NF-004 derived projection regenerability

minimum_fixture_set:
  assets:
    - one publishing asset
    - one visual asset
    - one published marketplace asset
    - one library-only asset
    - one restricted asset
    - one delisted asset
  users:
    - one owned_permanent user
    - one subscription_access user
    - one owned_and_subscription_access user
    - one blocked_by_region user
    - one review_admin
    - one policy_admin
    - one support_readonly

implementation_ready_exit_criteria:
  - DB schema fixed
  - API contract fixed
  - screen/stateflow fixed
  - permission/policy fixed
  - CX22073JW boundary fixed
  - acceptance cases fixed


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/130.development/130110_STATIC_ART_OS_ACCEPTANCE_AND_TEST_EXACTNESS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131100_STATIC_ART_OS_IMPLEMENTATION_ROADMAP.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131100_STATIC_ART_OS_IMPLEMENTATION_ROADMAP.md

# ============================================================
# STATIC ART OS IMPLEMENTATION ROADMAP
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

current_position:
  - implementation-ready design completed
  - termux-deployable document bundle completed
  - implementation-prep skeletons now added

recommended_execution_order:
  - Phase 1: schema/enums/base tables
  - Phase 2: files/metadata/rights/sales/subscription write APIs
  - Phase 3: self check/review/publish lifecycle APIs
  - Phase 4: entitlement and access session
  - Phase 5: library/reader/viewer continuity
  - Phase 6: review admin and restriction/governance
  - Phase 7: cx22073jw reference publish
  - Phase 8: acceptance execution and regression hardening

phase_exit_conditions:
  phase_1:
    - schema and enum creation fixed
    - base canonical tables created
  phase_2:
    - creator workspace write backbone works
  phase_3:
    - review and publish lifecycle works
  phase_4:
    - ownership/subscription/full-access resolution works
  phase_5:
    - continue reading/viewing works
  phase_6:
    - governance and audit work end-to-end
  phase_7:
    - cx22073jw reference areas receive correct data
  phase_8:
    - acceptance suite passes

important_rules:
  - no projection table becomes canonical
  - no phase-less fixes
  - additive change preferred
  - auditability must be preserved


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131100_STATIC_ART_OS_IMPLEMENTATION_ROADMAP.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131110_STATIC_ART_OS_PHASE1_IMPLEMENTATION_TASK_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131110_STATIC_ART_OS_PHASE1_IMPLEMENTATION_TASK_LEDGER.md

# ============================================================
# STATIC ART OS PHASE 1 IMPLEMENTATION TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 1
owner: Boss
prepared_by: Zero
db_review_participant: Sato

phase_objective:
Phase 1 establishes the first executable backbone of StaticArtOS
on the Persona-side environment.

phase_scope:
  - schema and enums
  - canonical anchor tables
  - files and metadata tables
  - policy and commerce tables
  - review and audit tables
  - entitlement and continuity tables
  - projection tables
  - first apply runner verification

task_units:
  - P1-T001 create schema and enums
  - P1-T002 create asset_master
  - P1-T003 create asset_version
  - P1-T004 create files and metadata tables
  - P1-T005 create rights, sales, subscription tables
  - P1-T006 create review and audit tables
  - P1-T007 create entitlement and continuity tables
  - P1-T008 create projection tables
  - P1-T009 verify apply runner with PERSONA_DATABASE_URL
  - P1-T010 verify base table visibility and indexes

task_details:
  P1-T001:
    objective:
      - create schema staticart
      - create all required enums
    inputs:
      - 121120_STATIC_ART_OS_DDL_MIGRATION_ORDER.md
      - sql/001_staticart_schema_and_enums.sql
    exit_condition:
      - schema exists
      - all enum types exist

  P1-T002:
    objective:
      - create asset_master
      - verify core indexes
    inputs:
      - sql/010_staticart_asset_master.sql
    exit_condition:
      - asset_master exists
      - creator/lifecycle index exists
      - type/lifecycle index exists

  P1-T003:
    objective:
      - create asset_version
      - enforce one visible version max
    inputs:
      - sql/020_staticart_asset_version.sql
    exit_condition:
      - asset_version exists
      - unique visible-version index exists

  P1-T004:
    objective:
      - create asset_file
      - create asset_localization
      - create category/tag maps
    inputs:
      - sql/030_staticart_files_and_metadata.sql
    exit_condition:
      - file and localization tables exist
      - required constraints exist

  P1-T005:
    objective:
      - create rights policy
      - create sales offer
      - create subscription rule
    inputs:
      - sql/040_staticart_policy_and_commerce.sql
    exit_condition:
      - policy/commercial tables exist
      - check constraints exist

  P1-T006:
    objective:
      - create review request
      - create review decision
      - create audit event
    inputs:
      - sql/050_staticart_review_and_audit.sql
    exit_condition:
      - governance tables exist
      - audit indexes exist

  P1-T007:
    objective:
      - create entitlement snapshot
      - create library projection
      - create reader/viewer continuity
      - create annotation/favorite
    inputs:
      - sql/060_staticart_entitlement_and_continuity.sql
    exit_condition:
      - continuity tables exist
      - reader/viewer tables are separate

  P1-T008:
    objective:
      - create asset_exhibition_projection
      - confirm derived-only role
    inputs:
      - sql/070_staticart_projection_tables.sql
    exit_condition:
      - projection table exists
      - downstream-read-only note remains documented

  P1-T009:
    objective:
      - run apply runner with PERSONA_DATABASE_URL
    inputs:
      - sql/900_staticart_phase1_apply_runner.sh
    exit_condition:
      - runner completes without error
      - no ERP-side DB is touched

  P1-T010:
    objective:
      - verify resulting tables and indexes
    verification_points:
      - schema exists
      - expected tables exist
      - key indexes exist
      - no missing dependency
    exit_condition:
      - verification passes
      - Phase 1 marked complete

important_rules:
  - Use PERSONA_DATABASE_URL only
  - SQL review includes Sato before execution
  - Projection tables are derived, never canonical write source
  - Reader and viewer continuity must remain separate


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131110_STATIC_ART_OS_PHASE1_IMPLEMENTATION_TASK_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131120_STATIC_ART_OS_PHASE2_TO_PHASE8_TASK_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131120_STATIC_ART_OS_PHASE2_TO_PHASE8_TASK_LEDGER.md

# ============================================================
# STATIC ART OS PHASE 2 TO PHASE 8 TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

phase_2:
  objective:
    - implement creator write backbone
  major_tasks:
    - asset create route/service/repository binding
    - localization write
    - rights policy write
    - sales offer write
    - subscription rule write
    - base validation and version_token handling
  exit_condition:
    - creator governed writes work end-to-end

phase_3:
  objective:
    - implement self check, review request, review decision, publish actions
  major_tasks:
    - self check service
    - review request creation
    - review decision flow
    - publish marketplace
    - publish library only
    - delist/restrict/archive actions
    - audit event creation for governance actions
  exit_condition:
    - lifecycle and governance flow works end-to-end

phase_4:
  objective:
    - implement entitlement and access session
  major_tasks:
    - entitlement resolution
    - purchase reflection
    - subscription reflection
    - access session creation
  exit_condition:
    - full/sample access rules work correctly

phase_5:
  objective:
    - implement library and continuity
  major_tasks:
    - my library list
    - continue reading
    - continue viewing
    - reader progress save
    - viewer progress save
    - favorite and annotation flows
  exit_condition:
    - continuity surfaces work correctly

phase_6:
  objective:
    - implement admin governance surfaces
  major_tasks:
    - review queue
    - review detail
    - restriction/audit detail
    - support_readonly behavior
  exit_condition:
    - governance UI and permission behavior work end-to-end

phase_7:
  objective:
    - implement CX22073JW reference publish
  major_tasks:
    - projection search area publish
    - preview summary area publish
    - rights reference area publish
    - continuity signal publish
    - review risk reference publish
    - exhibition reference publish
  exit_condition:
    - CX22073JW reference sync works one-way from canonical

phase_8:
  objective:
    - execute acceptance and harden regressions
  major_tasks:
    - run acceptance cases
    - run permission matrix
    - run policy/projection matrix
    - fix blocking regressions
  exit_condition:
    - implementation-ready acceptance target passes


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131120_STATIC_ART_OS_PHASE2_TO_PHASE8_TASK_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131130_STATIC_ART_OS_DEPENDENCY_AND_GATE_MATRIX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131130_STATIC_ART_OS_DEPENDENCY_AND_GATE_MATRIX.md

# ============================================================
# STATIC ART OS DEPENDENCY AND GATE MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

dependencies:
  phase_1_before_phase_2:
    - schema and tables must exist
    - apply runner must pass
  phase_2_before_phase_3:
    - creator writes must persist correctly
    - version_token path must exist
  phase_3_before_phase_4:
    - publishable lifecycle states must exist
    - audit event wiring must exist
  phase_4_before_phase_5:
    - entitlement resolution must exist
    - access session policy must exist
  phase_5_before_phase_6:
    - continuity data must exist
    - library projections must refresh
  phase_6_before_phase_7:
    - governance states and projection refresh must exist
  phase_7_before_phase_8:
    - cx reference publish must exist
    - projection results must be queryable

review_gates:
  sql_gate:
    - reviewer: Sato
    - required_for: schema/table/index/constraint changes
  service_gate:
    - required_for: lifecycle/governance/entitlement logic
  ui_gate:
    - required_for: screen-stateflow consistency
  acceptance_gate:
    - required_for: phase completion signoff

hard_stops:
  - do not move to Phase 2 if Phase 1 runner fails
  - do not move to publish flow if review flow is incomplete
  - do not move to library continuity if entitlement is unstable
  - do not publish CX references before projection semantics are stable


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131130_STATIC_ART_OS_DEPENDENCY_AND_GATE_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131140_STATIC_ART_OS_PERSONA_ENV_AND_REVIEW_GATE.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131140_STATIC_ART_OS_PERSONA_ENV_AND_REVIEW_GATE.md

# ============================================================
# STATIC ART OS PERSONA ENV AND REVIEW GATE
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

environment_rules:
  persona_side_db:
    - PERSONA_DATABASE_URL is the canonical connection target
    - DATABASE_URL must not be used for StaticArtOS Persona-side DB work

db_execution_rules:
  - Use psql with PERSONA_DATABASE_URL
  - Review SQL with Sato before apply
  - Keep changes additive where possible
  - Preserve auditability

verification_rules:
  before_apply:
    - PERSONA_DATABASE_URL is set
    - SQL files exist
    - runner path is correct
  after_apply:
    - expected schema exists
    - expected tables exist
    - indexes exist
    - no ERP-side write occurred

guardrails:
  - Projection must not become canonical source
  - Reader/viewer continuity must remain separate
  - Favorites survive entitlement loss
  - Subscription access never upgrades to permanent ownership


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131140_STATIC_ART_OS_PERSONA_ENV_AND_REVIEW_GATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131150_STATIC_ART_OS_EXECUTION_CHECKLIST.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131150_STATIC_ART_OS_EXECUTION_CHECKLIST.md

# ============================================================
# STATIC ART OS EXECUTION CHECKLIST
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

phase_1_checklist:
  - confirm PERSONA_DATABASE_URL
  - confirm SQL reviewed by Sato
  - confirm sql runner path
  - apply schema and tables
  - verify schema objects
  - record result

phase_2_checklist:
  - bind route -> service -> repository
  - wire validators
  - wire permission guards
  - verify version_token behavior
  - verify error envelope consistency

phase_3_checklist:
  - verify self check blocker output
  - verify review request creation
  - verify review decision
  - verify publish and audit generation
  - verify restrict/delist/archive behavior

phase_4_checklist:
  - verify entitlement recompute
  - verify purchase reflection
  - verify subscription reflection
  - verify access session rules

phase_5_checklist:
  - verify library list
  - verify continue reading
  - verify continue viewing
  - verify favorite persistence
  - verify annotation persistence

phase_6_checklist:
  - verify review queue ui
  - verify review detail ui
  - verify support_readonly behavior
  - verify audit detail visibility

phase_7_checklist:
  - verify cx reference publish triggers
  - verify exhibition reference output
  - verify one-way sync only

phase_8_checklist:
  - run acceptance cases
  - run permission matrix
  - run policy/projection matrix
  - record unresolved blockers
  - mark implementation-ready or hold


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131150_STATIC_ART_OS_EXECUTION_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131160_STATIC_ART_OS_PHASE3_TO_PHASE8_MASTER_EXECUTION_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131160_STATIC_ART_OS_PHASE3_TO_PHASE8_MASTER_EXECUTION_LEDGER.md

# ============================================================
# STATIC ART OS PHASE3 TO PHASE8 MASTER EXECUTION LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

objective:
Provide the bundled master execution ledger for StaticArtOS
from Phase 3 through Phase 8.

phase_summary:
  phase_3:
    name: governance and publish backbone
    scope:
      - self check
      - review request
      - review decision
      - publish marketplace
      - publish library only
      - delist / restrict / archive
      - audit
      - projection refresh enqueue

  phase_4:
    name: entitlement and access
    scope:
      - entitlement resolution
      - access session
      - purchase reflection
      - subscription reflection

  phase_5:
    name: library and continuity
    scope:
      - my library
      - continue reading
      - continue viewing
      - reader progress
      - viewer progress
      - favorite
      - annotation

  phase_6:
    name: admin surfaces and governance UI
    scope:
      - review queue
      - review detail
      - restriction / audit detail
      - support_readonly behavior

  phase_7:
    name: CX22073JW reference publish
    scope:
      - projection search area
      - preview summary area
      - rights reference area
      - continuity signal area
      - review risk reference area
      - exhibition reference area

  phase_8:
    name: acceptance and regression hardening
    scope:
      - acceptance execution
      - permission regression
      - policy / projection regression
      - unresolved blocker cleanup

execution_order:
  - complete Phase 3
  - complete Phase 4
  - complete Phase 5
  - complete Phase 6
  - complete Phase 7
  - complete Phase 8

hard_rules:
  - do not skip lifecycle/governance before entitlement
  - do not skip entitlement before library continuity
  - do not publish CX references before projection semantics stabilize
  - Persona-side DB work uses PERSONA_DATABASE_URL


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131160_STATIC_ART_OS_PHASE3_TO_PHASE8_MASTER_EXECUTION_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131170_STATIC_ART_OS_PHASE3_TO_PHASE8_EXIT_CRITERIA_MATRIX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131170_STATIC_ART_OS_PHASE3_TO_PHASE8_EXIT_CRITERIA_MATRIX.md

# ============================================================
# STATIC ART OS PHASE3 TO PHASE8 EXIT CRITERIA MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

phase_3_exit:
  - self check works
  - review request works
  - review decision works
  - publish marketplace works
  - publish library only works
  - delist/restrict/archive work
  - audit events are generated
  - projection refresh enqueue is bound
  - invalid lifecycle transitions are rejected

phase_4_exit:
  - entitlement resolution works
  - owned_permanent works
  - subscription_access works
  - owned_and_subscription_access works
  - access session full/sample rules work
  - region/age/rights blocks work
  - purchase/subscription reflection entry points work

phase_5_exit:
  - my library works
  - continue reading works
  - continue viewing works
  - reader progress persistence works
  - viewer progress persistence works
  - favorite add/remove works
  - annotations work
  - favorite survives entitlement loss scenario

phase_6_exit:
  - review queue UI works
  - review detail UI works
  - audit detail UI works
  - support_readonly behavior works
  - admin permission boundaries work

phase_7_exit:
  - projection search reference publish works
  - preview summary reference publish works
  - rights reference publish works
  - continuity signal publish works
  - review risk reference publish works
  - exhibition reference publish works
  - sync is one-way from canonical to CX22073JW

phase_8_exit:
  - acceptance groups pass
  - permission regression passes
  - policy/projection regression passes
  - unresolved blockers are named or cleared


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131170_STATIC_ART_OS_PHASE3_TO_PHASE8_EXIT_CRITERIA_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131180_STATIC_ART_OS_PHASE4_ENTITLEMENT_AND_ACCESS_TASK_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131180_STATIC_ART_OS_PHASE4_ENTITLEMENT_AND_ACCESS_TASK_LEDGER.md

# ============================================================
# STATIC ART OS PHASE4 ENTITLEMENT AND ACCESS TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 4
owner: Boss
prepared_by: Zero

phase_objective:
Implement entitlement resolution and access control backbone.

task_units:
  - P4-T001 implement effective entitlement resolution
  - P4-T002 implement full/sample access session rules
  - P4-T003 implement purchase reflection
  - P4-T004 implement subscription reflection
  - P4-T005 implement blocked_by_region path
  - P4-T006 implement blocked_by_age_policy path
  - P4-T007 implement blocked_by_rights_change path
  - P4-T008 verify coexistence of ownership and subscription
  - P4-T009 verify full/sample access behavior
  - P4-T010 verify Phase 4 exit criteria

important_rules:
  - subscription access never upgrades to permanent ownership
  - blocked states are effective blocks, not history deletion
  - access session must enforce region/age/rights/restriction checks
  - Persona-side DB work uses PERSONA_DATABASE_URL


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131180_STATIC_ART_OS_PHASE4_ENTITLEMENT_AND_ACCESS_TASK_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131190_STATIC_ART_OS_PHASE5_LIBRARY_AND_CONTINUITY_TASK_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131190_STATIC_ART_OS_PHASE5_LIBRARY_AND_CONTINUITY_TASK_LEDGER.md

# ============================================================
# STATIC ART OS PHASE5 LIBRARY AND CONTINUITY TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 5
owner: Boss
prepared_by: Zero

phase_objective:
Implement user library and continuity surfaces.

task_units:
  - P5-T001 implement my library list
  - P5-T002 implement continue reading list
  - P5-T003 implement continue viewing list
  - P5-T004 implement reader progress save
  - P5-T005 implement viewer progress save
  - P5-T006 implement favorite add/remove
  - P5-T007 implement annotation create
  - P5-T008 verify reader/viewer separation
  - P5-T009 verify favorite survives entitlement loss
  - P5-T010 verify Phase 5 exit criteria

important_rules:
  - reader continuity and viewer continuity remain separate
  - favorite is allowed even for sample_only where detail is visible
  - favorite/progress/annotation must not be auto-deleted on entitlement loss


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131190_STATIC_ART_OS_PHASE5_LIBRARY_AND_CONTINUITY_TASK_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131200_STATIC_ART_OS_PHASE6_ADMIN_AND_GOVERNANCE_UI_TASK_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131200_STATIC_ART_OS_PHASE6_ADMIN_AND_GOVERNANCE_UI_TASK_LEDGER.md

# ============================================================
# STATIC ART OS PHASE6 ADMIN AND GOVERNANCE UI TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 6
owner: Boss
prepared_by: Zero

phase_objective:
Implement governance-facing UI and admin interaction surfaces.

task_units:
  - P6-T001 implement review queue screen
  - P6-T002 implement review detail screen
  - P6-T003 implement decision panel behavior
  - P6-T004 implement restriction/delist/audit detail screen
  - P6-T005 implement support_readonly read-only behavior
  - P6-T006 verify admin permission boundaries
  - P6-T007 verify route/UI consistency
  - P6-T008 verify Phase 6 exit criteria

important_rules:
  - review_admin and policy_admin surfaces remain distinct
  - support_readonly must read but not write
  - governance UI must reflect canonical lifecycle and audit data


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131200_STATIC_ART_OS_PHASE6_ADMIN_AND_GOVERNANCE_UI_TASK_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131210_STATIC_ART_OS_PHASE7_CX22073JW_REFERENCE_PUBLISH_TASK_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131210_STATIC_ART_OS_PHASE7_CX22073JW_REFERENCE_PUBLISH_TASK_LEDGER.md

# ============================================================
# STATIC ART OS PHASE7 CX22073JW REFERENCE PUBLISH TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 7
owner: Boss
prepared_by: Zero

phase_objective:
Publish StaticArtOS reference surfaces to CX22073JW.

task_units:
  - P7-T001 publish projection search area
  - P7-T002 publish preview summary area
  - P7-T003 publish rights reference area
  - P7-T004 publish continuity signal area
  - P7-T005 publish review risk reference area
  - P7-T006 publish exhibition reference area
  - P7-T007 verify one-way canonical to CX sync
  - P7-T008 verify no automatic overwrite from CX suggestions
  - P7-T009 verify Phase 7 exit criteria

important_rules:
  - CX22073JW is reference and optimization side, not canonical write side
  - reverse suggestion flow must not auto-overwrite canonical data
  - projection remains derived


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131210_STATIC_ART_OS_PHASE7_CX22073JW_REFERENCE_PUBLISH_TASK_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131220_STATIC_ART_OS_PHASE8_ACCEPTANCE_AND_REGRESSION_TASK_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131220_STATIC_ART_OS_PHASE8_ACCEPTANCE_AND_REGRESSION_TASK_LEDGER.md

# ============================================================
# STATIC ART OS PHASE8 ACCEPTANCE AND REGRESSION TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 8
owner: Boss
prepared_by: Zero

phase_objective:
Execute acceptance and regression hardening.

task_units:
  - P8-T001 run lifecycle and publish acceptance
  - P8-T002 run review and governance acceptance
  - P8-T003 run entitlement and access acceptance
  - P8-T004 run library and continuity acceptance
  - P8-T005 run policy and blocking acceptance
  - P8-T006 run CX22073JW and projection acceptance
  - P8-T007 run audit and permission acceptance
  - P8-T008 run non-functional regression pass
  - P8-T009 record unresolved blockers
  - P8-T010 verify implementation-ready judgement

important_rules:
  - all acceptance groups must be traceable
  - unresolved blockers must be named explicitly
  - implementation-ready judgement requires end-to-end consistency


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131220_STATIC_ART_OS_PHASE8_ACCEPTANCE_AND_REGRESSION_TASK_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131230_STATIC_ART_OS_BUNDLED_PROGRESS_MEMO_TEMPLATE.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131230_STATIC_ART_OS_BUNDLED_PROGRESS_MEMO_TEMPLATE.md

# ============================================================
# STATIC ART OS BUNDLED PROGRESS MEMO TEMPLATE
# ============================================================

status: template
system: StaticArtOS
owner: Boss
prepared_by: Zero

phase_status:
  phase_3_complete: yes_or_no
  phase_4_complete: yes_or_no
  phase_5_complete: yes_or_no
  phase_6_complete: yes_or_no
  phase_7_complete: yes_or_no
  phase_8_complete: yes_or_no

environment:
  - Persona-side DB work uses PERSONA_DATABASE_URL: yes_or_no

current_blockers:
  - optional

notes:
  - optional

final_judgement:
  - implementation_ready: yes_or_no


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131230_STATIC_ART_OS_BUNDLED_PROGRESS_MEMO_TEMPLATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131240_STATIC_ART_OS_MASTER_NEXT_ACTION_ORDER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131240_STATIC_ART_OS_MASTER_NEXT_ACTION_ORDER.md

# ============================================================
# STATIC ART OS MASTER NEXT ACTION ORDER
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

recommended_next_action_order:
  1:
    - extend Phase 3 repository implementation
    - bind audit writes
    - bind projection enqueue
  2:
    - implement Phase 3 checks
  3:
    - implement Phase 4 entitlement/access
  4:
    - implement Phase 5 library/continuity
  5:
    - implement Phase 6 admin UI/governance UI
  6:
    - implement Phase 7 CX22073JW publish
  7:
    - execute Phase 8 acceptance/regression

important_rules:
  - do not jump directly to CX publish before entitlement and library are stable
  - do not skip Phase 3 governance backbone


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131240_STATIC_ART_OS_MASTER_NEXT_ACTION_ORDER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131250_STATIC_ART_OS_PHASE4_5_MASTER_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131250_STATIC_ART_OS_PHASE4_5_MASTER_LEDGER.md

# ============================================================
# STATIC ART OS PHASE4_5 MASTER LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phases:
  - Phase 4
  - Phase 5
owner: Boss
prepared_by: Zero

objective:
Bundle the entitlement/access work and the library/continuity work
as the next integrated implementation unit.

phase_4_scope:
  - effective entitlement resolution
  - full/sample access session
  - purchase reflection
  - subscription reflection
  - blocked_by_region
  - blocked_by_age_policy
  - blocked_by_rights_change
  - ownership + subscription coexistence

phase_5_scope:
  - my library
  - continue reading
  - continue viewing
  - reader progress save
  - viewer progress save
  - favorite add/remove
  - annotation create
  - favorite persistence after entitlement loss

execution_order:
  - Phase 4 first
  - Phase 5 second
  - run Phase 4/5 bundled checks
  - then move to Phase 6 admin/governance UI

important_rules:
  - PERSONA_DATABASE_URL is the Persona-side DB target
  - subscription access never upgrades to permanent ownership
  - blocked states are effective blocks, not history deletion
  - reader continuity and viewer continuity remain separate
  - favorite survives entitlement loss unless user explicitly deletes it


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131250_STATIC_ART_OS_PHASE4_5_MASTER_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131260_STATIC_ART_OS_PHASE4_ENTITLEMENT_ACCESS_DETAILED_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131260_STATIC_ART_OS_PHASE4_ENTITLEMENT_ACCESS_DETAILED_LEDGER.md

# ============================================================
# STATIC ART OS PHASE4 ENTITLEMENT ACCESS DETAILED LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 4
owner: Boss
prepared_by: Zero

phase_objective:
Implement deterministic entitlement resolution and access session logic.

task_units:
  - P4-T001 resolve effective entitlement from ownership/subscription/sample/block inputs
  - P4-T002 bind GET entitlement read path
  - P4-T003 bind POST create-access-session path
  - P4-T004 bind purchase reflection repository logic
  - P4-T005 bind subscription reflection repository logic
  - P4-T006 bind region block handling
  - P4-T007 bind age policy block handling
  - P4-T008 bind rights change block handling
  - P4-T009 verify owned + subscription coexistence path
  - P4-T010 verify Phase 4 exit criteria

exit_definition:
  - entitlement resolution returns canonical state
  - sample/full access mode is enforced
  - blocked states are returned correctly
  - purchase reflection and subscription reflection entry points are bound
  - no permanent ownership is created from subscription-only flow

important_rules:
  - full access session enforces lifecycle + region + age + rights + restriction
  - sample access session remains distinct from full access
  - entitlement history is not deleted by blocked states


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131260_STATIC_ART_OS_PHASE4_ENTITLEMENT_ACCESS_DETAILED_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131270_STATIC_ART_OS_PHASE5_LIBRARY_CONTINUITY_DETAILED_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131270_STATIC_ART_OS_PHASE5_LIBRARY_CONTINUITY_DETAILED_LEDGER.md

# ============================================================
# STATIC ART OS PHASE5 LIBRARY CONTINUITY DETAILED LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 5
owner: Boss
prepared_by: Zero

phase_objective:
Implement library surfaces and continuity persistence.

task_units:
  - P5-T001 bind my library list
  - P5-T002 bind continue reading list
  - P5-T003 bind continue viewing list
  - P5-T004 bind reader progress save
  - P5-T005 bind viewer progress save
  - P5-T006 bind favorite add
  - P5-T007 bind favorite delete
  - P5-T008 bind annotation create
  - P5-T009 verify favorite survives entitlement loss
  - P5-T010 verify Phase 5 exit criteria

exit_definition:
  - library list works
  - continue reading works
  - continue viewing works
  - reader progress persists independently
  - viewer progress persists independently
  - favorite add/remove works
  - annotation create works
  - favorite remains after entitlement-loss scenario

important_rules:
  - reader continuity and viewer continuity are separate paths
  - favorite is allowed even when asset is sample_only and visible
  - favorite/progress/annotation are not auto-deleted on block


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131270_STATIC_ART_OS_PHASE5_LIBRARY_CONTINUITY_DETAILED_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131280_STATIC_ART_OS_PHASE4_5_EXIT_CRITERIA.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131280_STATIC_ART_OS_PHASE4_5_EXIT_CRITERIA.md

# ============================================================
# STATIC ART OS PHASE4_5 EXIT CRITERIA
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

phase_4_exit:
  - effective entitlement read path works
  - access session path works
  - purchase reflection path works
  - subscription reflection path works
  - blocked_by_region works
  - blocked_by_age_policy works
  - blocked_by_rights_change works
  - owned_and_subscription_access works

phase_5_exit:
  - my library works
  - continue reading works
  - continue viewing works
  - reader progress save works
  - viewer progress save works
  - favorite add/remove works
  - annotation create works
  - favorite persistence after entitlement loss is verified

bundled_exit:
  - entitlement and continuity surfaces connect consistently
  - access and library behavior do not conflict
  - reader/viewer separation remains preserved


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131280_STATIC_ART_OS_PHASE4_5_EXIT_CRITERIA.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131290_STATIC_ART_OS_PHASE6_ADMIN_GOVERNANCE_UI_TASK_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131290_STATIC_ART_OS_PHASE6_ADMIN_GOVERNANCE_UI_TASK_LEDGER.md

# ============================================================
# STATIC ART OS PHASE6 ADMIN GOVERNANCE UI TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 6
owner: Boss
prepared_by: Zero

phase_objective:
Implement the admin and governance UI surfaces needed to operate
review, restriction, and audit flows inside StaticArtOS.

phase_scope:
  - review queue screen
  - review detail screen
  - decision panel interaction
  - restriction / delist / audit detail screen
  - support_readonly behavior
  - admin permission boundary reflection in UI

task_units:
  - P6-T001 implement review queue screen binding
  - P6-T002 implement review detail screen binding
  - P6-T003 implement decision panel state binding
  - P6-T004 implement restriction/delist/audit detail screen binding
  - P6-T005 implement support_readonly read-only rendering
  - P6-T006 verify review_admin and policy_admin separation
  - P6-T007 verify UI reads canonical lifecycle/audit state
  - P6-T008 verify Phase 6 exit criteria

screen_targets:
  - SA-AD-001 Review Queue
  - SA-AD-010 Review Detail
  - SA-AD-020 Restriction/Delist/Audit Detail

exit_definition:
  - review queue is visible and filterable
  - review detail shows canonical decision inputs
  - decision panel respects actor role and required reasons
  - audit detail shows blocking effects and reason timeline
  - support_readonly is read-only
  - governance UI reflects canonical lifecycle, review, and audit state

important_rules:
  - UI does not invent governance truth
  - review_admin and policy_admin capabilities must not blur in UI
  - support_readonly never gets write actions


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131290_STATIC_ART_OS_PHASE6_ADMIN_GOVERNANCE_UI_TASK_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131300_STATIC_ART_OS_PHASE7_ACCEPTANCE_REGRESSION_TASK_LEDGER.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131300_STATIC_ART_OS_PHASE7_ACCEPTANCE_REGRESSION_TASK_LEDGER.md

# ============================================================
# STATIC ART OS PHASE7 ACCEPTANCE REGRESSION TASK LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 7
owner: Boss
prepared_by: Zero

phase_objective:
Execute acceptance and regression hardening for the standalone
StaticArtOS implementation.

phase_scope:
  - lifecycle and publish acceptance
  - review and governance acceptance
  - entitlement and access acceptance
  - library and continuity acceptance
  - policy and blocking acceptance
  - audit and permission acceptance
  - non-functional regression
  - unresolved blocker recording

task_units:
  - P7-T001 run lifecycle_and_publish acceptance
  - P7-T002 run review_and_governance acceptance
  - P7-T003 run entitlement_and_access acceptance
  - P7-T004 run library_and_continuity acceptance
  - P7-T005 run policy_and_blocking acceptance
  - P7-T006 run audit_and_permission acceptance
  - P7-T007 run non-functional regression pass
  - P7-T008 record unresolved blockers
  - P7-T009 decide implementation-ready judgement

exit_definition:
  - acceptance groups are executed
  - failures are either fixed or named
  - no hidden blocker remains
  - implementation-ready judgement is explicit

important_rules:
  - acceptance must be end-to-end, not file-presence only
  - unresolved blockers must be named directly
  - Persona-side DB assumptions must remain consistent


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131300_STATIC_ART_OS_PHASE7_ACCEPTANCE_REGRESSION_TASK_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131310_STATIC_ART_OS_PHASE8_DEFERRED_EXTERNAL_INTEGRATION_NOTE.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131310_STATIC_ART_OS_PHASE8_DEFERRED_EXTERNAL_INTEGRATION_NOTE.md

# ============================================================
# STATIC ART OS PHASE8 DEFERRED EXTERNAL INTEGRATION NOTE
# ============================================================

status: deferred
system: StaticArtOS
phase: Phase 8
owner: Boss
prepared_by: Zero

summary:
External knowledge/reference integration is intentionally deferred
from this chat's implementation scope.

deferred_items:
  - CX22073JW integration
  - CX22073JW knowledge payload
  - CX22073JW publish flow
  - cross-chat external reference sync

current_rule:
  - StaticArtOS standalone completion comes first.
  - External integration is not part of this chat's implementation-ready judgement.

note:
  - Exhibition Builder support remains inside StaticArtOS via local derived projection.
  - External knowledge/reference work is handled elsewhere.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131310_STATIC_ART_OS_PHASE8_DEFERRED_EXTERNAL_INTEGRATION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131320_STATIC_ART_OS_STANDALONE_FINAL_ROADMAP.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131320_STATIC_ART_OS_STANDALONE_FINAL_ROADMAP.md

# ============================================================
# STATIC ART OS STANDALONE FINAL ROADMAP
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

standalone_scope:
  - Phase 1: DB foundation
  - Phase 2: creator write backbone
  - Phase 3: self-check / review / publish
  - Phase 4: entitlement / access
  - Phase 5: library / continuity
  - Phase 6: admin / governance UI
  - Phase 7: acceptance / regression
  - Phase 8: external integration deferred

current_judgement_rule:
  - StaticArtOS can be judged implementation-ready without CX22073JW work in this chat.

important_rules:
  - Persona-side DB work uses PERSONA_DATABASE_URL
  - projection remains derived
  - restricted is stronger than delisted
  - favorites survive entitlement loss
  - subscription access never upgrades to permanent ownership


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131320_STATIC_ART_OS_STANDALONE_FINAL_ROADMAP.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md

# ============================================================
# STATIC ART OS IMPLEMENTATION READY FINAL CHECKLIST
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

final_check_groups:
  db_foundation:
    - schema exists
    - required enums exist
    - required tables exist
    - required indexes exist

  creator_write:
    - asset create works
    - localization write works
    - rights write works
    - sales write works
    - subscription write works

  governance_publish:
    - self check works
    - review request works
    - review decision works
    - publish marketplace works
    - publish library only works
    - delist/restrict/archive work
    - audit write works

  entitlement_access:
    - entitlement resolution works
    - full/sample access rules work
    - purchase reflection works
    - subscription reflection works

  library_continuity:
    - library list works
    - continue reading works
    - continue viewing works
    - reader progress works
    - viewer progress works
    - favorite works
    - annotation works

  admin_ui:
    - review queue works
    - review detail works
    - audit detail works
    - support_readonly is read-only

  acceptance_regression:
    - lifecycle_and_publish acceptance passes
    - review_and_governance acceptance passes
    - entitlement_and_access acceptance passes
    - library_and_continuity acceptance passes
    - policy_and_blocking acceptance passes
    - audit_and_permission acceptance passes

implementation_ready_judgement:
  - all required groups pass, or blockers are explicitly recorded and accepted


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131340_STATIC_ART_OS_STANDALONE_MASTER_OPERATION_MANUAL.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131340_STATIC_ART_OS_STANDALONE_MASTER_OPERATION_MANUAL.md

# ============================================================
# STATIC ART OS STANDALONE MASTER OPERATION MANUAL
# ============================================================

status: implementation-prep
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

objective:
Provide the canonical standalone execution and verification order
for StaticArtOS without CX22073JW integration.

scope_included:
  - Phase 1: DB foundation
  - Phase 2: creator write backbone
  - Phase 3: governance and publish backbone
  - Phase 4: entitlement and access
  - Phase 5: library and continuity
  - Phase 6: admin and governance UI
  - Phase 7: acceptance and regression

scope_excluded:
  - CX22073JW integration
  - external knowledge/reference publish
  - cross-chat external sync

environment_rule:
  - PERSONA_DATABASE_URL is the only Persona-side DB target
  - DATABASE_URL must not be used for StaticArtOS Persona-side DB work

recommended_run_order:
  1:
    - Phase 1 apply / verify
  2:
    - Phase 2 binding check
  3:
    - Phase 3 governance/publish check
  4:
    - Phase 4/5 entitlement/library check
  5:
    - Phase 6/7 admin/acceptance check
  6:
    - final standalone full check
  7:
    - completion memo fill
    - implementation-ready judgement

hard_stops:
  - stop if PERSONA_DATABASE_URL is not set
  - stop if Phase 1 DB verification fails
  - stop if any later phase check reports missing required backbone
  - stop if unresolved blockers are not named

standalone_completion_definition:
  - StaticArtOS works as a standalone implementation-ready system
  - external knowledge/reference integration is not required in this chat


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131340_STATIC_ART_OS_STANDALONE_MASTER_OPERATION_MANUAL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131350_STATIC_ART_OS_STANDALONE_PHASE_GATE_MATRIX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131350_STATIC_ART_OS_STANDALONE_PHASE_GATE_MATRIX.md

# ============================================================
# STATIC ART OS STANDALONE PHASE GATE MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

phase_gate_matrix:
  phase_1_to_phase_2:
    required:
      - schema exists
      - enums exist
      - tables exist
      - indexes exist

  phase_2_to_phase_3:
    required:
      - route -> validator -> guard -> service -> repository chain exists
      - creator-side governed writes are structurally bound
      - canonical envelope helpers exist

  phase_3_to_phase_4:
    required:
      - self-check path exists
      - review request path exists
      - review decision path exists
      - publish / delist / restrict / archive paths exist
      - lifecycle transition guard exists

  phase_4_to_phase_5:
    required:
      - entitlement resolution helper exists
      - access-session eligibility path exists
      - purchase/subscription reflection entry points exist

  phase_5_to_phase_6:
    required:
      - library list path exists
      - reader/viewer continuity paths exist
      - favorite / annotation paths exist

  phase_6_to_phase_7:
    required:
      - admin screens exist
      - review decision UI exists
      - support_readonly path is reflected

  final_standalone_gate:
    required:
      - acceptance source exists
      - policy/audit test source exists
      - final checklist exists
      - completion memo exists

important_rules:
  - No gate may be skipped silently
  - blocked phases must record named blockers


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131350_STATIC_ART_OS_STANDALONE_PHASE_GATE_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md

# ============================================================
# STATIC ART OS STANDALONE IMPLEMENTATION READY COMPLETION MEMO TEMPLATE
# ============================================================

status: template
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

execution_date:

environment:
  - PERSONA_DATABASE_URL used for Persona-side DB work: yes_or_no
  - DATABASE_URL used for StaticArtOS Persona-side work: no

phase_status:
  - phase_1_complete: yes_or_no
  - phase_2_complete: yes_or_no
  - phase_3_complete: yes_or_no
  - phase_4_complete: yes_or_no
  - phase_5_complete: yes_or_no
  - phase_6_complete: yes_or_no
  - phase_7_complete: yes_or_no

key_judgements:
  - db_foundation_ready: yes_or_no
  - creator_write_backbone_ready: yes_or_no
  - governance_publish_ready: yes_or_no
  - entitlement_access_ready: yes_or_no
  - library_continuity_ready: yes_or_no
  - admin_governance_ui_ready: yes_or_no
  - acceptance_regression_ready: yes_or_no

blockers:
  - optional

notes:
  - optional

final_judgement:
  - staticart_standalone_implementation_ready: yes_or_no


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131_INDEX.md

# ============================================================
# IMPLEMENTATION ROADMAP INDEX
# ============================================================

status: active
system: StaticArtOS
folder: 131.implementation-roadmap
owner: Boss
prepared_by: Zero

purpose:
- Directory navigation entry point
- Repair-generated because INDEX was missing

subfolders:
- none

files:
- 131100_STATIC_ART_OS_IMPLEMENTATION_ROADMAP.md
- 131110_STATIC_ART_OS_PHASE1_IMPLEMENTATION_TASK_LEDGER.md
- 131120_STATIC_ART_OS_PHASE2_TO_PHASE8_TASK_LEDGER.md
- 131130_STATIC_ART_OS_DEPENDENCY_AND_GATE_MATRIX.md
- 131140_STATIC_ART_OS_PERSONA_ENV_AND_REVIEW_GATE.md
- 131150_STATIC_ART_OS_EXECUTION_CHECKLIST.md
- 131160_STATIC_ART_OS_PHASE3_TO_PHASE8_MASTER_EXECUTION_LEDGER.md
- 131170_STATIC_ART_OS_PHASE3_TO_PHASE8_EXIT_CRITERIA_MATRIX.md
- 131180_STATIC_ART_OS_PHASE4_ENTITLEMENT_AND_ACCESS_TASK_LEDGER.md
- 131190_STATIC_ART_OS_PHASE5_LIBRARY_AND_CONTINUITY_TASK_LEDGER.md
- 131200_STATIC_ART_OS_PHASE6_ADMIN_AND_GOVERNANCE_UI_TASK_LEDGER.md
- 131210_STATIC_ART_OS_PHASE7_CX22073JW_REFERENCE_PUBLISH_TASK_LEDGER.md
- 131220_STATIC_ART_OS_PHASE8_ACCEPTANCE_AND_REGRESSION_TASK_LEDGER.md
- 131230_STATIC_ART_OS_BUNDLED_PROGRESS_MEMO_TEMPLATE.md
- 131240_STATIC_ART_OS_MASTER_NEXT_ACTION_ORDER.md
- 131250_STATIC_ART_OS_PHASE4_5_MASTER_LEDGER.md
- 131260_STATIC_ART_OS_PHASE4_ENTITLEMENT_ACCESS_DETAILED_LEDGER.md
- 131270_STATIC_ART_OS_PHASE5_LIBRARY_CONTINUITY_DETAILED_LEDGER.md
- 131280_STATIC_ART_OS_PHASE4_5_EXIT_CRITERIA.md
- 131290_STATIC_ART_OS_PHASE6_ADMIN_GOVERNANCE_UI_TASK_LEDGER.md
- 131300_STATIC_ART_OS_PHASE7_ACCEPTANCE_REGRESSION_TASK_LEDGER.md
- 131310_STATIC_ART_OS_PHASE8_DEFERRED_EXTERNAL_INTEGRATION_NOTE.md
- 131320_STATIC_ART_OS_STANDALONE_FINAL_ROADMAP.md
- 131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md
- 131340_STATIC_ART_OS_STANDALONE_MASTER_OPERATION_MANUAL.md
- 131350_STATIC_ART_OS_STANDALONE_PHASE_GATE_MATRIX.md
- 131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md
- 131_INDEX.md


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131_OVERVIEW.md

# ============================================================
# IMPLEMENTATION ROADMAP OVERVIEW
# ============================================================

status: active
system: StaticArtOS
folder: 131.implementation-roadmap
owner: Boss
prepared_by: Zero

summary:
- This folder belongs to StaticArtOS standalone implementation-prep flow.
- This overview was repair-generated because OVERVIEW was missing.
- Detailed semantics should continue to live in the canonical files already placed under this folder.

notes:
- Non-destructive generation only.
- Existing files were not overwritten.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132000_STATIC_ART_OS_STANDALONE_COMMAND_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132000_STATIC_ART_OS_STANDALONE_COMMAND_INDEX.md

# ============================================================
# STATIC ART OS STANDALONE COMMAND INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

purpose:
Provides the canonical command entry points for the standalone
StaticArtOS implementation-prep and verification flow.

environment_rule:
  - PERSONA_DATABASE_URL is required for Persona-side DB work
  - DATABASE_URL must not be used for StaticArtOS Persona-side DB work

main_entrypoints:
  help:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh help

  final_check:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh final-check

  phase1_verify:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh phase1-verify

  phase2_check:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh phase2-check

  phase3_check:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh phase3-check

  phase4_5_check:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh phase4-5-check

  phase6_7_check:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh phase6-7-check

  chained_checks:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh chained-checks

notes:
  - This launcher does not replace implementation work.
  - This launcher is the command navigation layer for the standalone pack.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132000_STATIC_ART_OS_STANDALONE_COMMAND_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132010_STATIC_ART_OS_STANDALONE_OPERATION_SHORTCUTS.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132010_STATIC_ART_OS_STANDALONE_OPERATION_SHORTCUTS.md

# ============================================================
# STATIC ART OS STANDALONE OPERATION SHORTCUTS
# ============================================================

status: implementation-prep
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

quick_start:
  1:
    - export PERSONA_DATABASE_URL first
  2:
    - run help
  3:
    - run phase-specific checks
  4:
    - run final-check
  5:
    - fill completion memo

recommended_order:
  - phase1-verify
  - phase2-check
  - phase3-check
  - phase4-5-check
  - phase6-7-check
  - final-check

important_rule:
  - If a lower phase is not stable, do not pretend later phases are complete.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132010_STATIC_ART_OS_STANDALONE_OPERATION_SHORTCUTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132020_STATIC_ART_OS_STANDALONE_PHASE_MAP.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132020_STATIC_ART_OS_STANDALONE_PHASE_MAP.md

# ============================================================
# STATIC ART OS STANDALONE PHASE MAP
# ============================================================

status: implementation-prep
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

phase_map:
  phase_1:
    name: DB foundation
    primary_runner:
      - 121.db-implementation-prep/verification/990_staticart_phase1_full_verify.sh

  phase_2:
    name: creator write backbone
    primary_runner:
      - 122.api-implementation-prep/phase2-checks/990_staticart_phase2_full_check.sh

  phase_3:
    name: governance and publish backbone
    primary_runner:
      - 122.api-implementation-prep/phase3-checks/990_staticart_phase3_full_check.sh

  phase_4_5:
    name: entitlement, access, library, continuity
    primary_runner:
      - 122.api-implementation-prep/phase4-5-checks/990_staticart_phase4_5_full_check.sh

  phase_6_7:
    name: admin UI and acceptance
    primary_runner:
      - 124.test-implementation-prep/phase6-7-checks/990_staticart_phase6_7_full_check.sh

  final:
    name: standalone summary
    primary_runner:
      - 124.test-implementation-prep/final-standalone-checks/999_staticart_standalone_full_check.sh


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132020_STATIC_ART_OS_STANDALONE_PHASE_MAP.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132100_staticart_standalone_master_launcher.sh -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132100_staticart_standalone_master_launcher.sh

#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os"

PHASE1="$BASE/121.db-implementation-prep/verification/990_staticart_phase1_full_verify.sh"
PHASE2="$BASE/122.api-implementation-prep/phase2-checks/990_staticart_phase2_full_check.sh"
PHASE3="$BASE/122.api-implementation-prep/phase3-checks/990_staticart_phase3_full_check.sh"
PHASE45="$BASE/122.api-implementation-prep/phase4-5-checks/990_staticart_phase4_5_full_check.sh"
PHASE67="$BASE/124.test-implementation-prep/phase6-7-checks/990_staticart_phase6_7_full_check.sh"
FINAL="$BASE/124.test-implementation-prep/final-standalone-checks/999_staticart_standalone_full_check.sh"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART STANDALONE MASTER LAUNCHER
============================================================

Usage:
  bash 132100_staticart_standalone_master_launcher.sh help
  bash 132100_staticart_standalone_master_launcher.sh phase1-verify
  bash 132100_staticart_standalone_master_launcher.sh phase2-check
  bash 132100_staticart_standalone_master_launcher.sh phase3-check
  bash 132100_staticart_standalone_master_launcher.sh phase4-5-check
  bash 132100_staticart_standalone_master_launcher.sh phase6-7-check
  bash 132100_staticart_standalone_master_launcher.sh chained-checks
  bash 132100_staticart_standalone_master_launcher.sh final-check

Environment:
  PERSONA_DATABASE_URL is required for Persona-side DB work.
TEXT
}

require_env() {
  if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
    echo "ERROR: PERSONA_DATABASE_URL is not set"
    exit 1
  fi
}

require_file() {
  local file="$1"
  if [ ! -f "$file" ]; then
    echo "ERROR: missing runner -> $file"
    exit 1
  fi
}

run_one() {
  local label="$1"
  local file="$2"
  printf '\n============================================================\n'
  printf 'RUN: %s\n' "$label"
  printf '============================================================\n'
  require_file "$file"
  bash "$file"
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;

  phase1-verify)
    require_env
    run_one "PHASE1 VERIFY" "$PHASE1"
    ;;

  phase2-check)
    require_env
    run_one "PHASE2 CHECK" "$PHASE2"
    ;;

  phase3-check)
    require_env
    run_one "PHASE3 CHECK" "$PHASE3"
    ;;

  phase4-5-check)
    require_env
    run_one "PHASE4_5 CHECK" "$PHASE45"
    ;;

  phase6-7-check)
    require_env
    run_one "PHASE6_7 CHECK" "$PHASE67"
    ;;

  chained-checks)
    require_env
    run_one "PHASE1 VERIFY" "$PHASE1"
    run_one "PHASE2 CHECK" "$PHASE2"
    run_one "PHASE3 CHECK" "$PHASE3"
    run_one "PHASE4_5 CHECK" "$PHASE45"
    run_one "PHASE6_7 CHECK" "$PHASE67"
    ;;

  final-check)
    require_env
    run_one "FINAL STANDALONE CHECK" "$FINAL"
    ;;

  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132100_staticart_standalone_master_launcher.sh -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132110_STATIC_ART_OS_STANDALONE_HANDOFF_NOTE.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132110_STATIC_ART_OS_STANDALONE_HANDOFF_NOTE.md

# ============================================================
# STATIC ART OS STANDALONE HANDOFF NOTE
# ============================================================

status: implementation-prep
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

handoff_summary:
  - StaticArtOS standalone roadmap is organized
  - phase-level check runners exist
  - master launcher exists
  - PERSONA_DATABASE_URL is the Persona-side DB rule
  - CX22073JW work is deferred outside this chat

operator_next_action:
  - export PERSONA_DATABASE_URL
  - run master launcher help
  - run phase checks in order
  - record blockers in completion memo


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132110_STATIC_ART_OS_STANDALONE_HANDOFF_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132_OVERVIEW.md

# ============================================================
# OPERATIONS OVERVIEW
# ============================================================

status: active
system: StaticArtOS
folder: 132.operations
owner: Boss
prepared_by: Zero

summary:
- This folder belongs to StaticArtOS standalone implementation-prep flow.
- This overview was repair-generated because OVERVIEW was missing.
- Detailed semantics should continue to live in the canonical files already placed under this folder.

notes:
- Non-destructive generation only.
- Existing files were not overwritten.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132_ROADMAP.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132_ROADMAP.md

# ============================================================
# 132 OPERATIONS ROADMAP
# ============================================================

status: active
system: StaticArtOS
owner: Boss
prepared_by: Zero

summary:
- This roadmap file was repair-generated for operations-oriented navigation.
- Detailed execution commands remain in the canonical operation and check files.

operation_flow:
- confirm PERSONA_DATABASE_URL
- run the relevant phase check or launcher
- record blockers
- update completion memo


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132_ROADMAP.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/999.summary/999900_STATIC_ART_OS_IMPLEMENTATION_READY_SUMMARY.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/999.summary/999900_STATIC_ART_OS_IMPLEMENTATION_READY_SUMMARY.md

# ============================================================
# STATIC ART OS IMPLEMENTATION READY SUMMARY
# ============================================================

status: implementation-ready
system: StaticArtOS
owner: Boss
prepared_by: Zero

conclusion:
StaticArtOS is not treated as skeleton-only design.
StaticArtOS is treated as implementation-ready integrated detailed design.

what_is_fixed:
  - database exact schema direction
  - state transition exactness
  - API exactness
  - screen and stateflow exactness
  - permission exactness
  - policy exactness
  - CX22073JW reference integration exactness
  - acceptance and test exactness

practical_meaning:
  - backend implementation can start without major DB/API ambiguity
  - frontend implementation can start without major UI/stateflow ambiguity
  - governance and restriction behavior is fixed
  - Exhibition Builder boundary is fixed
  - continuity behavior for reader/viewer is fixed
  - acceptance target is fixed

important_guardrails:
  - projection is derived, never canonical
  - restriction is stronger than delist
  - favorite/progress/annotation survive entitlement loss unless user deletes them
  - subscription access never becomes permanent ownership
  - creator cannot self-approve
  - archived assets cannot be republished

next_stage_options:
  - split into implementation file skeletons
  - convert exactness docs into endpoint/spec/task ledgers
  - bind development tickets and migration order


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/999.summary/999900_STATIC_ART_OS_IMPLEMENTATION_READY_SUMMARY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/999.summary/999_INDEX.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/999.summary/999_INDEX.md

# ============================================================
# SUMMARY INDEX
# ============================================================

status: active
system: StaticArtOS
folder: 999.summary
owner: Boss
prepared_by: Zero

purpose:
- Directory navigation entry point
- Repair-generated because INDEX was missing

subfolders:
- none

files:
- 999900_STATIC_ART_OS_IMPLEMENTATION_READY_SUMMARY.md
- 999_INDEX.md


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/999.summary/999_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/999.summary/999_OVERVIEW.md -->

## FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/999.summary/999_OVERVIEW.md

# ============================================================
# SUMMARY OVERVIEW
# ============================================================

status: active
system: StaticArtOS
folder: 999.summary
owner: Boss
prepared_by: Zero

summary:
- This folder belongs to StaticArtOS standalone implementation-prep flow.
- This overview was repair-generated because OVERVIEW was missing.
- Detailed semantics should continue to live in the canonical files already placed under this folder.

notes:
- Non-destructive generation only.
- Existing files were not overwritten.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/999.summary/999_OVERVIEW.md -->
