# ============================================================
# PERSONA PLACEMENT
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona placement.

# 2. TRIGGER

- placement request
- relocation request
- placement validity review

# 3. MAIN FLOW

1. resolve persona and target placement scope
2. validate placement constraints
3. check for incompatible active placements
4. create or update persona_placement
5. persist placement status
6. emit audit trace

# 4. FAILURE FLOW

- missing placement scope -> reject
- incompatible overlapping placement -> reject
- invalid constraint binding -> fail closed

# 5. OUTPUT

- placement state
- placement status
- audit record

