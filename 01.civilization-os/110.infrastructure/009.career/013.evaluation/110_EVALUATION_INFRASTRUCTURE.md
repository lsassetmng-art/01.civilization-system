# ============================================================
# EVALUATION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for career evaluation structures.

# 2. INFRASTRUCTURE SCOPE

- evaluation-definition storage
- session/metric persistence
- result storage
- evaluation audit sink

# 3. INFRASTRUCTURE RULES

- evaluation and subject identity must be durably resolvable
- metric set and result must persist before downstream handoff
- evaluation context and version must remain durable
- infrastructure ambiguity must fail closed

