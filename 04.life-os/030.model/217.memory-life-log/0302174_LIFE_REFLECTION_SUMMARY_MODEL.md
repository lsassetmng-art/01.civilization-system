# ============================================================
# LIFE REFLECTION SUMMARY MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: memory-life-log
owner: Boss
prepared_by: Zero

purpose:
Defines reflection summaries in LifeOS.

entity_name:
life_reflection_summary

meaning:
Represents a reflective summary over a day, week, or event cluster.

core_fields:
- reflection_summary_id
- user_id
- period_type
- period_start
- period_end
- summary_text
- created_at
