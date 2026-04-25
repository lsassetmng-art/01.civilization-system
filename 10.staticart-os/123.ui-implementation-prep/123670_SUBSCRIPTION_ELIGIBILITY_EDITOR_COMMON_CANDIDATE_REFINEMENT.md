# ============================================================
# SUBSCRIPTION ELIGIBILITY EDITOR COMMON CANDIDATE REFINEMENT
# ============================================================

status: candidate-refinement
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Refines the candidate boundary for Subscription Eligibility Editor Common
so it can later move from later-wave audit
toward promotion design readiness.

current_hold_reason:
- eligibility contract is not stable enough yet
- boundary between generic inclusion editor and StaticArtOS-specific subscription semantics is still partial

refined_candidate_intent:
- treat Subscription Eligibility Editor Common as a reusable inclusion-window and inclusion-rule editor family
- keep exact StaticArtOS subscription rule semantics outside the common boundary

candidate_should_own:
- inclusion flag editing
- start/end window editing
- creator opt-in editing
- inclusion note editing
- inclusion validation summary
- draft-safe eligibility save behavior

candidate_should_not_own:
- billing logic
- membership entitlement engine
- app-specific subscription economics
- StaticArtOS-specific access semantics
- recommendation/ranking behavior

reuse_scope_if_promoted:
- subscription-enabled content applications
- membership-enabled creator applications
- inclusion-rule editing surfaces
- recurring-access catalog preparation flows

required_future_evidence:
- second consumer using reusable inclusion editing
- clearer boundary from Membership Program Manager-like families in other systems
- stable rule field contract

recommended_relation_check:
- Subscription Included Badge Common
- Membership Program Manager Common
- Rights Policy Editor Common

refinement_judgment:
- candidate remains later-wave
- but boundary is now clearer
- next step should be promotion-design only after stronger reuse evidence or cross-system confirmation
