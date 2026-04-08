# ============================================================
# CIVIL SERVICE ELIGIBILITY
# POLICY
# ============================================================

status: draft
layer: policy
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for civil service eligibility.

# 2. POLICY RULES

- service-role scope, candidate scope, and requirement set must be explicit
- one explicit result must exist per evaluation
- hidden eligibility override is prohibited
- implicit appointment without evaluation is prohibited

# 3. FAILURE RULE

- missing service-role scope must reject
- invalid requirement set must reject
- hidden eligibility override must reject

