# ============================================================
# PERSONA PROFILE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona profile handling.

# 2. TRIGGER

- profile creation/update
- attribute update
- publication request
- profile revision request

# 3. MAIN FLOW

1. create or resolve persona_profile
2. bind persona_profile_attribute set
3. bind persona_profile_publication set
4. validate profile scope and publication rules
5. persist persona_profile_status
6. emit audit trace

# 4. FAILURE FLOW

- missing profile scope -> reject
- invalid attribute or publication binding -> reject
- hidden profile mutation -> fail closed

# 5. OUTPUT

- persona profile state
- attribute/publication state
- audit record

