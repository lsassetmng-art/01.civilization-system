# ============================================================
# MEASUREMENT DETAIL
# FLOW
# ============================================================

status: draft
layer: flow
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for measurement detail handling.

# 2. TRIGGER

- measurement detail create/update
- measurement item update
- measurement rule update
- detail revision request

# 3. MAIN FLOW

1. create or resolve measurement_detail_record
2. bind measurement_item set
3. bind measurement_rule set
4. validate measurement scope and item/rule consistency
5. persist measurement_status
6. emit audit trace

# 4. FAILURE FLOW

- missing measurement scope -> reject
- invalid item or rule binding -> reject
- hidden measurement-detail mutation -> fail closed

# 5. OUTPUT

- measurement detail state
- item/rule/status
- audit record

