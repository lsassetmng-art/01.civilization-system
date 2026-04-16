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
