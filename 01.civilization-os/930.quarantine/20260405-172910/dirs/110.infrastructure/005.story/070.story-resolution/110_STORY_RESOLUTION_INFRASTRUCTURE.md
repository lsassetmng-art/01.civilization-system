# ============================================================
# STORY RESOLUTION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for story resolutions.

# 2. INFRASTRUCTURE SCOPE

- resolution storage
- condition/result persistence
- resolution-status storage
- story-resolution audit sink

# 3. INFRASTRUCTURE RULES

- resolution scope and identity must be durably resolvable
- conditions and results must persist before publication
- active and closed state must remain durable
- infrastructure ambiguity must fail closed

