# ============================================================
# STORY SCENE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for story scenes.

# 2. OPERATIONAL CONTROLS

- scene review
- participant/trigger review
- active/completed state inspection
- story-scene audit inspection

# 3. FAILURE OPERATIONS

- missing scene scope -> reject
- invalid participant or trigger binding -> block
- hidden scene mutation -> fail closed

