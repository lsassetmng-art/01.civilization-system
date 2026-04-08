# ============================================================
# EXAM SYSTEM
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for exam system structures.

# 2. INFRASTRUCTURE SCOPE

- exam-definition storage
- session/attempt persistence
- result storage
- exam audit sink

# 3. INFRASTRUCTURE RULES

- exam and session identity must be durably resolvable
- attempt and result must persist before downstream handoff
- exam scope and attempt identity must remain durable
- infrastructure ambiguity must fail closed

