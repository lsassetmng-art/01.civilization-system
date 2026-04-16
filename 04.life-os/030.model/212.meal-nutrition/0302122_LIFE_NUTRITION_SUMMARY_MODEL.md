# ============================================================
# LIFE NUTRITION SUMMARY MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: meal-nutrition
owner: Boss
prepared_by: Zero

purpose:
Defines nutrition summary records in LifeOS.

entity_name:
life_nutrition_summary

meaning:
Represents a lightweight nutrition-oriented summary over a period.

core_fields:
- nutrition_summary_id
- user_id
- period_type
- period_start
- period_end
- summary_label
- balance_note
- hydration_note
- created_at
