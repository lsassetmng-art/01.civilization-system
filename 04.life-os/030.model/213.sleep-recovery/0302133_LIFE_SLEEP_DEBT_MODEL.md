# ============================================================
# LIFE SLEEP DEBT MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: sleep-recovery
owner: Boss
prepared_by: Zero

purpose:
Defines sleep-debt summary records in LifeOS.

entity_name:
life_sleep_debt

meaning:
Represents accumulated insufficient sleep tendency across a period.

core_fields:
- sleep_debt_id
- user_id
- period_start
- period_end
- debt_level
- explanation_note
- created_at
