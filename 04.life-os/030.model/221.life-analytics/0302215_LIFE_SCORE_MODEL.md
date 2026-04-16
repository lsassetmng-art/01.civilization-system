# ============================================================
# LIFE SCORE MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: life-analytics
owner: Boss
prepared_by: Zero

purpose:
Defines bounded summary scores in LifeOS.

entity_name:
life_score

meaning:
Represents a compact summary score for a life aspect.

core_fields:
- score_id
- user_id
- score_type
- score_value
- score_label
- explanation_note
- created_at
