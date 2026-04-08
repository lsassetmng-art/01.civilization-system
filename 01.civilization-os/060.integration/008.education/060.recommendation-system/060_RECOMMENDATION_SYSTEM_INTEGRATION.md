# ============================================================
# RECOMMENDATION SYSTEM
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for education recommendation systems.

# 2. INTEGRATION SCOPE

- recommendation profiles and rules to evaluation consumers
- candidate items and results to education, training, and career consumers
- recommendation audit to operations

# 3. INTEGRATION RULES

- subject scope, rule set, and candidate items must be explicit before handoff
- result handoff must preserve profile identity and evaluation context
- hidden recommendation mutation must not cross boundary
- ambiguous recommendation result must fail closed

