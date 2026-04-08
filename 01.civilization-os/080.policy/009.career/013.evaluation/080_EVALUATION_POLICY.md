# ============================================================
# EVALUATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for career evaluation structures.

# 2. POLICY RULES

- evaluation scope, subject identity, and metric set must be explicit
- one explicit result state must exist per evaluation session
- hidden evaluation-result mutation is prohibited
- implicit result publication without validated metrics is prohibited

# 3. FAILURE RULE

- missing evaluation or subject scope must reject
- invalid metric binding must reject
- hidden evaluation-result mutation must reject

