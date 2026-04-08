# ============================================================
# STORY PROGRESSION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for story progression.

# 2. INFRASTRUCTURE SCOPE

- progression storage
- step/checkpoint persistence
- progression-status storage
- story-progression audit sink

# 3. INFRASTRUCTURE RULES

- progression scope and identity must be durably resolvable
- steps and checkpoints must persist before downstream handoff
- active and frozen state must remain durable
- infrastructure ambiguity must fail closed

