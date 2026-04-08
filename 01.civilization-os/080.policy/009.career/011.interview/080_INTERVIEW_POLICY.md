# ============================================================
# INTERVIEW
# POLICY
# ============================================================

status: draft
layer: policy
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for interview structures.

# 2. POLICY RULES

- session scope, stage identity, and participant identity must be explicit
- one explicit result state must exist per finalized interview session
- hidden interview-result mutation is prohibited
- implicit result publication without explicit stage progression is prohibited

# 3. FAILURE RULE

- missing session scope must reject
- invalid stage or participant binding must reject
- hidden interview-result mutation must reject

