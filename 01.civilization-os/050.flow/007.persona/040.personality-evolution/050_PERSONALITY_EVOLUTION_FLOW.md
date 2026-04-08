# ============================================================
# PERSONALITY EVOLUTION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for personality evolution.

# 2. TRIGGER

- personality review cycle
- significant life/relationship event
- explicit evolution recalculation

# 3. MAIN FLOW

1. resolve active personality_profile
2. resolve affecting evolution_event set
3. calculate changed personality_trait_state values
4. create evolution_result set
5. persist new profile/version state
6. emit audit trace

# 4. FAILURE FLOW

- missing active profile -> reject
- ambiguous trait mutation source -> reject
- hidden change without event -> fail closed

# 5. OUTPUT

- updated personality profile
- trait state changes
- audit record

