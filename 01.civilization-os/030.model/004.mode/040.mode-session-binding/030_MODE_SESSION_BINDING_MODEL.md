# ============================================================
# MODE SESSION BINDING
# MODEL
# ============================================================

status: draft
layer: model
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for mode session bindings.

# 2. CORE ENTITIES

- mode_session_binding
- session_reference
- session_constraint
- session_binding_status

# 3. STATE MODEL

mode_session_binding:
- mode_session_binding_id
- mode_definition_id
- binding_scope
- session_type_code
- binding_status

session_reference:
- session_reference_id
- mode_session_binding_id
- session_scope
- session_code
- reference_status

session_constraint:
- session_constraint_id
- mode_session_binding_id
- constraint_type_code
- constraint_value
- constraint_status

session_binding_status:
- session_binding_status_id
- mode_session_binding_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- reference and constraint must belong to one binding
- mode and session scope must be explicit
- active and blocked state must be explicit
- hidden session-binding mutation is prohibited

