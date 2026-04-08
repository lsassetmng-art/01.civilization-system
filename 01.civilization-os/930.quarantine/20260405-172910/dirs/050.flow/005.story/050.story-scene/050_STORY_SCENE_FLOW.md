# ============================================================
# STORY SCENE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for story scene handling.

# 2. TRIGGER

- scene creation/update
- participant update
- trigger update
- scene completion request

# 3. MAIN FLOW

1. create or resolve story_scene
2. bind scene_participant set
3. bind scene_trigger set
4. validate scene scope and participant/trigger consistency
5. persist scene_status
6. emit audit trace

# 4. FAILURE FLOW

- missing scene scope -> reject
- invalid participant or trigger binding -> reject
- hidden scene mutation -> fail closed

# 5. OUTPUT

- scene state
- participant/trigger state
- audit record

