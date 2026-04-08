# ============================================================
# MODE PARTICIPANT BINDING
# MODEL
# ============================================================

status: draft
layer: model
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for mode participant bindings.

# 2. CORE ENTITIES

- mode_participant_binding
- participant_reference
- participant_rule
- participant_binding_status

# 3. STATE MODEL

mode_participant_binding:
- mode_participant_binding_id
- mode_definition_id
- binding_scope
- participant_type_code
- binding_status

participant_reference:
- participant_reference_id
- mode_participant_binding_id
- participant_scope
- participant_code
- reference_status

participant_rule:
- participant_rule_id
- mode_participant_binding_id
- rule_type_code
- rule_value
- rule_status

participant_binding_status:
- participant_binding_status_id
- mode_participant_binding_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- participant reference and rule must belong to one binding
- participant scope must be explicit
- active and blocked state must be explicit
- hidden participant-binding mutation is prohibited

