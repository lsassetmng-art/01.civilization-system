# ============================================================
# STORY EVENT BINDING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for story event binding handling.

# 2. TRIGGER

- event binding create/update
- event reference update
- rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve story_event_binding
2. bind bound_event_reference set
3. bind event_binding_rule set
4. validate event scope and binding rules
5. persist event_binding_status
6. emit audit trace

# 4. FAILURE FLOW

- missing event scope -> reject
- invalid reference or rule binding -> reject
- hidden event-binding mutation -> fail closed

# 5. OUTPUT

- event-binding state
- reference/rule/status
- audit record

