# ============================================================
# ASSET SUMMARY RAIL COMMON CANDIDATE REFINEMENT
# ============================================================

status: candidate-refinement
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Refines the candidate boundary for AssetSummaryRail
so it can later move from later-wave audit
toward promotion design readiness.

current_hold_reason:
- useful asset-management helper
- not enough cross-app evidence yet

refined_candidate_intent:
- treat Asset Summary Rail Common as a reusable compact asset-side summary family
- keep editor-specific orchestration outside the common boundary

candidate_should_own:
- compact asset summary strip/rail
- key metadata summary slots
- status/flag summary slots
- quick navigation hooks to related sections

candidate_should_not_own:
- editor workflow ownership
- StaticArtOS-specific creator flow assumptions
- detail aggregation engine ownership
- feature-specific sidebar composition

reuse_scope_if_promoted:
- asset editors
- creator applications
- asset-management surfaces
- compact detail summary rails

required_future_evidence:
- second consumer beyond current creator/editor flow
- clearer generic rail contract
- stronger separation from Product Detail Summary Common

recommended_relation_check:
- Asset Metadata Editor Common
- Product Detail Summary Common
- ScreenShell

refinement_judgment:
- candidate remains later-wave
- candidate is promising but still evidence-light
- promotion-design should wait for second consumer
