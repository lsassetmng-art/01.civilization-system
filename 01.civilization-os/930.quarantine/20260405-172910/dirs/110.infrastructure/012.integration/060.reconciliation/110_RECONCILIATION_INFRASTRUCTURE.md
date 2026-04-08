# ============================================================
# RECONCILIATION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for reconciliation structures.

# 2. INFRASTRUCTURE SCOPE

- reconciliation-job storage
- item/difference persistence
- reconciliation-status storage
- reconciliation audit sink

# 3. INFRASTRUCTURE RULES

- reconciliation scope and identity must be durably resolvable
- items and differences must persist before downstream handoff
- active and resolved state must remain durable
- infrastructure ambiguity must fail closed

