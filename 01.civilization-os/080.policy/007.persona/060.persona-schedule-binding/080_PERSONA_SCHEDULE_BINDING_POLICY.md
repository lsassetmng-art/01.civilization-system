# ============================================================
# PERSONA SCHEDULE BINDING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for persona schedule bindings.

# 2. POLICY RULES

- persona scope, schedule scope, and constraint set must be explicit
- active and blocked schedule-binding state must be explicit
- hidden schedule-binding mutation is prohibited
- implicit schedule execution while blocked is prohibited

# 3. FAILURE RULE

- missing persona or schedule scope must reject
- invalid reference or constraint binding must reject
- hidden schedule-binding mutation must reject

