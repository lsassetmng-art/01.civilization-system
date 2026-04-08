# ============================================================
# STATE MACHINE DETAIL
# FLOW
# ============================================================

status: draft
layer: flow
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for detailed runtime state-machine control.

# 2. TRIGGER

- transition request
- state-machine refresh
- transition-rule update

# 3. MAIN FLOW

1. resolve runtime_state_machine
2. resolve current runtime_state_detail
3. resolve runtime_transition_rule
4. validate runtime_transition_guard set
5. apply transition when valid
6. emit audit trace

# 4. FAILURE FLOW

- missing transition rule -> reject
- guard validation failure -> reject
- hidden transition path -> fail closed

# 5. OUTPUT

- state-machine detail state
- transition outcome
- audit record

