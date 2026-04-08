# ============================================================
# WORLD MAP
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for world map structures.

# 2. POLICY RULES

- map scope, regions, and boundary rules must be explicit
- active and revised map state must be explicit
- hidden world-map mutation is prohibited
- implicit map publication without resolved regions/boundaries is prohibited

# 3. FAILURE RULE

- missing map scope must reject
- invalid region or boundary binding must reject
- hidden world-map mutation must reject

