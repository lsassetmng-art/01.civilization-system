# ============================================================
# SCHOOL SYSTEM
# POLICY
# ============================================================

status: draft
layer: policy
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for school system structures.

# 2. POLICY RULES

- school scope, active term, and enrollment identity must be explicit
- hidden enrollment mutation is prohibited
- implicit enrollment without active school/term is prohibited
- school operation status must be explicit before publication

# 3. FAILURE RULE

- missing school scope must reject
- invalid term binding must reject
- hidden enrollment mutation must reject

