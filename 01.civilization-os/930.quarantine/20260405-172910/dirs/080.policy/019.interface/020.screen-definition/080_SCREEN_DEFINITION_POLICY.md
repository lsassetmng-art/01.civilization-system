# ============================================================
# SCREEN DEFINITION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for screen definition structures.

# 2. POLICY RULES

- screen scope, sections, and rules must be explicit
- active and revised screen state must be explicit
- hidden screen mutation is prohibited
- implicit screen publication without resolved sections/rules is prohibited

# 3. FAILURE RULE

- missing screen scope must reject
- invalid section or rule binding must reject
- hidden screen mutation must reject

