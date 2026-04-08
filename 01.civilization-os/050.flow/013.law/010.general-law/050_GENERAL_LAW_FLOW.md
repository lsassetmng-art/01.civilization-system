# ============================================================
# GENERAL LAW
# FLOW
# ============================================================

status: draft
layer: flow
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for general law handling.

# 2. TRIGGER

- law creation/update request
- law revision request
- law publication request

# 3. MAIN FLOW

1. create or resolve law_code
2. bind law_article set
3. bind law_scope
4. validate revision and active status
5. persist law_status
6. emit audit trace

# 4. FAILURE FLOW

- missing jurisdiction scope -> reject
- invalid article binding -> reject
- hidden law mutation without revision state -> fail closed

# 5. OUTPUT

- law code state
- article/scope state
- audit record

