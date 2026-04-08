# ============================================================
# PERSONA STATE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona state handling.

# 2. TRIGGER

- persona state update
- condition update
- mood update
- freeze/unfreeze request

# 3. MAIN FLOW

1. create or resolve persona_state_record
2. bind persona_condition_state set
3. bind persona_mood_state set
4. validate state scope and frozen/active state
5. persist persona_state_status
6. emit audit trace

# 4. FAILURE FLOW

- missing state scope -> reject
- invalid condition or mood binding -> reject
- hidden persona-state mutation -> fail closed

# 5. OUTPUT

- persona state record
- condition/mood state
- audit record

