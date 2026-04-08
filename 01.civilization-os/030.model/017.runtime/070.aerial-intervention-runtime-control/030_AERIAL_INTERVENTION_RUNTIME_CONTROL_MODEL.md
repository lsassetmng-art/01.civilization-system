# ============================================================
# AERIAL INTERVENTION RUNTIME CONTROL
# MODEL
# ============================================================

status: draft
layer: model
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for Aerial runtime intervention control.

# 2. CORE ENTITIES

- aerial_runtime_context
- aerial_runtime_signal
- aerial_runtime_action
- aerial_runtime_escalation

# 3. STATE MODEL

aerial_runtime_context:
- aerial_runtime_context_id
- runtime_scope
- evaluation_time
- context_status
- context_version

aerial_runtime_signal:
- aerial_runtime_signal_id
- aerial_runtime_context_id
- signal_type_code
- signal_value
- signal_status

aerial_runtime_action:
- aerial_runtime_action_id
- aerial_runtime_context_id
- action_type_code
- action_value
- action_status

aerial_runtime_escalation:
- aerial_runtime_escalation_id
- aerial_runtime_context_id
- escalation_scope
- escalation_reason
- escalation_status

# 4. INTEGRITY RULES

- action must belong to one context
- escalation scope and reason must be explicit
- assistive action cannot become hidden direct control
- hidden undeclared escalation is prohibited

