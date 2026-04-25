# ============================================================
# REVIEW DECISION PANEL COMMON CANDIDATE REFINEMENT
# ============================================================

status: candidate-refinement
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Refines the candidate boundary for ReviewDecisionPanel
so it can later move from later-wave audit
toward promotion design readiness.

current_hold_reason:
- useful reviewed-surface candidate
- decision-set variance is still high

refined_candidate_intent:
- treat Review Decision Panel Common as a reusable decision-action summary family
- keep exact decision persistence and app-specific decision vocabularies outside the common boundary

candidate_should_own:
- decision action group rendering
- decision summary rendering
- optional reason-entry hook
- blocked-action summary
- compact/full review-decision panel states

candidate_should_not_own:
- exact decision persistence mapping
- StaticArtOS-specific governance lifecycle
- moderation penalty logic
- app-specific decision wording
- workflow routing engine

reuse_scope_if_promoted:
- governance-heavy applications
- review-driven admin surfaces
- approval/review detail pages
- moderated decision panels

required_future_evidence:
- stronger generic decision-set contract
- second consumer beyond current review flow
- cleaner split from Review Queue Common and Approval-style families

recommended_relation_check:
- Review Queue Common
- ActionButton
- StatePanel
- permission guard base

refinement_judgment:
- candidate remains later-wave
- boundary is clearer
- promotion-design should wait for stronger generic decision contract
