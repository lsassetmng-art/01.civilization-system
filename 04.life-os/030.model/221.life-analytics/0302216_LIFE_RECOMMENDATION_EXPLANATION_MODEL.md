# ============================================================
# LIFE RECOMMENDATION EXPLANATION MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: life-analytics
owner: Boss
prepared_by: Zero

purpose:
Defines explanation records for recommendations in LifeOS.

entity_name:
life_recommendation_explanation

meaning:
Represents an explanation supporting why a recommendation exists.

core_fields:
- recommendation_explanation_id
- user_id
- recommendation_type
- explanation_text
- created_at
