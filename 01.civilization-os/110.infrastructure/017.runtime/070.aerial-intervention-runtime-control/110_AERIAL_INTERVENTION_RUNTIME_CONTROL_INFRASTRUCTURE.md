# ============================================================
# AERIAL INTERVENTION RUNTIME CONTROL
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for Aerial runtime intervention.

# 2. INFRASTRUCTURE SCOPE

- assistive-context storage
- assistive-action persistence
- escalation persistence
- intervention audit sink

# 3. INFRASTRUCTURE RULES

- assistive context and action identity must remain durable
- escalation scope and reason must persist before publication
- assistive/control distinction must remain durable
- infrastructure ambiguity must fail closed

