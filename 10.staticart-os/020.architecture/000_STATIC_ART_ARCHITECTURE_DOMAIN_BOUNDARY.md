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
