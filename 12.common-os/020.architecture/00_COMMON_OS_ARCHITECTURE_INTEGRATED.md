# COMMON OS ARCHITECTURE INTEGRATED

status: canonical
system: CommonOS
layer: architecture
generated_at: 2026-04-21T17:31:11+0900
source_root: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture

## Integration scope
This integrated file combines the architecture-layer canon of CommonOS, including the application common component sub-system.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/000000_COMMON_OS_ARCHITECTURE_INDEX.md -->
<!-- ============================================================ -->

# COMMON OS ARCHITECTURE INDEX

status: canonical
layer: architecture

## Documents
- 000000_COMMON_OS_ARCHITECTURE_INDEX.md
- 000001_COMMON_OS_ARCHITECTURE_OVERVIEW.md
- 000010_COMMON_OS_SHARED_UI_ARCHITECTURE_CANONICAL.md
- 000020_COMMON_OS_COMPONENT_LAYER_ARCHITECTURE_CANONICAL.md
- 000030_COMMON_OS_APP_COMMON_POSITIONING_CANONICAL.md
- 000040_COMMON_OS_ERP_SHARED_UI_APPLICABILITY_CANONICAL.md
- 000050_COMMON_OS_OFFLINE_FIRST_ARCHITECTURE_CANONICAL.md

## Application common component subsystem

### Canonical position
Application common components are formally curated under CommonOS architecture, not under historical application-common-components branches.

### Canonical reading path
1. 000100_APPLICATION_COMMON_COMPONENT_INDEX.md
2. 000101_APPLICATION_COMMON_COMPONENT_OVERVIEW.md
3. 000110_APPLICATION_COMMON_COMPONENT_OFFICIAL_REVIEW_CANONICAL.md
4. 000120_APPLICATION_COMMON_COMPONENT_STATIC_ART_ORIGIN_REVIEW.md
5. 000130_APPLICATION_COMMON_COMPONENT_STATIC_ART_REFLECTION_CANONICAL.md
6. 000140_APPLICATION_COMMON_COMPONENT_CURRENT_STATE_SUMMARY.md
7. 000150_APPLICATION_COMMON_COMPONENT_CATALOG_CURRENT_WAVE_CANONICAL.md
8. 000160_APPLICATION_COMMON_COMPONENT_LATER_WAVE_HOLD_CANONICAL.md
9. 00_APPLICATION_COMMON_COMPONENT_INTEGRATED.md

### Subsystem note
StaticArtOS-origin materials are treated as origin evidence and source-side review inputs. CommonOS architecture remains the canonical home for formal common component design.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/000001_COMMON_OS_ARCHITECTURE_OVERVIEW.md -->
<!-- ============================================================ -->

# COMMON OS ARCHITECTURE OVERVIEW

status: canonical
layer: architecture

## Purpose
This layer describes how CommonOS is structurally composed and how it is applied across systems.

## Core topics
- Shared UI layer stack
- Component layering
- app_common positioning
- ERP applicability
- Offline-first architecture

## Application common component subsystem overview

### Position
Application common components are a formal sub-system within CommonOS architecture. They capture reusable UI families, presentation utilities, shell patterns, and non-UI shared bases.

### Role split
- CommonOS side:
  - formal canonical review
  - naming normalization
  - current-wave acceptance
  - hold policy
  - integrated reading path
- Origin side such as StaticArtOS:
  - extraction
  - audit
  - source evidence
  - origin-side review

### Current operational meaning
Current-wave accepted means design-level adoption into CommonOS canon. It does not yet mean buildable implementation has already been created.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/000010_COMMON_OS_SHARED_UI_ARCHITECTURE_CANONICAL.md -->
<!-- ============================================================ -->

# COMMON OS SHARED UI ARCHITECTURE CANONICAL

status: canonical
layer: architecture

## Canonical UI layer stack
1. Token layer
2. Primitive layout layer
3. Base control layer
4. Composite interaction pattern layer
5. App shell and navigation layer
6. Sync and queue presentation layer
7. Domain wrapper layer

## Rules
- Shared UI canon is HTML-based.
- PC, smartphone, and tablet do not split the UI canon.
- Density, layout, and capability differences are absorbed through variants and responsive behavior.
- Domain wrappers may compose shared parts but must not fork core component behavior without review.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/000020_COMMON_OS_COMPONENT_LAYER_ARCHITECTURE_CANONICAL.md -->
<!-- ============================================================ -->

