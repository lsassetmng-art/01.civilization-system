# ============================================================
# LIFE BODY STATE TREND MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: health-condition
owner: Boss
prepared_by: Zero

purpose:
Defines trend summaries for body condition.

entity_name:
life_body_state_trend

meaning:
Represents a trend-oriented summary of condition-related facts across time.

core_fields:
- body_state_trend_id
- user_id
- period_type
- period_start
- period_end
- trend_label
- trend_direction
- explanation_note
- created_at
