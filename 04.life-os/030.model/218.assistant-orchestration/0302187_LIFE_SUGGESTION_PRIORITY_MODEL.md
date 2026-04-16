# ============================================================
# LIFE SUGGESTION PRIORITY MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: assistant-orchestration
owner: Boss
prepared_by: Zero

purpose:
Defines suggestion ranking in LifeOS.

entity_name:
life_suggestion_priority

meaning:
Represents comparative ranking across non-urgent suggestions.

core_fields:
- suggestion_priority_id
- user_id
- source_domain
- source_record_id
- rank_score
- explanation_note
- created_at
