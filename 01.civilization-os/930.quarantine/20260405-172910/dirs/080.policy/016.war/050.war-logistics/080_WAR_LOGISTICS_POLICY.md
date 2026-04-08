# ============================================================
# WAR LOGISTICS
# POLICY
# ============================================================

status: draft
layer: policy
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for war logistics structures.

# 2. POLICY RULES

- logistics scope, routes, and resource rules must be explicit
- active and blocked logistics state must be explicit
- hidden war-logistics mutation is prohibited
- implicit logistics execution while blocked is prohibited

# 3. FAILURE RULE

- missing logistics scope must reject
- invalid route or resource binding must reject
- hidden war-logistics mutation must reject

