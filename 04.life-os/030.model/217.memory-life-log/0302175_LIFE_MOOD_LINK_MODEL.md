# ============================================================
# LIFE MOOD LINK MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: memory-life-log
owner: Boss
prepared_by: Zero

purpose:
Defines mood-linked associations for life memory items.

entity_name:
life_mood_link

meaning:
Represents a mood association connected to a journal or memory event.

core_fields:
- mood_link_id
- user_id
- source_type
- source_record_id
- mood_label
- note
- created_at
