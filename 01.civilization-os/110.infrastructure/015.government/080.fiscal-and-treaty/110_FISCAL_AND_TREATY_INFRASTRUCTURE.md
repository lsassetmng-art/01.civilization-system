# ============================================================
# FISCAL AND TREATY
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for fiscal plans and treaties.

# 2. INFRASTRUCTURE SCOPE

- fiscal-plan and commitment storage
- treaty and party-state persistence
- publication/ratification path
- fiscal/treaty audit sink

# 3. INFRASTRUCTURE RULES

- fiscal and treaty identity must remain durable
- party and ratification state must persist before publication
- publication must preserve scope and version identity
- infrastructure ambiguity must fail closed

