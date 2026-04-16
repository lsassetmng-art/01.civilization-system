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