# COMMON OS COMPONENT LAYER ARCHITECTURE CANONICAL

status: canonical
layer: architecture

## Component layers
- Primitive: spacing, stack, grid, typography hooks, surface
- Base controls: button, input, select, checkbox, radio, switch
- Data display: table, list, card, badge, status chip, pagination
- Feedback: toast, snackbar, dialog, modal, confirm UI
- Navigation: tabs, drawer, app shell, header, footer
- Sync presentation: offline queue status, retry, conflict, progress

## Extension rule
Variants extend presentation. Domain wrappers extend usage context. Neither may redefine business authority.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/000030_COMMON_OS_APP_COMMON_POSITIONING_CANONICAL.md -->
<!-- ============================================================ -->

# COMMON OS APP_COMMON POSITIONING CANONICAL

status: canonical
layer: architecture

## Position
app_common is the shared mutable metadata schema candidate for CommonOS. It is not an OS. It is not a domain business-truth schema.

## Allowed scope
- theme registry
- design tokens
- component catalog and variants
- slot rules
- locale keys and translations
- copy, help, export, notification templates
- screen templates
- form metadata
- sync, retry, and queue visual rules
- accessibility presets
- attachment policies
- client capability registry

## Excluded scope
- domain transactions
- ERP voucher truth
- domain user-private truth
- pricing logic
- entitlement logic
- access logic
- AI prompt canon
- secrets



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/000040_COMMON_OS_ERP_SHARED_UI_APPLICABILITY_CANONICAL.md -->
<!-- ============================================================ -->

# COMMON OS ERP SHARED UI APPLICABILITY CANONICAL

status: canonical
layer: architecture

## ERP applicability statement
ERP is one of the highest-fit targets for CommonOS adoption.

## High-fit ERP surfaces
- list screens
- detail screens
- input forms
- approval views
- draft screens
- attachment panels
- search and filter panels
- dashboards
- status surfaces
- offline and sync presentation

## Excluded ERP areas
- accounting core logic
- inventory calculation core
- cost calculation core
- approval authority logic
- company-specific truth
- voucher finalization logic
- audit decision logic

## ERP design rule
ERP-specific density is allowed through variants such as input.erp_dense. ERP does not receive a separate UI canon.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/000050_COMMON_OS_OFFLINE_FIRST_ARCHITECTURE_CANONICAL.md -->
<!-- ============================================================ -->

# COMMON OS OFFLINE FIRST ARCHITECTURE CANONICAL

status: canonical
layer: architecture

## Standard model
- UI is operable on local state first
- draft and edit state can be stored locally
- send-intent can be placed into a local outbox queue
- server sync occurs when conditions permit
- user-facing queue state is standardized by CommonOS
- business meaning of queue items remains domain-owned

## Local persistence categories
- UI assets cache
- structured local state
- local outbox queue
- temporary local attachment storage

## Sync triggers
- app launch
- foreground resume
- network recovery
- manual sync
- sendability satisfied



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/000100_APPLICATION_COMMON_COMPONENT_INDEX.md -->
<!-- ============================================================ -->

# APPLICATION COMMON COMPONENT INDEX

status: canonical
system: CommonOS
layer: architecture
scope: application common component canonical set

## Purpose
This document is the entry point for the application common component canonical set maintained under CommonOS architecture.

## Canonical rule
The canonical home of application common component design is:
- /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture

Historical materials from application-common-components or origin systems may exist, but they are origin evidence or migrated sources, not the active canonical branch.

## Reading order
1. 000101_APPLICATION_COMMON_COMPONENT_OVERVIEW.md
2. 000110_APPLICATION_COMMON_COMPONENT_OFFICIAL_REVIEW_CANONICAL.md
3. 000120_APPLICATION_COMMON_COMPONENT_STATIC_ART_ORIGIN_REVIEW.md
4. 000130_APPLICATION_COMMON_COMPONENT_STATIC_ART_REFLECTION_CANONICAL.md
5. 000140_APPLICATION_COMMON_COMPONENT_CURRENT_STATE_SUMMARY.md
6. 000150_APPLICATION_COMMON_COMPONENT_CATALOG_CURRENT_WAVE_CANONICAL.md
7. 000160_APPLICATION_COMMON_COMPONENT_LATER_WAVE_HOLD_CANONICAL.md
8. 00_APPLICATION_COMMON_COMPONENT_INTEGRATED.md

