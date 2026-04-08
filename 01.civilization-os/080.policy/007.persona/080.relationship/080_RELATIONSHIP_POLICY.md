# ============================================================
# RELATIONSHIP
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for persona relationships.

# 2. POLICY RULES

- relationship party set must be explicit
- incompatible overlapping status windows are prohibited
- relationship event must accompany meaningful state mutation
- hidden relationship mutation is prohibited

# 3. FAILURE RULE

- missing relationship party must reject
- incompatible status overlap must reject
- hidden mutation without event must reject

