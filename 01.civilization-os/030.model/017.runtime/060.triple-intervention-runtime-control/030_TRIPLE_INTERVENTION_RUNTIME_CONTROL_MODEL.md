# ============================================================
# TRIPLE INTERVENTION RUNTIME CONTROL
# MODEL
# ============================================================

status: draft
layer: model
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for Triple runtime intervention control.

# 2. CORE ENTITIES

- triple_runtime_context
- triple_runtime_signal
- triple_runtime_adjustment
- triple_runtime_trace

# 3. STATE MODEL

triple_runtime_context:
- triple_runtime_context_id
- runtime_scope
- evaluation_time
- context_status
- context_version

triple_runtime_signal:
- triple_runtime_signal_id
- triple_runtime_context_id
- signal_type_code
- signal_value
- signal_status

triple_runtime_adjustment:
- triple_runtime_adjustment_id
- triple_runtime_context_id
- adjustment_channel
- adjustment_value
- adjustment_status

triple_runtime_trace:
- triple_runtime_trace_id
- triple_runtime_adjustment_id
- trace_code
- trace_text
- trace_status

# 4. INTEGRITY RULES

- adjustment must belong to one context
- adjustment channel must be explicit
- trace must reference one adjustment
- hidden undeclared intervention is prohibited

