# ============================================================
# RESTRICTION POLICY SUMMARY COMMON CANDIDATE REFINEMENT
# ============================================================

status: candidate-refinement
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Refines the candidate boundary for Restriction Policy Summary Common
so it can later move from later-wave audit
toward promotion design readiness.

current_hold_reason:
- policy taxonomy is not stable enough yet
- boundary between generic restriction summary and StaticArtOS-specific access logic is still partial

refined_candidate_intent:
- treat Restriction Policy Summary Common as a reusable policy-summary display family
- keep exact restriction decision engines outside the common boundary

candidate_should_own:
- blocked reason summary
- restriction explanation rendering
- denial reason badge rendering
- compact/full restriction summary modes
- generic safe-summary presentation

candidate_should_not_own:
- exact policy engine logic
- entitlement enforcement runtime
- app-specific moderation logic
- StaticArtOS-specific wording taxonomy
- override/bypass flow ownership

reuse_scope_if_promoted:
- policy-driven access applications
- restricted catalog/detail surfaces
- governance-aware content applications
- safe-access summary panels

required_future_evidence:
- stronger stable restriction taxonomy
- second consumer for reusable restriction-summary rendering
- clearer split from exact enforcement logic

recommended_relation_check:
- Rights Policy Editor Common
- Review Queue Common
- Exhibition Eligibility Badge Common

refinement_judgment:
- candidate remains later-wave
- boundary is clearer
- promotion-design should wait for stronger taxonomy stability
