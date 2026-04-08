# ============================================================
# INTEGRATION CORE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for integration core structures.

# 2. INFRASTRUCTURE SCOPE

- integration-definition storage
- endpoint/contract persistence
- integration-status storage
- integration-core audit sink

# 3. INFRASTRUCTURE RULES

- integration scope and identity must be durably resolvable
- endpoints and contracts must persist before downstream handoff
- active and suspended state must remain durable
- infrastructure ambiguity must fail closed

