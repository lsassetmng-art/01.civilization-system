# ============================================================
# STORY RESOLUTION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for story resolutions.

# 2. OPERATIONAL CONTROLS

- resolution review
- condition/result review
- active/closed state inspection
- story-resolution audit inspection

# 3. FAILURE OPERATIONS

- missing resolution scope -> reject
- invalid condition or result binding -> block
- hidden resolution mutation -> fail closed

