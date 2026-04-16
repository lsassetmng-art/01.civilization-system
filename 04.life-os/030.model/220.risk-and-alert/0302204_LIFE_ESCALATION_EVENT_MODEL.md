# ============================================================
# LIFE ESCALATION EVENT MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: risk-and-alert
owner: Boss
prepared_by: Zero

purpose:
Defines escalation events in LifeOS.

entity_name:
life_escalation_event

meaning:
Represents an event where an alert crossed into escalation handling.

core_fields:
- escalation_event_id
- user_id
- source_alert_id
- escalated_at
- escalation_reason
- target_type
- created_at
