# ============================================================
# STORY PROGRESSION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for story progression.

# 2. INTEGRATION SCOPE

- progression records to runtime and reward consumers
- steps and checkpoints to branching/resolution consumers
- story-progression audit to operations

# 3. INTEGRATION RULES

- progression scope, steps, and checkpoints must be explicit before handoff
- frozen progression state must not cross mutation boundary
- hidden progression mutation must not cross boundary
- ambiguous progression state must fail closed

