# ============================================================
# STORY ARC
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for story arcs.

# 2. OPERATIONAL CONTROLS

- arc review
- phase/condition review
- active/closed state inspection
- story-arc audit inspection

# 3. FAILURE OPERATIONS

- missing arc scope -> reject
- invalid phase or condition binding -> block
- hidden arc mutation -> fail closed

