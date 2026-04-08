# ============================================================
# WAR CORE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for war core structures.

# 2. POLICY RULES

- war scope, party bindings, and scope rules must be explicit
- active and suspended war state must be explicit
- hidden war-core mutation is prohibited
- implicit war activation without resolved parties/rules is prohibited

# 3. FAILURE RULE

- missing war scope must reject
- invalid party or rule binding must reject
- hidden war-core mutation must reject

