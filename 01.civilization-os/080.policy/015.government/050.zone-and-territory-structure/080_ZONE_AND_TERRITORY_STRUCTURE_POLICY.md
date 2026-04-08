# ============================================================
# ZONE AND TERRITORY STRUCTURE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for zone and territory structures.

# 2. POLICY RULES

- territory hierarchy must be explicit
- boundary identity and dispute state must be explicit
- unresolved territorial ambiguity is prohibited
- invalid zone publication without territory validation is prohibited

# 3. FAILURE RULE

- invalid territory hierarchy must reject
- missing boundary identity must reject
- unresolved territorial ambiguity must reject

