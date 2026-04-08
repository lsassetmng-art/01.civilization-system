# ============================================================
# OUTPUT BINDING
# MODEL
# ============================================================

status: draft
layer: model
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for output bindings.

# 2. CORE ENTITIES

- output_binding
- output_target_reference
- output_rule
- output_status

# 3. STATE MODEL

output_binding:
- output_binding_id
- interface_definition_id
- output_scope
- output_type_code
- output_status

output_target_reference:
- output_target_reference_id
- output_binding_id
- target_scope
- target_code
- target_status

output_rule:
- output_rule_id
- output_binding_id
- rule_type_code
- rule_value
- rule_status

output_status:
- output_status_id
- output_binding_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- target reference and rule must belong to one output binding
- output scope must be explicit
- active and blocked state must be explicit
- hidden output-binding mutation is prohibited

