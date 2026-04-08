# ============================================================
# STATE MACHINE DETAIL
# MODEL
# ============================================================

status: draft
layer: model
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical detailed model for runtime state machines.

# 2. CORE ENTITIES

- runtime_state_machine
- runtime_state_detail
- runtime_transition_rule
- runtime_transition_guard

# 3. STATE MODEL

runtime_state_machine:
- runtime_state_machine_id
- machine_code
- machine_scope
- machine_status
- version_code

runtime_state_detail:
- runtime_state_detail_id
- runtime_state_machine_id
- state_code
- state_type_code
- detail_status

runtime_transition_rule:
- runtime_transition_rule_id
- runtime_state_machine_id
- from_state_code
- to_state_code
- rule_status

runtime_transition_guard:
- runtime_transition_guard_id
- runtime_transition_rule_id
- guard_type_code
- guard_value
- guard_status

# 4. INTEGRITY RULES

- one transition rule belongs to one state machine
- guard must belong to one transition rule
- from/to state must be explicit
- hidden transition path is prohibited

