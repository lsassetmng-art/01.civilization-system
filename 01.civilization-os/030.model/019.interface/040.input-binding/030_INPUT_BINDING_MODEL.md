# ============================================================
# INPUT BINDING
# MODEL
# ============================================================

status: draft
layer: model
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for input bindings.

# 2. CORE ENTITIES

- input_binding
- input_target_reference
- input_rule
- input_status

# 3. STATE MODEL

input_binding:
- input_binding_id
- interface_definition_id
- input_scope
- input_type_code
- input_status

input_target_reference:
- input_target_reference_id
- input_binding_id
- target_scope
- target_code
- target_status

input_rule:
- input_rule_id
- input_binding_id
- rule_type_code
- rule_value
- rule_status

input_status:
- input_status_id
- input_binding_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- target reference and rule must belong to one input binding
- input scope must be explicit
- active and blocked state must be explicit
- hidden input-binding mutation is prohibited

