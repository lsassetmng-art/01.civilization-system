# ============================================================
# SCHOOL SYSTEM
# FLOW
# ============================================================

status: draft
layer: flow
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for school system handling.

# 2. TRIGGER

- school creation/update request
- term update
- enrollment request

# 3. MAIN FLOW

1. create or resolve school_definition
2. create or resolve school_term
3. validate school scope and operation state
4. create or update school_enrollment
5. persist school_status
6. emit audit trace

# 4. FAILURE FLOW

- missing school scope -> reject
- invalid term binding -> reject
- hidden enrollment mutation -> fail closed

# 5. OUTPUT

- school state
- term/enrollment state
- audit record

