# ============================================================
# TRIPLE WORLD INTERVENTION
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for Triple intervention in world state.

# 2. CORE ENTITIES

- triple_world_context
- intervention_signal
- intervention_action
- intervention_reason_trace

# 3. STATE MODEL

triple_world_context:
- context_id
- world_id
- evaluation_time
- context_status

intervention_signal:
- signal_id
- context_id
- signal_type_code
- signal_value
- severity_code

intervention_action:
- action_id
- context_id
- action_channel
- action_value
- action_status

intervention_reason_trace:
- trace_id
- action_id
- reason_code
- reason_text
- visibility_code

# 4. INTEGRITY RULES

- every action belongs to one world context
- action channel must be explicit
- reason trace must reference one action
- hidden undeclared intervention is prohibited

