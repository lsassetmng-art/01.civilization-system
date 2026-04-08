# ============================================================
# PERSONA SCHEDULE BINDING
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona schedule bindings.

# 2. CORE ENTITIES

- persona_schedule_binding
- schedule_reference
- schedule_constraint
- schedule_binding_status

# 3. STATE MODEL

persona_schedule_binding:
- persona_schedule_binding_id
- persona_definition_id
- binding_scope
- binding_type_code
- binding_status

schedule_reference:
- schedule_reference_id
- persona_schedule_binding_id
- schedule_scope
- schedule_type_code
- reference_status

schedule_constraint:
- schedule_constraint_id
- persona_schedule_binding_id
- constraint_type_code
- constraint_value
- constraint_status

schedule_binding_status:
- schedule_binding_status_id
- persona_schedule_binding_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- schedule reference and constraint must belong to one binding
- persona and schedule scope must be explicit
- active and blocked state must be explicit
- hidden schedule-binding mutation is prohibited

