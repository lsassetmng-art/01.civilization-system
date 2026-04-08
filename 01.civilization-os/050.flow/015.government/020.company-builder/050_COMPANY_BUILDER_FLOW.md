# ============================================================
# COMPANY BUILDER
# FLOW
# ============================================================

status: draft
layer: flow
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for company builder operations.

# 2. TRIGGER

- company creation request
- company builder update
- ownership/publication request

# 3. MAIN FLOW

1. create or resolve company_definition
2. open or resume company_builder_session
3. bind company_ownership_state
4. run company_builder_validation
5. publish only when validations pass
6. emit audit trace

# 4. FAILURE FLOW

- missing owner scope -> reject
- ownership ratio inconsistency -> reject
- ambiguous builder session -> fail closed

# 5. OUTPUT

- company state
- ownership state
- validation/publication state

