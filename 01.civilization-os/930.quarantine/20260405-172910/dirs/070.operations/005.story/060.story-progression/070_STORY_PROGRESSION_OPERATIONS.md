# ============================================================
# STORY PROGRESSION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for story progression.

# 2. OPERATIONAL CONTROLS

- progression review
- step/checkpoint review
- active/frozen state inspection
- story-progression audit inspection

# 3. FAILURE OPERATIONS

- missing progression scope -> reject
- invalid step or checkpoint binding -> block
- hidden progression mutation -> fail closed

