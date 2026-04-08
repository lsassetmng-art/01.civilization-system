# ============================================================
# EVALUATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for career evaluation structures.

# 2. INTEGRATION SCOPE

- evaluation definitions and metrics to hiring and progression consumers
- evaluation sessions and results to recommendation and career consumers
- evaluation audit to operations

# 3. INTEGRATION RULES

- evaluation scope, subject identity, and metric set must be explicit before handoff
- result handoff must preserve evaluation-session identity
- hidden evaluation-result mutation must not cross boundary
- ambiguous evaluation state must fail closed

