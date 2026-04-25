# ============================================================
# STATIC ART CONTINUITY / PROGRESS MERGE REVIEW MEMO
# ============================================================

status: merge-review-memo
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Clarifies why the following candidates remain outside
the current shared-ledger integration wave:

- Continue Reading / Continue Viewing Common
- Reader Progress Sync Common
- Viewer Progress Sync Common

These candidates are promising,
but they need merge-review before shared-ledger integration.

merge_review_subjects:
- Continue Reading / Continue Viewing Common
- Reader Progress Sync Common
- Viewer Progress Sync Common

core_judgment:
- Continue Reading / Continue Viewing Common is the higher-level continuity presentation family
- Reader Progress Sync Common and Viewer Progress Sync Common are lower or adjacent runtime/state families
- they are related, but should not be automatically merged without a layered ownership decision
- current evidence is not yet strong enough to force one canonical merged entry

layered_interpretation:

  Continue_Reading_or_Continue_Viewing_Common:
    likely_owns:
      - continuity strip or continuity surface behavior
      - resume-oriented presentation
      - in-progress display logic
      - continue-entry interaction hooks
    should_not_own:
      - low-level sync persistence engine
      - precise progress-write runtime mechanics

  Reader_Progress_Sync_Common:
    likely_owns:
      - reading-progress save structure
      - last-open/read state persistence contract
      - continue projection trigger relation for reading flows
    should_not_own:
      - generic continuity surface presentation across all media types

  Viewer_Progress_Sync_Common:
    likely_owns:
      - view-progress save structure
      - last-open/view state persistence contract
      - continue projection trigger relation for viewing flows
    should_not_own:
      - generic continuity surface presentation across all media types

why_not_in_current_wave:
- the shared-ledger wave should prefer already-stable boundaries
- continuity presentation and progress-sync runtime are not yet cleanly separated enough
- forcing one canonical merged entry too early would likely blur ownership

review_question_for_later:
- should a future canonical family be:
  - one continuity family with sublayers
  - or separate continuity-surface and progress-sync families

later_recommendation:
- keep these three on merge-review track
- revisit after another consumer confirms the separation or the layered merge model
- do not force them into the current shared-ledger wave

final_note:
Use this memo when asked why continuity/progress candidates
were excluded from the current integration-ready set.
