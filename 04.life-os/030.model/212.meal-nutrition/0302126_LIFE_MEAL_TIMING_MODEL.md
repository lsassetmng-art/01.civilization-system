# ============================================================
# LIFE MEAL TIMING MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: meal-nutrition
owner: Boss
prepared_by: Zero

purpose:
Defines meal-timing facts in LifeOS.

entity_name:
life_meal_timing

meaning:
Represents timing interpretation attached to meal records.

core_fields:
- meal_timing_id
- user_id
- related_meal_id
- meal_slot
- recorded_at
- timing_quality_label
- note
