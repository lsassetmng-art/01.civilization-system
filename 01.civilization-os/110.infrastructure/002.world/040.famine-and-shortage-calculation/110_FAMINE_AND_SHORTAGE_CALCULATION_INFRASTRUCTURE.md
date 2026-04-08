# ============================================================
# FAMINE AND SHORTAGE CALCULATION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for famine and shortage calculation.

# 2. INFRASTRUCTURE SCOPE

- supply-state storage
- threshold resolution path
- famine-risk persistence
- shortage-impact publication path

# 3. INFRASTRUCTURE RULES

- region-bound supply state must be durable
- threshold resolution must complete before risk publication
- impact publication requires persisted risk state
- infrastructure ambiguity must fail closed

