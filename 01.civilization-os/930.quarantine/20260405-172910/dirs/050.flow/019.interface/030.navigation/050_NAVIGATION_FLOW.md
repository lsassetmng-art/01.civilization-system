# ============================================================
# NAVIGATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for navigation handling.

# 2. TRIGGER

- navigation create/update
- navigation target update
- navigation rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve navigation_definition
2. bind navigation_target set
3. bind navigation_rule set
4. validate navigation scope and target/rule consistency
5. persist navigation_status
6. emit audit trace

# 4. FAILURE FLOW

- missing navigation scope -> reject
- invalid target or rule binding -> reject
- hidden navigation mutation -> fail closed

# 5. OUTPUT

- navigation state
- target/rule/status
- audit record

