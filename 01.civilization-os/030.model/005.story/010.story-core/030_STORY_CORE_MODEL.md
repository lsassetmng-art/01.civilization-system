# ============================================================
# STORY CORE
# MODEL
# ============================================================

status: draft
layer: model
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical core model for story structures.

# 2. CORE ENTITIES

- story_definition
- story_scope_binding
- story_version
- story_status

# 3. STATE MODEL

story_definition:
- story_definition_id
- story_code
- story_type_code
- story_scope
- story_status

story_scope_binding:
- story_scope_binding_id
- story_definition_id
- binding_scope
- binding_type_code
- binding_status

story_version:
- story_version_id
- story_definition_id
- version_code
- version_status
- published_at

story_status:
- story_status_id
- story_definition_id
- active_flag
- suspended_flag
- changed_at

# 4. INTEGRITY RULES

- scope binding and version must belong to one story definition
- story scope must be explicit
- active and suspended state must be explicit
- hidden story-core mutation is prohibited

