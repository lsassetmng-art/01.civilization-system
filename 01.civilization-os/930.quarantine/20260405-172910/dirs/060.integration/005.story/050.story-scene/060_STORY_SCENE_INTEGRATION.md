# ============================================================
# STORY SCENE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for story scenes.

# 2. INTEGRATION SCOPE

- scenes to runtime and presentation consumers
- participants and triggers to activity/event consumers
- story-scene audit to operations

# 3. INTEGRATION RULES

- scene scope, participant set, and trigger set must be explicit before handoff
- completed scene handoff must preserve scene identity
- hidden scene mutation must not cross boundary
- ambiguous scene state must fail closed

