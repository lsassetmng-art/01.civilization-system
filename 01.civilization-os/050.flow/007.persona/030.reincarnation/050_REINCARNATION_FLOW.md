# ============================================================
# REINCARNATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona reincarnation.

# 2. TRIGGER

- reincarnation request
- continuity transfer request
- reincarnation review

# 3. MAIN FLOW

1. resolve source persona and target persona
2. create reincarnation_record
3. bind source and target state references
4. compute and persist continuity_trace
5. validate visibility and lifecycle boundaries
6. emit audit trace

# 4. FAILURE FLOW

- missing source or target persona -> reject
- ambiguous continuity binding -> reject
- hidden transition without record -> fail closed

# 5. OUTPUT

- reincarnation state
- continuity trace
- audit record

