# ============================================================
# STORY CORE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for story core structures.

# 2. INFRASTRUCTURE SCOPE

- story-definition storage
- scope/version persistence
- story-status storage
- story-core audit sink

# 3. INFRASTRUCTURE RULES

- story identity and scope must be durably resolvable
- bindings and versions must persist before downstream handoff
- active and suspended state must remain durable
- infrastructure ambiguity must fail closed

