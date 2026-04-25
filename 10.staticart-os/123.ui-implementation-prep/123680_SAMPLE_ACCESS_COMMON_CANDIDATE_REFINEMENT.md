# ============================================================
# SAMPLE ACCESS COMMON CANDIDATE REFINEMENT
# ============================================================

status: candidate-refinement
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Refines the candidate boundary for Sample Access Common
so it can later move from later-wave audit
toward promotion design readiness.

current_hold_reason:
- preview/sample eligibility varies too much by app
- generic common contract is promising but not yet stable enough

refined_candidate_intent:
- treat Sample Access Common as a reusable preview-entry and sample-state surface family
- keep exact sample eligibility semantics outside the common boundary

candidate_should_own:
- sample-open action
- sample-available badge/state
- sample-unavailable summary
- preview entry hook
- sample validation summary for UI-level state

candidate_should_not_own:
- exact entitlement logic
- DRM/protection logic
- sample duration/content selection logic
- app-specific preview policy wording
- media-engine-specific runtime control

reuse_scope_if_promoted:
- preview-supported catalog applications
- marketplace applications
- sample-enabled asset/content detail surfaces
- creator storefront preview flows

required_future_evidence:
- second consumer with similar preview-entry behavior
- stable separation from full-access entitlement logic
- stable distinction between preview availability and preview playback runtime

recommended_relation_check:
- Product Card Common
- Product Detail Summary Common
- Owned Badge Common
- Subscription Included Badge Common

refinement_judgment:
- candidate remains later-wave
- but candidate boundary is now clearer
- next step should be promotion-design only after stronger common eligibility contract appears
