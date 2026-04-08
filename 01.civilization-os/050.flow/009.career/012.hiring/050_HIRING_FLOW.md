# ============================================================
# HIRING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for hiring handling.

# 2. TRIGGER

- hiring case opening
- candidate application/update
- hiring decision
- hire record publication

# 3. MAIN FLOW

1. create or resolve hiring_case
2. create or update hiring_candidate
3. validate employer and candidate scope
4. persist hiring_decision
5. create hiring_record where applicable
6. emit audit trace

# 4. FAILURE FLOW

- missing employer or candidate scope -> reject
- invalid candidate binding -> reject
- hidden hiring mutation -> fail closed

# 5. OUTPUT

- hiring case state
- candidate/decision/record state
- audit record

