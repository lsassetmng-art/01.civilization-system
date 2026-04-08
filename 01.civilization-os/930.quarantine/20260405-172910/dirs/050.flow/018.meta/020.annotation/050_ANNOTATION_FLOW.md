# ============================================================
# ANNOTATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for annotation handling.

# 2. TRIGGER

- annotation create/update
- target reference update
- annotation rule update
- annotation revision request

# 3. MAIN FLOW

1. create or resolve annotation_record
2. bind annotation_target_reference set
3. bind annotation_rule set
4. validate annotation scope and target/rule consistency
5. persist annotation_status
6. emit audit trace

# 4. FAILURE FLOW

- missing annotation scope -> reject
- invalid target or rule binding -> reject
- hidden annotation mutation -> fail closed

# 5. OUTPUT

- annotation state
- target/rule/status
- audit record

