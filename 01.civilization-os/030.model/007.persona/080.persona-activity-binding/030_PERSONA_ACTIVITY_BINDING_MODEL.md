# ============================================================
# PERSONA ACTIVITY BINDING
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona activity bindings.

# 2. CORE ENTITIES

- persona_activity_binding
- activity_reference
- activity_rule
- activity_binding_status

# 3. STATE MODEL

persona_activity_binding:
- persona_activity_binding_id
- persona_definition_id
- binding_scope
- activity_type_code
- binding_status

activity_reference:
- activity_reference_id
- persona_activity_binding_id
- activity_scope
- activity_code
- reference_status

activity_rule:
- activity_rule_id
- persona_activity_binding_id
- rule_type_code
- rule_value
- rule_status

activity_binding_status:
- activity_binding_status_id
- persona_activity_binding_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- activity reference and rule must belong to one activity binding
- persona and activity scope must be explicit
- active and blocked state must be explicit
- hidden activity-binding mutation is prohibited

