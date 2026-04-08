# ============================================================
# STORY SCENE
# MODEL
# ============================================================

status: draft
layer: model
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for story scenes.

# 2. CORE ENTITIES

- story_scene
- scene_participant
- scene_trigger
- scene_status

# 3. STATE MODEL

story_scene:
- story_scene_id
- story_arc_id
- scene_code
- scene_scope
- scene_status

scene_participant:
- scene_participant_id
- story_scene_id
- participant_scope
- participant_role_code
- participant_status

scene_trigger:
- scene_trigger_id
- story_scene_id
- trigger_type_code
- trigger_value
- trigger_status

scene_status:
- scene_status_id
- story_scene_id
- active_flag
- completed_flag
- changed_at

# 4. INTEGRITY RULES

- participant and trigger must belong to one story scene
- scene scope must be explicit
- active and completed state must be explicit
- hidden scene mutation is prohibited

