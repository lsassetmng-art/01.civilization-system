# ============================================================
# PERSONA SOCIETY LINK
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona society links.

# 2. TRIGGER

- role assignment request
- affiliation update
- participation state review

# 3. MAIN FLOW

1. resolve persona and society scope
2. validate society_link type
3. create or update role_assignment
4. persist affiliation_state and participation_state
5. validate contradictory active assignments
6. emit audit trace

# 4. FAILURE FLOW

- missing target society scope -> reject
- contradictory active role assignment -> reject
- ambiguous affiliation status -> fail closed

# 5. OUTPUT

- society link state
- role/affiliation/participation state
- audit record

