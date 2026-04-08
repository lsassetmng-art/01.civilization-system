# ============================================================
# EXAM SYSTEM
# POLICY
# ============================================================

status: draft
layer: policy
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for exam system structures.

# 2. POLICY RULES

- exam scope, session identity, and attempt identity must be explicit
- one explicit result state must exist per finalized attempt
- hidden result mutation is prohibited
- implicit exam result publication without validated attempt is prohibited

# 3. FAILURE RULE

- missing exam scope must reject
- invalid session or attempt binding must reject
- hidden result mutation must reject

