# ============================================================
# REWARD GRANT
# FLOW
# ============================================================

status: draft
layer: flow
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for reward grants.

# 2. TRIGGER

- direct grant request
- reward definition trigger
- approved campaign outcome

# 3. MAIN FLOW

1. resolve reward_definition and source
2. resolve target scope
3. validate grant approval state
4. create reward_grant
5. apply reward to balance or target receiver
6. emit audit trace

# 4. FAILURE FLOW

- missing target -> reject
- unauthorized grant -> reject
- ambiguous approval/applied state -> fail closed

# 5. OUTPUT

- grant state
- balance/update downstream trigger
- audit record

