# ============================================================
# STORY PROGRESSION
# MODEL
# ============================================================

status: draft
layer: model
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for story progression.

# 2. CORE ENTITIES

- story_progression_record
- progression_step
- progression_checkpoint
- progression_status

# 3. STATE MODEL

story_progression_record:
- story_progression_record_id
- story_definition_id
- progression_scope
- progression_type_code
- progression_status

progression_step:
- progression_step_id
- story_progression_record_id
- step_code
- step_order
- step_status

progression_checkpoint:
- progression_checkpoint_id
- story_progression_record_id
- checkpoint_code
- checkpoint_value
- checkpoint_status

progression_status:
- progression_status_id
- story_progression_record_id
- active_flag
- frozen_flag
- changed_at

# 4. INTEGRITY RULES

- step and checkpoint must belong to one progression record
- progression scope must be explicit
- step order must be deterministic
- hidden progression mutation is prohibited

