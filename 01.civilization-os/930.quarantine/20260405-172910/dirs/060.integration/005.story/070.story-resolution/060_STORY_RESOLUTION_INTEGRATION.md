# ============================================================
# STORY RESOLUTION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for story resolutions.

# 2. INTEGRATION SCOPE

- resolutions to ending/outcome consumers
- conditions and results to runtime/reward consumers
- story-resolution audit to operations

# 3. INTEGRATION RULES

- resolution scope, conditions, and results must be explicit before handoff
- closed resolution handoff must preserve resolution identity
- hidden resolution mutation must not cross boundary
- ambiguous resolution state must fail closed

