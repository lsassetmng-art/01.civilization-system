# ============================================================
# LIFE RECOVERY ACTION MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: sleep-recovery
owner: Boss
prepared_by: Zero

purpose:
Defines recovery actions related to rest and sleep.

entity_name:
life_recovery_action

meaning:
Represents a recovery-support action such as rest, nap, reduced load, or bedtime adjustment.

core_fields:
- recovery_action_id
- user_id
- action_type
- planned_at
- completed_at
- perceived_effect
- note
- created_at
