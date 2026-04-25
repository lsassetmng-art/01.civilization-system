# ============================================================
# STATIC ART NEXT WAVE PROMOTION PLAN
# ============================================================

status: promotion-plan
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Defines the next promotion wave
after the current implementation-basis and application-feature bundles.

source_reference:
- 123420_STATIC_ART_CURRENT_PROMOTION_STATE_SUMMARY.md

next_wave_priority:

  second_wave_feature_bundle_1:
    targets:
      - Asset Upload Common
      - Rights Policy Editor Common
      - Marketplace Sort Panel Common
      - Product Detail Summary Common
    reason:
      - these are the strongest remaining application-feature candidates
      - they are close to promotion-design readiness
      - they fit naturally after the first feature wave

  second_wave_feature_bundle_2:
    targets:
      - Owned Badge Common
      - Subscription Included Badge Common
      - Bookmark Common
      - Favorite Toggle Common
    reason:
      - these are smaller but stable reusable feature-side families
      - they can be bundled efficiently

  deferred_merge_review_track:
    targets:
      - Continue Reading / Continue Viewing Common
      - Reader Progress Sync Common
      - Viewer Progress Sync Common
    reason:
      - these need family-level merge review before promotion design

  later_candidate_track:
    targets:
      - Sales Offer Editor Common
      - Subscription Eligibility Editor Common
      - Sample Access Common
      - Restriction Policy Summary Common
      - Exhibition Eligibility Badge Common
      - AllowedActionsPanel
      - AssetSummaryRail
      - WorkspaceTabNav
      - ReviewDecisionPanel
    reason:
      - these need either stronger boundary clarity,
        a second consumer,
        or later stabilization

recommended_next_outputs:
  immediate_bundle:
    - Asset Upload Common promotion design
    - Rights Policy Editor Common promotion design
    - Marketplace Sort Panel Common promotion design
    - Product Detail Summary Common promotion design
    - second-wave feature bundle summary

  following_bundle:
    - Owned Badge Common promotion design
    - Subscription Included Badge Common promotion design
    - Bookmark Common promotion design
    - Favorite Toggle Common promotion design
    - second-wave feature micro-bundle summary

shared_adoption_preparation_note:
  - after second-wave feature bundle 1 and 2,
    StaticArtOS can prepare a shared-adoption review input
    similar to the StreamStudio pattern

final_judgement:
  - the safest next move is second-wave feature bundle 1
  - do not jump to later/deferred items before the stronger second-wave candidates are fixed
