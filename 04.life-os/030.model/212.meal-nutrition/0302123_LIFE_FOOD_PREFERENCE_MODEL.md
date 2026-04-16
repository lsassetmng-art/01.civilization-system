# ============================================================
# LIFE FOOD PREFERENCE MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: meal-nutrition
owner: Boss
prepared_by: Zero

purpose:
Defines food preference records in LifeOS.

entity_name:
life_food_preference

meaning:
Represents user food likes, dislikes, and preference tendencies.

core_fields:
- food_preference_id
- user_id
- item_name
- preference_type
- strength_level
- note
- created_at
- updated_at
