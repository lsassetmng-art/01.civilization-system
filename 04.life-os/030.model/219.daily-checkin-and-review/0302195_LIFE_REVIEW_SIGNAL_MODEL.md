# ============================================================
# LIFE REVIEW SIGNAL MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: daily-checkin-and-review
owner: Boss
prepared_by: Zero

purpose:
Defines review signals in LifeOS.

entity_name:
life_review_signal

meaning:
Represents a signal suggesting that a review or reflection should be surfaced.

core_fields:
- review_signal_id
- user_id
- signal_type
- signal_strength
- explanation_note
- created_at
