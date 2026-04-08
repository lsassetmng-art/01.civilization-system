# ============================================================
# STORY SCENE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for story scenes.

# 2. RUNTIME STATE

- active scene state
- participant resolution state
- trigger resolution state
- active/completed scene state

# 3. EXECUTION RULES

- scene scope, participant set, and trigger set must resolve before publication
- completed state must preserve scene identity
- active and completed states must be explicit
- hidden scene mutation is prohibited

# 4. FAILURE HANDLING

- missing scene scope -> reject
- invalid participant or trigger binding -> reject
- hidden scene mutation -> fail closed

