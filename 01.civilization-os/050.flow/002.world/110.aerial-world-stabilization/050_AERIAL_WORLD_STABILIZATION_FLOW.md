# ============================================================
# AERIAL WORLD STABILIZATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for Aerial world stabilization.

# 2. TRIGGER

- support-needed world signal
- scheduled stabilization review
- explicit assistive escalation review

# 3. MAIN FLOW

1. open aerial_world_context
2. collect stabilization signals
3. determine assistive stabilization action
4. execute within support authority boundary
5. record escalation if needed
6. emit audit trace

# 4. FAILURE FLOW

- missing support context -> reject
- invalid escalation target -> reject
- support path used for hidden direct control -> fail closed

# 5. OUTPUT

- stabilization action
- escalation record where applicable
- audit record

