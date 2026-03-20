# ============================================================
# STORY UNLOCK ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Story content availability is controlled by timeline and payment.

rules:
- timeline up to year_18 is free
- timeline year_19 and beyond requires unlock
- unlock must be explicit and persistent

unlock_methods:
- payment
- future event unlock if defined

event_flow:
- story_segment_access_checked
- free_access_granted_if_year <= 18
- payment_required_if_year >= 19
- payment_completed
- story_segment_unlocked

final_rule:
Story access must be controlled by explicit timeline-based gating.
