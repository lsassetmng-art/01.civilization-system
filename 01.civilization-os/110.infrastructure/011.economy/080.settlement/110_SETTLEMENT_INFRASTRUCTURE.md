# ============================================================
# SETTLEMENT
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for settlements.

# 2. INFRASTRUCTURE SCOPE

- batch/item storage
- result persistence
- reconciliation persistence
- settlement audit sink

# 3. INFRASTRUCTURE RULES

- item identity must persist before result publication
- reconciliation must preserve batch identity durably
- discrepancy state must be durable and reviewable
- infrastructure ambiguity must fail closed

