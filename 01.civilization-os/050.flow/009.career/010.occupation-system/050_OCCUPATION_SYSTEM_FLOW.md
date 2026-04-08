# ============================================================
# OCCUPATION SYSTEM
# FLOW
# ============================================================

status: draft
layer: flow
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for occupation system handling.

# 2. TRIGGER

- occupation creation/update
- occupation family update
- occupation rule update

# 3. MAIN FLOW

1. create or resolve occupation_definition
2. resolve occupation_family
3. bind occupation_rule set
4. validate scope and active/revised state
5. persist occupation_status
6. emit audit trace

# 4. FAILURE FLOW

- missing occupation or family scope -> reject
- invalid rule binding -> reject
- hidden occupation mutation -> fail closed

# 5. OUTPUT

- occupation state
- family/rule state
- audit record

