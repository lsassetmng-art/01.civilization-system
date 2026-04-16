# ============================================================
# LIFE RISK SIGNAL MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: risk-and-alert
owner: Boss
prepared_by: Zero

purpose:
Defines risk signals in LifeOS.

entity_name:
life_risk_signal

meaning:
Represents a bounded risk-oriented signal derived from life facts.

core_fields:
- risk_signal_id
- user_id
- source_domain
- source_record_id
- risk_type
- risk_level
- explanation_note
- created_at
