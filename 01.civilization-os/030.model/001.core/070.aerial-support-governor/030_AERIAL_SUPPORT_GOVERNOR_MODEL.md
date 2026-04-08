# ============================================================
# AERIAL SUPPORT GOVERNOR
# MODEL
# ============================================================

status: draft
layer: model
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for Aerial support governor behavior.

# 2. CORE ENTITIES

- aerial_support_context
- aerial_support_signal
- aerial_support_action
- aerial_escalation_record

# 3. STATE MODEL

aerial_support_context:
- context_id
- target_scope
- context_status
- created_at

aerial_support_signal:
- signal_id
- context_id
- signal_type
- signal_value
- confidence_level

aerial_support_action:
- action_id
- context_id
- action_type
- action_result
- executed_at

aerial_escalation_record:
- escalation_id
- context_id
- escalation_target
- escalation_reason
- escalated_at

# 4. INTEGRITY RULES

- support action must belong to one context
- escalation must preserve reason
- assistive action cannot exceed authority boundary
- hidden direct control is prohibited

