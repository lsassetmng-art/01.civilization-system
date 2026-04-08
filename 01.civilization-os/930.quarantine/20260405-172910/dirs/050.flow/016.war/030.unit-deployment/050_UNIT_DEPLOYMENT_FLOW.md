# ============================================================
# UNIT DEPLOYMENT
# FLOW
# ============================================================

status: draft
layer: flow
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for unit deployment handling.

# 2. TRIGGER

- deployment create/update
- deployed unit update
- deployment rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve unit_deployment
2. bind deployed_unit_reference set
3. bind deployment_rule set
4. validate deployment scope, unit scope, and rule consistency
5. persist deployment_status
6. emit audit trace

# 4. FAILURE FLOW

- missing deployment or unit scope -> reject
- invalid unit or rule binding -> reject
- hidden unit-deployment mutation -> fail closed

# 5. OUTPUT

- deployment state
- unit/rule/status
- audit record

