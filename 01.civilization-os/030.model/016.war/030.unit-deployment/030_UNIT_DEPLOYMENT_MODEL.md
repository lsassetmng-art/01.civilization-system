# ============================================================
# UNIT DEPLOYMENT
# MODEL
# ============================================================

status: draft
layer: model
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for unit deployment structures.

# 2. CORE ENTITIES

- unit_deployment
- deployed_unit_reference
- deployment_rule
- deployment_status

# 3. STATE MODEL

unit_deployment:
- unit_deployment_id
- war_definition_id
- deployment_scope
- deployment_type_code
- deployment_status

deployed_unit_reference:
- deployed_unit_reference_id
- unit_deployment_id
- unit_scope
- unit_code
- reference_status

deployment_rule:
- deployment_rule_id
- unit_deployment_id
- rule_type_code
- rule_value
- rule_status

deployment_status:
- deployment_status_id
- unit_deployment_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- unit reference and deployment rule must belong to one deployment
- deployment scope and unit scope must be explicit
- active and blocked state must be explicit
- hidden unit-deployment mutation is prohibited

