# ============================================================
# CONSTRAINT DETAIL
# FLOW
# ============================================================

status: draft
layer: flow
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for constraint detail handling.

# 2. TRIGGER

- constraint detail create/update
- constraint item update
- constraint rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve constraint_detail_record
2. bind constraint_item set
3. bind constraint_rule set
4. validate constraint scope and item/rule consistency
5. persist constraint_status
6. emit audit trace

# 4. FAILURE FLOW

- missing constraint scope -> reject
- invalid item or rule binding -> reject
- hidden constraint-detail mutation -> fail closed

# 5. OUTPUT

- constraint detail state
- item/rule/status
- audit record

