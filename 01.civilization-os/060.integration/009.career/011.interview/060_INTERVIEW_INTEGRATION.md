# ============================================================
# INTERVIEW
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for interview structures.

# 2. INTEGRATION SCOPE

- interview sessions and stages to hiring/runtime consumers
- participant and result state to evaluation and decision consumers
- interview audit to operations

# 3. INTEGRATION RULES

- session scope, participant identity, and stage state must be explicit before handoff
- result handoff must preserve interview-session identity
- hidden interview-result mutation must not cross boundary
- ambiguous interview state must fail closed

