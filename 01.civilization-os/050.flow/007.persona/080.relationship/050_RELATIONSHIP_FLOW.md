# ============================================================
# RELATIONSHIP
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona relationships.

# 2. TRIGGER

- relationship creation request
- relationship status update
- relationship event creation

# 3. MAIN FLOW

1. resolve relationship parties
2. validate relationship type and scope
3. create or update relationship_record
4. persist party and status state
5. create relationship_event where applicable
6. emit audit trace

# 4. FAILURE FLOW

- missing relationship party -> reject
- incompatible overlapping status window -> reject
- hidden relationship mutation without event -> fail closed

# 5. OUTPUT

- relationship state
- party/status state
- event audit

