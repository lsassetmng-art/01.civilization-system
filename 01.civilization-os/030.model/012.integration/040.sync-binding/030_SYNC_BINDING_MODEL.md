# ============================================================
# SYNC BINDING
# MODEL
# ============================================================

status: draft
layer: model
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for sync bindings.

# 2. CORE ENTITIES

- sync_binding
- sync_target_reference
- sync_rule
- sync_status

# 3. STATE MODEL

sync_binding:
- sync_binding_id
- integration_definition_id
- binding_scope
- sync_type_code
- sync_status

sync_target_reference:
- sync_target_reference_id
- sync_binding_id
- target_scope
- target_code
- target_status

sync_rule:
- sync_rule_id
- sync_binding_id
- rule_type_code
- rule_value
- rule_status

sync_status:
- sync_status_id
- sync_binding_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- target reference and rule must belong to one sync binding
- sync scope must be explicit
- active and blocked state must be explicit
- hidden sync mutation is prohibited

