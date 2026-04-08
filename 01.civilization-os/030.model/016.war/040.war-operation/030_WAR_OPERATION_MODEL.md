# ============================================================
# WAR OPERATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for war operation structures.

# 2. CORE ENTITIES

- war_operation
- operation_phase
- operation_objective
- operation_status

# 3. STATE MODEL

war_operation:
- war_operation_id
- war_definition_id
- operation_code
- operation_scope
- operation_status

operation_phase:
- operation_phase_id
- war_operation_id
- phase_code
- phase_order
- phase_status

operation_objective:
- operation_objective_id
- war_operation_id
- objective_type_code
- objective_value
- objective_status

operation_status:
- operation_status_id
- war_operation_id
- active_flag
- closed_flag
- changed_at

# 4. INTEGRITY RULES

- phase and objective must belong to one war operation
- operation scope must be explicit
- phase order must be deterministic
- hidden war-operation mutation is prohibited

