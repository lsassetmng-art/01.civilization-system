# ============================================================
# STATE MACHINE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for state transition execution.

# 2. TRIGGER

- explicit transition request
- authorized system event
- recovery transition request

# 3. MAIN FLOW

1. resolve state_machine
2. load current_state_code
3. validate requested transition_edge
4. validate trigger authority
5. apply transition to target state
6. persist transition_record
7. update machine current state
8. emit transition audit trace

# 4. FAILURE FLOW

- missing transition edge -> reject
- unauthorized trigger -> reject
- terminal state violation -> reject
- inconsistent current state -> fail closed

# 5. OUTPUT

- new current state
- transition record
- explicit rejection reason where applicable

