# ============================================================
# AERIAL INTERVENTION RUNTIME CONTROL
# FLOW
# ============================================================

status: draft
layer: flow
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for Aerial runtime intervention control.

# 2. TRIGGER

- support-needed runtime signal
- scheduled Aerial review
- escalation request

# 3. MAIN FLOW

1. open aerial_runtime_context
2. collect aerial_runtime_signal set
3. determine assistive aerial_runtime_action
4. validate assistive authority boundary
5. create aerial_runtime_escalation where required
6. emit audit trace

# 4. FAILURE FLOW

- missing support context -> reject
- invalid escalation scope -> reject
- hidden direct control through assistive path -> fail closed

# 5. OUTPUT

- action state
- escalation state
- audit record

