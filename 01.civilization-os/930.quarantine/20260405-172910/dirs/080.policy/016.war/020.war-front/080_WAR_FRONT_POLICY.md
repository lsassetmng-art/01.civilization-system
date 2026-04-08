# ============================================================
# WAR FRONT
# POLICY
# ============================================================

status: draft
layer: policy
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for war front structures.

# 2. POLICY RULES

- front scope, segments, and conditions must be explicit
- active and closed front state must be explicit
- hidden war-front mutation is prohibited
- implicit front publication without deterministic segment order is prohibited

# 3. FAILURE RULE

- missing front scope must reject
- invalid segment or condition binding must reject
- hidden war-front mutation must reject

