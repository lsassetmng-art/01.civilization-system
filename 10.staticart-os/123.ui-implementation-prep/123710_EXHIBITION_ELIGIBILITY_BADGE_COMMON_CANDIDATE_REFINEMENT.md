# ============================================================
# EXHIBITION ELIGIBILITY BADGE COMMON CANDIDATE REFINEMENT
# ============================================================

status: candidate-refinement
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Refines the candidate boundary for Exhibition Eligibility Badge Common
so it can later move from later-wave audit
toward promotion design readiness.

current_hold_reason:
- eligibility source-of-truth contract is still partial
- exhibition relation is promising but not yet broadly stabilized outside StaticArtOS

refined_candidate_intent:
- treat Exhibition Eligibility Badge Common as a reusable eligibility-indicator family
- keep exact eligibility computation outside the common boundary

candidate_should_own:
- eligible / ineligible badge rendering
- compact/full badge variants
- explanation hook for eligibility summary
- safe unknown-state rendering

candidate_should_not_own:
- exact exhibition eligibility logic
- entitlement/rights computation engine
- StaticArtOS-specific Exhibition Builder integration logic
- projection refresh logic

reuse_scope_if_promoted:
- exhibition-connected applications
- creator tools
- asset detail surfaces
- eligibility-aware catalog/detail applications

required_future_evidence:
- stronger eligibility source contract
- second consumer beyond current exhibition relation
- clearer separation from rights-policy editing and projection logic

recommended_relation_check:
- Rights Policy Editor Common
- Restriction Policy Summary Common
- Product Detail Summary Common

refinement_judgment:
- candidate remains later-wave
- boundary is clearer
- promotion-design should wait for stronger source-of-truth clarity