## Files in this sub-system
- 000100_APPLICATION_COMMON_COMPONENT_INDEX.md
- 000101_APPLICATION_COMMON_COMPONENT_OVERVIEW.md
- 000110_APPLICATION_COMMON_COMPONENT_OFFICIAL_REVIEW_CANONICAL.md
- 000120_APPLICATION_COMMON_COMPONENT_STATIC_ART_ORIGIN_REVIEW.md
- 000130_APPLICATION_COMMON_COMPONENT_STATIC_ART_REFLECTION_CANONICAL.md
- 000140_APPLICATION_COMMON_COMPONENT_CURRENT_STATE_SUMMARY.md
- 000150_APPLICATION_COMMON_COMPONENT_CATALOG_CURRENT_WAVE_CANONICAL.md
- 000160_APPLICATION_COMMON_COMPONENT_LATER_WAVE_HOLD_CANONICAL.md
- 00_APPLICATION_COMMON_COMPONENT_INTEGRATED.md



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/000101_APPLICATION_COMMON_COMPONENT_OVERVIEW.md -->
<!-- ============================================================ -->

# APPLICATION COMMON COMPONENT OVERVIEW

status: canonical
system: CommonOS
layer: architecture

## Summary
Application common components are reusable component families and shared bases that are formally curated by CommonOS. Their canonical design, official review, reflection, and integrated reading path belong in CommonOS architecture.

## Canonical ownership
- Canonical home: CommonOS / 020.architecture
- Origin-side role: evidence, audit, extraction, source-side review
- CommonOS-side role: normalization, official review, reflection, current-wave catalog, hold policy, integrated canon

## Important boundary
CommonOS standardizes reusable UI, presentation utility, shell patterns, and non-UI shared bases. CommonOS does not absorb domain business canon, secrets, pricing logic, entitlement logic, access logic, or domain transaction truth.

## Current state
- StaticArtOS provides substantial origin evidence and extracted candidate families.
- Current-wave families are accepted at design level.
- Buildable implementation artifacts are still pending.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/000110_APPLICATION_COMMON_COMPONENT_OFFICIAL_REVIEW_CANONICAL.md -->
<!-- ============================================================ -->

# APPLICATION COMMON COMPONENT OFFICIAL REVIEW CANONICAL

status: canonical
system: CommonOS
layer: architecture

## Review purpose
This document defines the rules for promoting an origin-side candidate into the CommonOS application common component canonical set.

## Promotion requirements
A candidate should satisfy all of the following:
1. It is not locked to one app-only wording or one origin-only naming habit.
2. It can be reused across multiple apps, OSs, or ERP surfaces.
3. It fits CommonOS boundary rules.
4. It does not carry domain transaction truth.
5. It does not require secrets or privileged server authority in the client package.
6. It can be normalized into a stable common-family name.
7. It has origin evidence or source review.
8. Its layer can be explained clearly.

## Common layer families
- UI primitive or shell
- UI composite or feature common
- Presentation utility or interaction pattern
- Non-UI shared base

## Rejection or hold triggers
- Too origin-specific
- Business canon mixed into presentation
- Runtime and presentation mixed without layer split
- Family duplication unresolved
- No clear second-use possibility
- Naming remains unstable

## Status progression
- origin_discovered
- origin_reviewed
- family_normalized
- common_review_pending
- current_wave_accepted
- hold
- implementation_ready
- implemented
- adopted
- superseded
- rejected



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/000120_APPLICATION_COMMON_COMPONENT_STATIC_ART_ORIGIN_REVIEW.md -->
<!-- ============================================================ -->

# APPLICATION COMMON COMPONENT STATIC ART ORIGIN REVIEW

status: canonical
system: CommonOS
layer: architecture
origin_system: StaticArtOS

## Position of StaticArt
StaticArtOS is an origin-side source of evidence, extraction, and source review for application common component candidates. It is not the active canonical home for application common component formalization.

## StaticArt current-wave extracted families

### Foundation / base group
- Screen Shell Common
- State Panel Common
- Action Button Common
- canonical response envelope helper
- canonical error envelope helper
- permission guard base
- validator helper set
- idempotency service base
- StaticArtError / error-code base pattern
- lifecycle transition helper base

