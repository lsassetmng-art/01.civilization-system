# ============================================================
# LIFE HOME REMINDER MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: home-and-living
owner: Boss
prepared_by: Zero

purpose:
Defines reminder candidates related to home-and-living.

entity_name:
life_home_reminder

meaning:
Represents a reminder derived from household maintenance or stock state.

core_fields:
- home_reminder_id
- user_id
- source_type
- source_record_id
- reminder_at
- reminder_label
- created_at
