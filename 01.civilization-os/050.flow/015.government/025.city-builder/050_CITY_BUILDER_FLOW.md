# ============================================================
# CITY BUILDER
# FLOW
# ============================================================

status: draft
layer: flow
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for city builder operations.

# 2. TRIGGER

- city creation request
- zoning/detail update
- publication request

# 3. MAIN FLOW

1. create or resolve city_definition
2. open or resume city_builder_session
3. bind zoning_bundle
4. run city_builder_validation
5. publish only when validations pass
6. emit audit trace

# 4. FAILURE FLOW

- missing nation scope -> reject
- invalid zoning bundle -> reject
- ambiguous builder session -> fail closed

# 5. OUTPUT

- city state
- zoning/validation state
- publication state

