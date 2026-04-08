# ============================================================
# WAR OPERATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for war operation structures.

# 2. POLICY RULES

- operation scope, phases, and objectives must be explicit
- active and closed operation state must be explicit
- hidden war-operation mutation is prohibited
- implicit operation publication without deterministic phase order is prohibited

# 3. FAILURE RULE

- missing operation scope must reject
- invalid phase or objective binding must reject
- hidden war-operation mutation must reject

