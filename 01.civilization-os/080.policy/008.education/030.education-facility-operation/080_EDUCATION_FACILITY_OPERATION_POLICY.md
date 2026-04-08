# ============================================================
# EDUCATION FACILITY OPERATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for education facility operations.

# 2. POLICY RULES

- facility scope, rule set, capacity, and operation state must be explicit
- hidden facility-status mutation is prohibited
- implicit admission or scheduling beyond validated capacity is prohibited
- maintenance and operation status must be explicit before use

# 3. FAILURE RULE

- missing facility scope must reject
- invalid capacity or rule binding must reject
- hidden facility-status mutation must reject

