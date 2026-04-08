# ============================================================
# PLAYER SANCTION
# MODEL
# ============================================================

status: draft
layer: model
domain: 006.player
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for player sanctions.

# 2. CORE ENTITIES

- player_sanction
- sanction_reason_record
- sanction_scope_rule
- sanction_status

# 3. STATE MODEL

player_sanction:
- player_sanction_id
- player_definition_id
- sanction_type_code
- sanction_scope
- sanction_status

sanction_reason_record:
- sanction_reason_record_id
- player_sanction_id
- reason_code
- reason_text_ref
- reason_status

sanction_scope_rule:
- sanction_scope_rule_id
- player_sanction_id
- rule_type_code
- rule_value
- rule_status

sanction_status:
- sanction_status_id
- player_sanction_id
- active_flag
- lifted_flag
- changed_at

# 4. INTEGRITY RULES

- reason and scope rule must belong to one sanction
- sanction scope must be explicit
- active and lifted state must be explicit
- hidden sanction mutation is prohibited

