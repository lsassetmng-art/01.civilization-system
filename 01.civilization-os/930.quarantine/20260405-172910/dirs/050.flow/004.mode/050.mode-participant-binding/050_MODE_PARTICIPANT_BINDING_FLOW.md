# ============================================================
# MODE PARTICIPANT BINDING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for mode participant binding handling.

# 2. TRIGGER

- participant binding create/update
- participant reference update
- participant rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve mode_participant_binding
2. bind participant_reference set
3. bind participant_rule set
4. validate participant scope and binding rules
5. persist participant_binding_status
6. emit audit trace

# 4. FAILURE FLOW

- missing participant scope -> reject
- invalid reference or rule binding -> reject
- hidden participant-binding mutation -> fail closed

# 5. OUTPUT

- participant binding state
- reference/rule/status
- audit record

