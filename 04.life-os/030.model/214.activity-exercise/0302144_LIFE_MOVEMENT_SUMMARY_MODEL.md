# ============================================================
# LIFE MOVEMENT SUMMARY MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: activity-exercise
owner: Boss
prepared_by: Zero

purpose:
Defines movement summary records in LifeOS.

entity_name:
life_movement_summary

meaning:
Represents a period summary of movement-related facts.

core_fields:
- movement_summary_id
- user_id
- period_start
- period_end
- summary_label
- explanation_note
- created_at
