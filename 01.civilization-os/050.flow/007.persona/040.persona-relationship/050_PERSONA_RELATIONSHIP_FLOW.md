# ============================================================
# PERSONA RELATIONSHIP
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona relationship handling.

# 2. TRIGGER

- relationship creation/update
- relationship party update
- relationship rule update
- relationship status change

# 3. MAIN FLOW

1. create or resolve persona_relationship
2. bind relationship_party set
3. bind relationship_rule set
4. validate party scope and rule consistency
5. persist relationship_status
6. emit audit trace

# 4. FAILURE FLOW

- missing relationship or party scope -> reject
- invalid party or rule binding -> reject
- hidden relationship mutation -> fail closed

# 5. OUTPUT

- relationship state
- party/rule state
- audit record

