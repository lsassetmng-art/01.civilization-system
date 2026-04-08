# ============================================================
# COMPOSITION DETAIL
# FLOW
# ============================================================

status: draft
layer: flow
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for composition detail handling.

# 2. TRIGGER

- composition detail create/update
- composition item update
- composition rule update
- detail revision request

# 3. MAIN FLOW

1. create or resolve composition_detail_record
2. bind composition_item set
3. bind composition_rule set
4. validate composition scope and item/rule consistency
5. persist composition_status
6. emit audit trace

# 4. FAILURE FLOW

- missing composition scope -> reject
- invalid item or rule binding -> reject
- hidden composition-detail mutation -> fail closed

# 5. OUTPUT

- composition detail state
- item/rule/status
- audit record

