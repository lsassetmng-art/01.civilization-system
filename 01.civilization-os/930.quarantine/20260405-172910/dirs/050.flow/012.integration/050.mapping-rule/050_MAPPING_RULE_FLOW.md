# ============================================================
# MAPPING RULE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for mapping rule handling.

# 2. TRIGGER

- mapping create/update
- field rule update
- transform rule update
- mapping revision request

# 3. MAIN FLOW

1. create or resolve mapping_rule_set
2. bind mapping_field_rule set
3. bind mapping_transform_rule set
4. validate mapping scope and transform consistency
5. persist mapping_status
6. emit audit trace

# 4. FAILURE FLOW

- missing mapping scope -> reject
- invalid field or transform binding -> reject
- hidden mapping mutation -> fail closed

# 5. OUTPUT

- mapping rule-set state
- field/transform state
- audit record

