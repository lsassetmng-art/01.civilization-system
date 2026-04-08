# ============================================================
# CAREER PATH
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for career path structures.

# 2. INFRASTRUCTURE SCOPE

- path-definition storage
- step/requirement persistence
- path-status storage
- career-path audit sink

# 3. INFRASTRUCTURE RULES

- path identity and deterministic step order must be durably resolvable
- requirement set must persist before active publication
- active and revised state must remain durable
- infrastructure ambiguity must fail closed

