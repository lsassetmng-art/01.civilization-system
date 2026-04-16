# ============================================================
# LIFE SLEEP QUALITY MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: sleep-recovery
owner: Boss
prepared_by: Zero

purpose:
Defines sleep-quality records in LifeOS.

entity_name:
life_sleep_quality

meaning:
Represents a user-observed or lightly derived sleep-quality summary.

core_fields:
- sleep_quality_id
- user_id
- related_sleep_log_id
- quality_level
- felt_rested_level
- disruption_note
- created_at
