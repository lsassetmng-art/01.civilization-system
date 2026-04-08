# ============================================================
# MODE RULE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for mode rules.

# 2. INFRASTRUCTURE SCOPE

- rule-set storage
- item/condition persistence
- rule-status storage
- mode-rule audit sink

# 3. INFRASTRUCTURE RULES

- rule scope and identity must be durably resolvable
- items and conditions must persist before publication
- active and revised state must remain durable
- infrastructure ambiguity must fail closed

