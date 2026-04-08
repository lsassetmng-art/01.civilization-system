# ============================================================
# ZONE AND TERRITORY STRUCTURE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for zone and territory structures.

# 2. INFRASTRUCTURE SCOPE

- territory storage
- zone and boundary persistence
- dispute-state persistence
- territory audit sink

# 3. INFRASTRUCTURE RULES

- hierarchy and boundary identity must be durably resolvable
- dispute state must persist before publication
- territory publication must preserve governing scope
- infrastructure ambiguity must fail closed

