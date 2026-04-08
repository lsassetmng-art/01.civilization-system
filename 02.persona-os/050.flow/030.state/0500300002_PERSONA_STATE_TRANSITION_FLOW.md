# ============================================================
# PERSONA STATE TRANSITION FLOW
# ============================================================

status: canonical
layer: flow
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

flow:
1. state transition request is received
2. current state is loaded
3. requested transition is checked against allowed path
4. restriction and authority rules are checked
5. accepted transition is written
6. transition result is recorded
