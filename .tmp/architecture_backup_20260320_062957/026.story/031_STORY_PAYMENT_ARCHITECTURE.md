# ============================================================
# STORY PAYMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Story payment unlocks premium timeline segments.

payment_target:
- story_year_range
- chapter_bundle
- full_story_unlock (optional future)

rules:
- payment must be explicit
- unlock must persist after payment
- payment must not retroactively alter past free content

integration:
- economy (civ_cash)
- feature_unlock

event_flow:
- premium_story_requested
- payment_required
- payment_completed
- feature_unlock_created
- story_segment_unlocked

final_rule:
Paid story segments must be unlocked explicitly
and remain permanently accessible.
