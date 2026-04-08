# ============================================================
# TRIPLE GOVERNOR
# MODEL
# ============================================================

status: draft
layer: model
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for Triple governor control.

# 2. CORE ENTITIES

- triple_governor_context
- triple_signal
- triple_adjustment
- triple_reason_trace

# 3. STATE MODEL

triple_governor_context:
- context_id
- world_scope
- evaluation_time
- context_status

triple_signal:
- signal_id
- context_id
- signal_type
- signal_value
- severity_code

triple_adjustment:
- adjustment_id
- context_id
- adjustment_channel
- adjustment_value
- authority_mode

triple_reason_trace:
- trace_id
- adjustment_id
- reason_code
- reason_text
- trace_visibility

# 4. INTEGRITY RULES

- adjustment must belong to one context
- authority mode must be explicit
- every adjustment must preserve reason trace
- undeclared adjustment channel is prohibited

