# ============================================================
# CRIMINAL PROCEDURE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for criminal procedure.

# 2. POLICY RULES

- jurisdiction scope, charge identity, and procedure stage must be explicit
- judgment publication requires explicit stage progression
- hidden procedural mutation without stage record is prohibited
- implicit procedural skip is prohibited

# 3. FAILURE RULE

- missing jurisdiction scope must reject
- invalid charge/stage binding must reject
- hidden procedural mutation without stage record must reject

