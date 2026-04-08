# ============================================================
# SCREEN DEFINITION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for screen definition handling.

# 2. TRIGGER

- screen create/update
- section update
- screen rule update
- screen revision request

# 3. MAIN FLOW

1. create or resolve screen_definition
2. bind screen_section set
3. bind screen_rule set
4. validate screen scope and deterministic section order
5. persist screen_status
6. emit audit trace

# 4. FAILURE FLOW

- missing screen scope -> reject
- invalid section or rule binding -> reject
- hidden screen mutation -> fail closed

# 5. OUTPUT

- screen state
- section/rule/status
- audit record

