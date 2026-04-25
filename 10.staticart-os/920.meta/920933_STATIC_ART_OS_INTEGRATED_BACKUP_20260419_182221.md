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