### Application feature group
- Asset Metadata Editor Common
- Marketplace Listing Common
- Marketplace Filter Panel Common
- Product Card Common
- Library Shelf Common
- Multilingual Label Common
- Multicurrency Price Display Common
- Review Queue Common
- Asset Upload Common
- Rights Policy Editor Common
- Marketplace Sort Panel Common
- Product Detail Summary Common
- Owned Badge Common
- Subscription Included Badge Common
- Bookmark Common
- Favorite Toggle Common

## Same-family fixed normalizations already acknowledged
- ProductCard -> Product Card Common
- LibraryShelf -> Library Shelf Common

## Origin interpretation rule
These origin-side materials are accepted as evidence and extraction basis. Formal CommonOS canonical wording is maintained under CommonOS architecture.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/000130_APPLICATION_COMMON_COMPONENT_STATIC_ART_REFLECTION_CANONICAL.md -->
<!-- ============================================================ -->

# APPLICATION COMMON COMPONENT STATIC ART REFLECTION CANONICAL

status: canonical
system: CommonOS
layer: architecture

## Reflection purpose
This document records what CommonOS formally reflects from StaticArt-origin common component evidence.

## Reflected decisions
1. CommonOS accepts StaticArt-origin current-wave families as design-level accepted candidates for the shared foundation.
2. CommonOS keeps StaticArt as origin evidence, not as the canonical home.
3. Same-family normalization is adopted in CommonOS wording.
4. Current-wave accepted does not mean implemented.
5. Hold-state families remain outside the current-wave catalog until boundary clarity improves.

## Naming normalization direction
- ProductCard becomes Product Card Common
- LibraryShelf becomes Library Shelf Common
- ScreenShell should be treated as Screen Shell Common
- StatePanel should be treated as State Panel Common
- ActionButton should be treated as Action Button Common

## Reflection boundary
What gets reflected:
- reusable family meaning
- origin evidence
- naming normalization
- hold rationale
- adoption direction

What does not get reflected as CommonOS canon:
- StaticArt-only business canon
- StaticArt-only workflow assumptions
- domain transaction truth



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/000140_APPLICATION_COMMON_COMPONENT_CURRENT_STATE_SUMMARY.md -->
<!-- ============================================================ -->

# APPLICATION COMMON COMPONENT CURRENT STATE SUMMARY

status: canonical
system: CommonOS
layer: architecture

## Current-state summary
Application common components are now canonically managed in CommonOS architecture.

## Canonical position
- Canonical home: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture
- Origin evidence: allowed in origin systems such as StaticArtOS
- Old application-common-components area: historical / migrated source only

## Current-wave status
- design accepted
- implementation pending
- suitable for future implementation planning and adoption review

## Hold status
Hold families remain outside the current-wave accepted set until one or more of the following become true:
- stronger evidence
- second consumer
- clear layer split
- cleaner family naming
- improved CommonOS boundary confidence

## Parallel canonical prohibition
Do not create a second active canonical branch for application common components outside CommonOS architecture.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/000150_APPLICATION_COMMON_COMPONENT_CATALOG_CURRENT_WAVE_CANONICAL.md -->
<!-- ============================================================ -->

# APPLICATION COMMON COMPONENT CATALOG CURRENT WAVE CANONICAL

status: canonical
system: CommonOS
layer: architecture

## Interpretation
All entries below are current-wave accepted at design level and remain implementation pending.

## Group A: UI primitive / shell
- Screen Shell Common
- State Panel Common
- Action Button Common

## Group B: UI composite / feature common
- Asset Metadata Editor Common
- Marketplace Listing Common
- Marketplace Filter Panel Common
- Product Card Common
- Library Shelf Common
- Review Queue Common
- Asset Upload Common
- Rights Policy Editor Common
- Marketplace Sort Panel Common
- Product Detail Summary Common

## Group C: presentation utility / interaction pattern
- Multilingual Label Common
- Multicurrency Price Display Common
- Owned Badge Common
- Subscription Included Badge Common
- Bookmark Common
- Favorite Toggle Common

## Group D: non-UI shared base
- canonical response envelope helper
- canonical error envelope helper
- permission guard base
- validator helper set
- idempotency service base
- StaticArtError / error-code base pattern
- lifecycle transition helper base

## Catalog rule
This catalog is CommonOS canonical. Origin-side references may support it, but must not replace it.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/000160_APPLICATION_COMMON_COMPONENT_LATER_WAVE_HOLD_CANONICAL.md -->
<!-- ============================================================ -->

# APPLICATION COMMON COMPONENT LATER WAVE HOLD CANONICAL

