# ============================================================
# CLASSIFICATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for classification handling.

# 2. TRIGGER

- classification create/update
- target reference update
- classification rule update
- classification revision request

# 3. MAIN FLOW

1. create or resolve classification_record
2. bind classification_target_reference set
3. bind classification_rule set
4. validate classification scope and target/rule consistency
5. persist classification_status
6. emit audit trace

# 4. FAILURE FLOW

- missing classification scope -> reject
- invalid target or rule binding -> reject
- hidden classification mutation -> fail closed

# 5. OUTPUT

- classification state
- target/rule/status
- audit record

