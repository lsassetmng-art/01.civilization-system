# ============================================================
# WAR LOGISTICS
# FLOW
# ============================================================

status: draft
layer: flow
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for war logistics handling.

# 2. TRIGGER

- logistics plan create/update
- route update
- resource rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve war_logistics_plan
2. bind logistics_route set
3. bind logistics_resource_rule set
4. validate logistics scope, route, and resource consistency
5. persist logistics_status
6. emit audit trace

# 4. FAILURE FLOW

- missing logistics scope -> reject
- invalid route or resource binding -> reject
- hidden war-logistics mutation -> fail closed

# 5. OUTPUT

- logistics plan state
- route/resource state
- audit record

