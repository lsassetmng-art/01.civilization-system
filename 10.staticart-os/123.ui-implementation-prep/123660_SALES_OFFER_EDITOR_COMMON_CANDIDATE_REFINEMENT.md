# ============================================================
# SALES OFFER EDITOR COMMON CANDIDATE REFINEMENT
# ============================================================

status: candidate-refinement
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Refines the candidate boundary for Sales Offer Editor Common
so it can later move from later-wave audit
toward promotion design readiness.

current_hold_reason:
- still partially tied to marketplace price model details
- boundary between generic offer editing and StaticArtOS-specific commerce semantics is not fully clean

refined_candidate_intent:
- treat Sales Offer Editor Common as a reusable offer-definition editor family
- keep exact StaticArtOS sales semantics outside the common boundary

candidate_should_own:
- base price input/editing
- base currency selection hook
- sale type selection
- sale period input/editing
- listing-ready offer summary
- offer validation summary
- draft-safe offer save behavior

candidate_should_not_own:
- pricing strategy logic
- tax logic
- settlement execution
- StaticArtOS-specific commerce copy
- entitlement resolution
- marketplace ranking logic

reuse_scope_if_promoted:
- commerce-enabled creator applications
- marketplace-connected asset applications
- digital offer editing surfaces
- listing-preparation flows

required_future_evidence:
- second consumer using generic offer editing
- cleaner separation from listing editor and subscription eligibility editor
- stable offer field group contract

recommended_relation_check:
- Marketplace Listing Common
- Multicurrency Price Display Common
- Subscription Eligibility Editor Common

refinement_judgment:
- candidate remains later-wave
- but boundary is now clearer
- next step should be promotion-design only after second consumer or stronger cross-system reuse evidence