status: canonical
system: CommonOS
layer: architecture

## Hold families
- Continue Reading / Continue Viewing Common
- Reader Progress Sync Common
- Viewer Progress Sync Common
- Sales Offer Editor Common
- Subscription Eligibility Editor Common
- Sample Access Common
- Restriction Policy Summary Common
- Exhibition Eligibility Badge Common
- Allowed Actions Panel Common
- Asset Summary Rail Common
- Workspace Tab Navigation Common
- Review Decision Panel Common

## Fixed hold interpretation for continuity / progress family
Do not force these into one component family yet:
- Continue Reading / Continue Viewing Common
- Reader Progress Sync Common
- Viewer Progress Sync Common

Reason:
- Continue Reading / Continue Viewing Common belongs to presentation layer.
- Reader Progress Sync Common belongs to reading runtime layer.
- Viewer Progress Sync Common belongs to viewing runtime layer.

## Promotion conditions from hold to current wave
- stronger evidence
- second consumer
- clear layer split
- family naming stability
- CommonOS boundary confidence
- reusable presentation or shared-base value without domain canon leakage



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture/00_APPLICATION_COMMON_COMPONENT_INTEGRATED.md -->
<!-- ============================================================ -->

# APPLICATION COMMON COMPONENT INTEGRATED

status: canonical
system: CommonOS
layer: architecture

## 1. Canonical statement
The canonical home of application common component formal design is CommonOS architecture:
- /data/data/com.termux/files/home/01.civilization-system/12.common-os/020.architecture

Historical application-common-components assets and StaticArt-origin materials may remain as source evidence, but they are not the active canonical branch.

## 2. Role split
### CommonOS
- formal design canon
- naming normalization
- official review
- reflection
- current-wave accepted catalog
- hold policy
- integrated reading path

### Origin systems
- extraction
- audit
- source evidence
- origin-side review
- source-side notes

## 3. Review logic
Candidates become CommonOS application common components only when they satisfy reuse, boundary safety, naming stability, and non-domain-truth requirements.

## 4. StaticArt-origin reflected current wave
### Foundation / base
- Screen Shell Common
- State Panel Common
- Action Button Common
- canonical response envelope helper
- canonical error envelope helper
- permission guard base
- validator helper set
- idempotency service base
- StaticArtError / error-code base pattern
- lifecycle transition helper base

### Application feature
- Asset Metadata Editor Common
- Marketplace Listing Common
- Marketplace Filter Panel Common
- Product Card Common
- Library Shelf Common
- Multilingual Label Common
- Multicurrency Price Display Common
- Review Queue Common
- Asset Upload Common
- Rights Policy Editor Common
- Marketplace Sort Panel Common
- Product Detail Summary Common
- Owned Badge Common
- Subscription Included Badge Common
- Bookmark Common
- Favorite Toggle Common

## 5. Hold set
- Continue Reading / Continue Viewing Common
- Reader Progress Sync Common
- Viewer Progress Sync Common
- Sales Offer Editor Common
- Subscription Eligibility Editor Common
- Sample Access Common
- Restriction Policy Summary Common
- Exhibition Eligibility Badge Common
- Allowed Actions Panel Common
- Asset Summary Rail Common
- Workspace Tab Navigation Common
- Review Decision Panel Common

## 6. Fixed rules
- canonical home is CommonOS architecture
- StaticArt is origin evidence, not active canon home
- parallel canonical branches are not allowed
- current-wave accepted means design accepted, implementation pending
- app_common may later store metadata about these families, but not domain truth

## 7. Related documents
- 000100_APPLICATION_COMMON_COMPONENT_INDEX.md
- 000101_APPLICATION_COMMON_COMPONENT_OVERVIEW.md
- 000110_APPLICATION_COMMON_COMPONENT_OFFICIAL_REVIEW_CANONICAL.md
- 000120_APPLICATION_COMMON_COMPONENT_STATIC_ART_ORIGIN_REVIEW.md
- 000130_APPLICATION_COMMON_COMPONENT_STATIC_ART_REFLECTION_CANONICAL.md
- 000140_APPLICATION_COMMON_COMPONENT_CURRENT_STATE_SUMMARY.md
- 000150_APPLICATION_COMMON_COMPONENT_CATALOG_CURRENT_WAVE_CANONICAL.md
- 000160_APPLICATION_COMMON_COMPONENT_LATER_WAVE_HOLD_CANONICAL.md

