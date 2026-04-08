# ============================================================
# ANNOTATION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for annotation structures.

# 2. INFRASTRUCTURE SCOPE

- annotation storage
- target/rule persistence
- annotation-status storage
- annotation audit sink

# 3. INFRASTRUCTURE RULES

- annotation scope and identity must be durably resolvable
- targets and rules must persist before downstream handoff
- active and revised state must remain durable
- infrastructure ambiguity must fail closed

