# ============================================================
# ATTRIBUTE DETAIL
# FLOW
# ============================================================

status: draft
layer: flow
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for attribute detail handling.

# 2. TRIGGER

- attribute detail create/update
- attribute item update
- attribute rule update
- detail revision request

# 3. MAIN FLOW

1. create or resolve attribute_detail_record
2. bind attribute_item set
3. bind attribute_rule set
4. validate attribute scope and item/rule consistency
5. persist attribute_status
6. emit audit trace

# 4. FAILURE FLOW

- missing attribute scope -> reject
- invalid item or rule binding -> reject
- hidden attribute-detail mutation -> fail closed

# 5. OUTPUT

- attribute detail state
- item/rule/status
- audit record

