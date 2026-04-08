# ============================================================
# NATION BUILDER
# FLOW
# ============================================================

status: draft
layer: flow
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for nation builder operations.

# 2. TRIGGER

- nation creation request
- nation builder update
- publication request

# 3. MAIN FLOW

1. create or resolve nation_definition
2. open or resume nation_builder_session
3. bind nation_policy_bundle set
4. run nation_builder_validation
5. publish only when validations pass
6. emit audit trace

# 4. FAILURE FLOW

- missing required policy bundle -> reject
- validation failure -> reject publication
- ambiguous builder session -> fail closed

# 5. OUTPUT

- nation state
- builder session state
- validation/publication state

