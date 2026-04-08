# ============================================================
# GENERAL LAW
# POLICY
# ============================================================

status: draft
layer: policy
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for general law structures.

# 2. POLICY RULES

- law code, article set, and jurisdiction scope must be explicit
- active and revision state must be explicit before publication
- hidden law mutation without revision state is prohibited
- implicit jurisdiction expansion is prohibited

# 3. FAILURE RULE

- missing jurisdiction scope must reject
- invalid article binding must reject
- hidden law mutation without revision state must reject

