# ============================================================
# STORY EVENT BINDING
# MODEL
# ============================================================

status: draft
layer: model
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for story event bindings.

# 2. CORE ENTITIES

- story_event_binding
- bound_event_reference
- event_binding_rule
- event_binding_status

# 3. STATE MODEL

story_event_binding:
- story_event_binding_id
- story_definition_id
- binding_scope
- binding_type_code
- binding_status

bound_event_reference:
- bound_event_reference_id
- story_event_binding_id
- event_scope
- event_code
- reference_status

event_binding_rule:
- event_binding_rule_id
- story_event_binding_id
- rule_type_code
- rule_value
- rule_status

event_binding_status:
- event_binding_status_id
- story_event_binding_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- event reference and rule must belong to one story event binding
- event scope must be explicit
- active and blocked state must be explicit
- hidden event-binding mutation is prohibited

