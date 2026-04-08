# ============================================================
# INTERVIEW
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for interview structures.

# 2. INFRASTRUCTURE SCOPE

- interview-session storage
- stage/participant persistence
- result storage
- interview audit sink

# 3. INFRASTRUCTURE RULES

- session scope and participant identity must be durably resolvable
- stage progression and result must persist before downstream handoff
- interview identity must remain durable across stages
- infrastructure ambiguity must fail closed

