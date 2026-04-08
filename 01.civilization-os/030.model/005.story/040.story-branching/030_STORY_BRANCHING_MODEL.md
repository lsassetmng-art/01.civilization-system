# ============================================================
# STORY BRANCHING
# MODEL
# ============================================================

status: draft
layer: model
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for story branching.

# 2. CORE ENTITIES

- story_branch
- branch_condition
- branch_target
- branch_status

# 3. STATE MODEL

story_branch:
- story_branch_id
- story_arc_id
- branch_code
- branch_scope
- branch_status

branch_condition:
- branch_condition_id
- story_branch_id
- condition_type_code
- condition_value
- condition_status

branch_target:
- branch_target_id
- story_branch_id
- target_scope
- target_code
- target_status

branch_status:
- branch_status_id
- story_branch_id
- active_flag
- closed_flag
- changed_at

# 4. INTEGRITY RULES

- branch condition and target must belong to one story branch
- branch scope and target must be explicit
- active and closed state must be explicit
- hidden branch mutation is prohibited

