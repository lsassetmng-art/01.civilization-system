# ============================================================
# LIFE INTERVENTION PRIORITY MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: assistant-orchestration
owner: Boss
prepared_by: Zero

purpose:
Defines intervention priority ranking in LifeOS.

entity_name:
life_intervention_priority

meaning:
Represents the ranking basis used to surface reminders and support prompts.

core_fields:
- intervention_priority_id
- user_id
- source_domain
- source_record_id
- urgency_level
- burden_level
- sensitivity_level
- review_importance
- silence_window_blocked
- final_rank_score
- decided_at

rules:
- final_rank_score must remain explainable
- sensitive signals may reduce visible detail even when priority is high
