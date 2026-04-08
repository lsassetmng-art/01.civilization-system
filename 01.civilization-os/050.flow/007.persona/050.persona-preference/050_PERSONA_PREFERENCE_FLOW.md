# ============================================================
# PERSONA PREFERENCE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona preference handling.

# 2. TRIGGER

- preference profile creation/update
- preference item update
- priority update
- preference revision request

# 3. MAIN FLOW

1. create or resolve persona_preference_profile
2. bind preference_item set
3. bind preference_priority set
4. validate preference scope and priority consistency
5. persist preference_status
6. emit audit trace

# 4. FAILURE FLOW

- missing preference scope -> reject
- invalid item or priority binding -> reject
- hidden preference mutation -> fail closed

# 5. OUTPUT

- preference profile state
- item/priority state
- audit record

