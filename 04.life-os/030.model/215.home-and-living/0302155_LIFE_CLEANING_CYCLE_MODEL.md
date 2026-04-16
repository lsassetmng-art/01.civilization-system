# ============================================================
# LIFE CLEANING CYCLE MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: home-and-living
owner: Boss
prepared_by: Zero

purpose:
Defines recurring cleaning-cycle records in LifeOS.

entity_name:
life_cleaning_cycle

meaning:
Represents a recurring cleaning pattern for an area or object.

core_fields:
- cleaning_cycle_id
- user_id
- target_name
- recurrence_rule
- last_completed_at
- next_due_at
- created_at
- updated_at
