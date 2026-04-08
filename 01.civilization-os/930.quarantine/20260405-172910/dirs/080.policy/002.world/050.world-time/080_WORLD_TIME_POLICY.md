# ============================================================
# WORLD TIME
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for world time structures.

# 2. POLICY RULES

- time scope, phase order, and rules must be explicit
- active and frozen time state must be explicit
- hidden world-time mutation is prohibited
- implicit time mutation while frozen is prohibited

# 3. FAILURE RULE

- missing time scope must reject
- invalid phase or rule binding must reject
- hidden world-time mutation must reject

