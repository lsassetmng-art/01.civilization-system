# ============================================================
# WAR LOGISTICS
# MODEL
# ============================================================

status: draft
layer: model
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for war logistics structures.

# 2. CORE ENTITIES

- war_logistics_plan
- logistics_route
- logistics_resource_rule
- logistics_status

# 3. STATE MODEL

war_logistics_plan:
- war_logistics_plan_id
- war_definition_id
- logistics_scope
- logistics_type_code
- logistics_status

logistics_route:
- logistics_route_id
- war_logistics_plan_id
- route_code
- route_scope
- route_status

logistics_resource_rule:
- logistics_resource_rule_id
- war_logistics_plan_id
- resource_type_code
- resource_value
- resource_status

logistics_status:
- logistics_status_id
- war_logistics_plan_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- route and resource rule must belong to one logistics plan
- logistics scope must be explicit
- active and blocked state must be explicit
- hidden war-logistics mutation is prohibited

