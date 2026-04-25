# ============================================================
# STATIC ART LATER WAVE CANDIDATE AUDIT
# ============================================================

status: later-wave-audit
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Audits the candidates that remain outside
the current shared-ledger progression wave.

This file exists to prevent forgotten candidates
and to clarify why they are not moving forward yet.

audit_groups:

  merge_review_track:
    - Continue Reading / Continue Viewing Common
    - Reader Progress Sync Common
    - Viewer Progress Sync Common

  boundary_or_evidence_needed:
    - Sales Offer Editor Common
    - Subscription Eligibility Editor Common
    - Sample Access Common
    - Restriction Policy Summary Common
    - Exhibition Eligibility Badge Common

  second_consumer_or_more_abstraction_needed:
    - AllowedActionsPanel
    - AssetSummaryRail
    - WorkspaceTabNav
    - ReviewDecisionPanel

audit_notes:

  Continue_Reading_or_Continue_Viewing_Common:
    reason_held:
      - higher-level continuity presentation family is promising
      - relation to progress-sync families still needs merge review
    next_needed:
      - layered ownership decision

  Reader_Progress_Sync_Common:
    reason_held:
      - runtime/projection family is promising
      - should not be forced into same canonical entry as continuity presentation yet
    next_needed:
      - merge review with continuity family

  Viewer_Progress_Sync_Common:
    reason_held:
      - same reason as reader-progress family
    next_needed:
      - merge review with continuity family

  Sales_Offer_Editor_Common:
    reason_held:
      - reusable but still tied too closely to current commerce specifics
    next_needed:
      - stronger abstraction boundary

  Subscription_Eligibility_Editor_Common:
    reason_held:
      - reusable but eligibility contract is not stable enough yet
    next_needed:
      - more stable rule boundary

  Sample_Access_Common:
    reason_held:
      - useful preview family
      - eligibility behavior still varies too much by app
    next_needed:
      - another consumer or stronger common contract

  Restriction_Policy_Summary_Common:
    reason_held:
      - useful policy family
      - taxonomy still needs stabilization
    next_needed:
      - cleaner policy summary contract

  Exhibition_Eligibility_Badge_Common:
    reason_held:
      - useful in exhibition-connected systems
      - eligibility source contract still partial
    next_needed:
      - stronger source-of-truth boundary

  AllowedActionsPanel:
    reason_held:
      - good capability-driven surface
      - still too close to app-specific action families
    next_needed:
      - broader abstraction and second evidence

  AssetSummaryRail:
    reason_held:
      - useful asset-management helper
      - not enough cross-app evidence yet
    next_needed:
      - second consumer

  WorkspaceTabNav:
    reason_held:
      - useful multi-step editor shell
      - still too editor-shaped
    next_needed:
      - second consumer or more generic shell contract

  ReviewDecisionPanel:
    reason_held:
      - useful reviewed-surface candidate
      - decision set variance is still high
    next_needed:
      - stronger generic decision contract

recommended_later_order:
  1:
    - continuity/progress merge review
  2:
    - Sales Offer Editor Common
    - Subscription Eligibility Editor Common
    - Sample Access Common
  3:
    - Restriction Policy Summary Common
    - Exhibition Eligibility Badge Common
  4:
    - AllowedActionsPanel
    - AssetSummaryRail
    - WorkspaceTabNav
    - ReviewDecisionPanel

final_judgment:
  - later-wave candidates are correctly excluded for now
  - none should be forced into the current shared-ledger wave
  - continuity/progress family is the strongest next deferred audit target
