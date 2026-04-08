# ============================================================
# STORY CORE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for story core structures.

# 2. OPERATIONAL CONTROLS

- story-definition review
- scope/version review
- active/suspended state inspection
- story-core audit inspection

# 3. FAILURE OPERATIONS

- missing story scope -> reject
- invalid binding or version state -> block
- hidden story-core mutation -> fail closed

