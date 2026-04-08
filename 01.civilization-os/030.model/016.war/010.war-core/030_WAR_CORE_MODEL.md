# ============================================================
# WAR CORE
# MODEL
# ============================================================

status: draft
layer: model
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical core model for war structures.

# 2. CORE ENTITIES

- war_definition
- war_party_binding
- war_scope_rule
- war_status

# 3. STATE MODEL

war_definition:
- war_definition_id
- war_code
- war_type_code
- war_scope
- war_status

war_party_binding:
- war_party_binding_id
- war_definition_id
- party_scope
- party_role_code
- party_status

war_scope_rule:
- war_scope_rule_id
- war_definition_id
- rule_type_code
- rule_value
- rule_status

war_status:
- war_status_id
- war_definition_id
- active_flag
- suspended_flag
- changed_at

# 4. INTEGRITY RULES

- party binding and scope rule must belong to one war definition
- war scope and party scope must be explicit
- active and suspended state must be explicit
- hidden war-core mutation is prohibited

