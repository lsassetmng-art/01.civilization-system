# ============================================================
# PLAYER PRESENCE
# MODEL
# ============================================================

status: draft
layer: model
domain: 006.player
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for player presence structures.

# 2. CORE ENTITIES

- player_presence
- presence_state
- presence_visibility_rule
- presence_status

# 3. STATE MODEL

player_presence:
- player_presence_id
- player_definition_id
- presence_scope
- presence_type_code
- presence_status

presence_state:
- presence_state_id
- player_presence_id
- state_code
- state_value
- state_status

presence_visibility_rule:
- presence_visibility_rule_id
- player_presence_id
- visibility_scope
- visibility_rule_code
- rule_status

presence_status:
- presence_status_id
- player_presence_id
- active_flag
- hidden_flag
- changed_at

# 4. INTEGRITY RULES

- presence state and visibility rule must belong to one presence record
- presence scope must be explicit
- active and hidden state must be explicit
- hidden presence mutation is prohibited

