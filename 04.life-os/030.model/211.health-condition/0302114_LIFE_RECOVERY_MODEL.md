# ============================================================
# LIFE RECOVERY MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: health-condition
owner: Boss
prepared_by: Zero

purpose:
Defines the recovery observation model in LifeOS.

entity_name:
life_recovery

meaning:
Represents a user-observed recovery state or recovery action result.

core_fields:
- recovery_id
- user_id
- related_condition_id
- related_symptom_id
- recorded_at
- recovery_action_type
- user_observed_effect
- improvement_level
- free_note
- created_at
- updated_at

rules:
- recovery is observed, not clinically certified
- effect wording remains user-facing and approximate
