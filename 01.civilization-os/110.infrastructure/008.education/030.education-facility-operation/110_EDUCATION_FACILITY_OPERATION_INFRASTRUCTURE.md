# ============================================================
# EDUCATION FACILITY OPERATION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for education facility operations.

# 2. INFRASTRUCTURE SCOPE

- facility-definition storage
- rule/capacity persistence
- operation-status storage
- facility audit sink

# 3. INFRASTRUCTURE RULES

- facility and capacity identity must be durably resolvable
- operation and maintenance state must persist before downstream use
- facility scope must remain durable across status changes
- infrastructure ambiguity must fail closed

