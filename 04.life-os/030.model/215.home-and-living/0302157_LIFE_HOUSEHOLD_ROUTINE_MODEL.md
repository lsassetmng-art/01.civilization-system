# ============================================================
# LIFE HOUSEHOLD ROUTINE MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: home-and-living
owner: Boss
prepared_by: Zero

purpose:
Defines household routines in LifeOS.

entity_name:
life_household_routine

meaning:
Represents a recurring home-maintenance routine or pattern.

core_fields:
- household_routine_id
- user_id
- title
- recurrence_rule
- scope_label
- note
- created_at
- updated_at
