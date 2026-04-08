# ============================================================
# CEASEFIRE RESOLUTION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for ceasefire and war resolution handling.

# 2. TRIGGER

- ceasefire creation/update
- ceasefire condition update
- resolution term update
- resolution close/open request

# 3. MAIN FLOW

1. create or resolve ceasefire_resolution
2. bind ceasefire_condition set
3. bind resolution_term set
4. validate resolution scope and term consistency
5. persist ceasefire_status
6. emit audit trace

# 4. FAILURE FLOW

- missing resolution scope -> reject
- invalid condition or term binding -> reject
- hidden ceasefire-resolution mutation -> fail closed

# 5. OUTPUT

- resolution state
- condition/term state
- audit record

