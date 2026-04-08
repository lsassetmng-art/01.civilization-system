# ============================================================
# STORY SCENE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for story scenes.

# 2. INFRASTRUCTURE SCOPE

- scene storage
- participant/trigger persistence
- scene-status storage
- story-scene audit sink

# 3. INFRASTRUCTURE RULES

- scene scope and identity must be durably resolvable
- participants and triggers must persist before publication
- active and completed state must remain durable
- infrastructure ambiguity must fail closed

