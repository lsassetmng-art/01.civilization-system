# ============================================================
# LIFE FATIGUE LINK MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: activity-exercise
owner: Boss
prepared_by: Zero

purpose:
Defines fatigue-link observations in LifeOS.

entity_name:
life_fatigue_link

meaning:
Represents a possible relationship between activity load and fatigue feeling.

core_fields:
- fatigue_link_id
- user_id
- source_activity_id
- linked_condition_id
- relation_note
- confidence_type
- created_at
