# ============================================================
# STORY EVENT BINDING
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for story event bindings.

# 2. OPERATIONAL CONTROLS

- event-binding review
- reference/rule review
- active/blocked state inspection
- story-event-binding audit inspection

# 3. FAILURE OPERATIONS

- missing event scope -> reject
- invalid reference or rule binding -> block
- hidden event-binding mutation -> fail closed

