# ============================================================
# GOVERNMENT CORE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for government core control.

# 2. TRIGGER

- government creation request
- authority assignment/update
- government status review

# 3. MAIN FLOW

1. create or resolve government_unit
2. create or resolve governing_authority
3. create or update authority_term
4. validate government scope and legitimacy/stability state
5. persist government_status
6. emit audit trace

# 4. FAILURE FLOW

- missing government scope -> reject
- overlapping incompatible active terms -> reject
- ambiguous governing authority -> fail closed

# 5. OUTPUT

- government core state
- authority/term state
- audit record

