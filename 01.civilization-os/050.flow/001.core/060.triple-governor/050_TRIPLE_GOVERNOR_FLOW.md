# ============================================================
# TRIPLE GOVERNOR
# FLOW
# ============================================================

status: draft
layer: flow
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for Triple governor adjustment.

# 2. TRIGGER

- world or system imbalance signal
- scheduled governor evaluation
- explicit adjustment review request

# 3. MAIN FLOW

1. open triple_governor_context
2. collect triple_signal set
3. evaluate authority boundary and allowed channels
4. determine candidate triple_adjustment
5. generate triple_reason_trace
6. apply authorized adjustment
7. persist adjustment result
8. emit audit trace

# 4. FAILURE FLOW

- missing authority mode -> reject
- undeclared adjustment channel -> reject
- missing reason trace -> reject
- hidden direct mutation attempt -> fail closed

# 5. OUTPUT

- governor context result
- adjustment record
- reason trace
- explicit rejection reason where applicable

