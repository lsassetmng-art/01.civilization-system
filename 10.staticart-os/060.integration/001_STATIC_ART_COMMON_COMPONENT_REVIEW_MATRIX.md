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
