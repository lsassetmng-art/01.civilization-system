# ============================================================
# LIFE PLANNER HOME ATTENTION CARD DESIGN
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 120.indicator-score
owner: Boss
prepared_by: Zero
schema: life

attention_card_purpose:
  - home で今見た方がよいことを簡潔に示す

card_types:
  - review_needed_card
  - reflection_candidate_card
  - upcoming_event_card
  - family_update_card
  - stale_plan_card

display_rules:
  - show only top few cards at once
  - cards ordered by recommendation priority rules
  - each card should include:
      - title
      - one-line explanation
      - clear CTA

copy_direction:
  - supportive
  - brief
  - non-alarming
