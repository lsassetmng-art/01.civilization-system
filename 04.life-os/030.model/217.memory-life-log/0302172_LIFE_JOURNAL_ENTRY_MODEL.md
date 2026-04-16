# ============================================================
# LIFE JOURNAL ENTRY MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: memory-life-log
owner: Boss
prepared_by: Zero

purpose:
Defines journal entries in LifeOS.

entity_name:
life_journal_entry

meaning:
Represents a freeform or lightly structured personal journal entry.

core_fields:
- journal_entry_id
- user_id
- entry_at
- title
- body_text
- mood_label
- visibility_scope
- created_at
- updated_at
