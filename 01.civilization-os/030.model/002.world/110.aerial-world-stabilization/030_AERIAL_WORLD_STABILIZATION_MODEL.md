# ============================================================
# AERIAL WORLD STABILIZATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for Aerial world stabilization.

# 2. CORE ENTITIES

- aerial_world_context
- stabilization_signal
- stabilization_action
- stabilization_escalation

# 3. STATE MODEL

aerial_world_context:
- context_id
- world_id
- target_scope
- context_status

stabilization_signal:
- signal_id
- context_id
- signal_type_code
- signal_value
- confidence_level

stabilization_action:
- action_id
- context_id
- action_type_code
- action_result
- executed_at

stabilization_escalation:
- escalation_id
- context_id
- escalation_target
- escalation_reason
- escalated_at

# 4. INTEGRITY RULES

- action must belong to one support context
- escalation must preserve target and reason
- support action cannot exceed assistive authority boundary
- hidden direct control is prohibited

