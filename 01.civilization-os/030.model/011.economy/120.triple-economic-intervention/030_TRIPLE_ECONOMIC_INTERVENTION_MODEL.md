# ============================================================
# TRIPLE ECONOMIC INTERVENTION
# MODEL
# ============================================================

status: draft
layer: model
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for Triple economic intervention.

# 2. CORE ENTITIES

- triple_economic_context
- economic_signal
- economic_adjustment
- economic_reason_trace

# 3. STATE MODEL

triple_economic_context:
- context_id
- market_scope
- evaluation_time
- context_status

economic_signal:
- signal_id
- context_id
- signal_type_code
- signal_value
- severity_code

economic_adjustment:
- adjustment_id
- context_id
- adjustment_channel
- adjustment_value
- adjustment_status

economic_reason_trace:
- trace_id
- adjustment_id
- reason_code
- reason_text
- trace_status

# 4. INTEGRITY RULES

- every adjustment belongs to one context
- adjustment channel must be explicit
- reason trace must reference one adjustment
- hidden undeclared intervention is prohibited

