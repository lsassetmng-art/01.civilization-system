# ============================================================
# STORY ARC
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for story arcs.

# 2. INFRASTRUCTURE SCOPE

- arc storage
- phase/condition persistence
- arc-status storage
- story-arc audit sink

# 3. INFRASTRUCTURE RULES

- arc scope and identity must be durably resolvable
- phases and conditions must persist before publication
- active and closed state must remain durable
- infrastructure ambiguity must fail closed

