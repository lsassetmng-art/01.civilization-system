# ============================================================
# LIFE ESCALATION RULE MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: assistant-orchestration
owner: Boss
prepared_by: Zero

purpose:
Defines escalation rules in LifeOS.

entity_name:
life_escalation_rule

meaning:
Represents bounded rules for escalating support signals into alert handling.

core_fields:
- escalation_rule_id
- user_id
- source_domain
- trigger_type
- threshold_label
- escalation_target
- created_at
- updated_at
