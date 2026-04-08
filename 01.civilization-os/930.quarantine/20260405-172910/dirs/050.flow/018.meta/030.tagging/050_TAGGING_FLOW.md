# ============================================================
# TAGGING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for tagging handling.

# 2. TRIGGER

- tagging create/update
- tag item update
- tag rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve tagging_record
2. bind tag_item set
3. bind tag_rule set
4. validate tagging scope and tag consistency
5. persist tagging_status
6. emit audit trace

# 4. FAILURE FLOW

- missing tagging scope -> reject
- invalid item or rule binding -> reject
- hidden tagging mutation -> fail closed

# 5. OUTPUT

- tagging state
- item/rule/status
- audit record

