# ============================================================
# STATIC ART CONTINUITY / PROGRESS LAYER DECISION
# ============================================================

status: merge-review-decision
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Fixes the layered ownership decision for the following deferred candidates:

- Continue Reading / Continue Viewing Common
- Reader Progress Sync Common
- Viewer Progress Sync Common

This decision exists to avoid premature merge
while still giving the family a stable future direction.

review_subjects:
- Continue Reading / Continue Viewing Common
- Reader Progress Sync Common
- Viewer Progress Sync Common

core_decision:
- Continue Reading / Continue Viewing Common is the higher-level continuity presentation family
- Reader Progress Sync Common is the reading-side progress runtime family
- Viewer Progress Sync Common is the viewing-side progress runtime family
- these three should remain separated by layer
- they should not be collapsed into one undifferentiated common candidate

layer_model:

  continuity_presentation_layer:
    canonical_family:
      - Continue Reading / Continue Viewing Common
    owns:
      - in-progress strip/surface rendering
      - resume entry interaction
      - display of progress snippet or position summary
      - grouping and presentation of resumable items
    does_not_own:
      - low-level progress persistence
      - low-level sync write behavior
      - media-type-specific runtime save mechanics

  reading_progress_runtime_layer:
    canonical_family:
      - Reader Progress Sync Common
    owns:
      - reading-progress save contract
      - last-open/read persistence state
      - continue projection trigger relation for reading flows
    does_not_own:
      - generic continuity presentation across all consumption modes

  viewing_progress_runtime_layer:
    canonical_family:
      - Viewer Progress Sync Common
    owns:
      - viewing-progress save contract
      - last-open/view persistence state
      - continue projection trigger relation for viewing flows
    does_not_own:
      - generic continuity presentation across all consumption modes

merge_review_judgment:
  - no immediate merge
  - no forced canonical collapse
  - keep one presentation family and two runtime families
  - allow future shared-ledger review only after another consumer confirms this layered split or suggests a stronger alternative

naming_judgment:
  - Continue Reading / Continue Viewing Common remains acceptable as the higher presentation family name
  - Reader Progress Sync Common remains acceptable as reading-runtime family name
  - Viewer Progress Sync Common remains acceptable as viewing-runtime family name

promotion_wave_judgment:
  - keep all three outside the current shared-ledger wave
  - re-enter them only after later evidence or additional consumer validation

final_note:
This file fixes the current merge-review decision:
separate by layer now, revisit later with stronger evidence.
