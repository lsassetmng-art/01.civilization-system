# ============================================================
# LIFE SLEEP DISRUPTION MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: sleep-recovery
owner: Boss
prepared_by: Zero

purpose:
Defines sleep disruption records in LifeOS.

entity_name:
life_sleep_disruption

meaning:
Represents a disturbance associated with sleep quality.

core_fields:
- sleep_disruption_id
- user_id
- related_sleep_log_id
- disruption_type
- disruption_note
- recorded_at
- created_at
