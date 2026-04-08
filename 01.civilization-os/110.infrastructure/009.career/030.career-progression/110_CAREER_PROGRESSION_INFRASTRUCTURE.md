# ============================================================
# CAREER PROGRESSION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for career progression structures.

# 2. INFRASTRUCTURE SCOPE

- progression-record storage
- event/state persistence
- result storage
- progression audit sink

# 3. INFRASTRUCTURE RULES

- subject scope and progression identity must be durably resolvable
- event/state transitions and results must persist before downstream handoff
- attributable level change must remain durable
- infrastructure ambiguity must fail closed

