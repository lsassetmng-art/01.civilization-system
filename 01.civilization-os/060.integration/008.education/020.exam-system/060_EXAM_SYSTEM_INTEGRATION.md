# ============================================================
# EXAM SYSTEM
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for exam system structures.

# 2. INTEGRATION SCOPE

- exam definitions and sessions to scheduling/runtime consumers
- attempts and results to certification and education consumers
- exam audit to operations

# 3. INTEGRATION RULES

- exam scope, session identity, and attempt identity must be explicit before handoff
- result handoff must preserve attempt identity and score context
- hidden result mutation must not cross boundary
- ambiguous exam result state must fail closed

