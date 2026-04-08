# ============================================================
# STORY EVENT BINDING
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for story event bindings.

# 2. INTEGRATION SCOPE

- story event bindings to event/runtime consumers
- event references and rules to trigger/execution consumers
- story-event-binding audit to operations

# 3. INTEGRATION RULES

- event scope, references, and rules must be explicit before handoff
- blocked binding state must preserve blocking reason
- hidden event-binding mutation must not cross boundary
- ambiguous event-binding state must fail closed

