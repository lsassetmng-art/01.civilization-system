# ============================================================
# LOGIN BONUS
# MODEL
# ============================================================

status: draft
layer: model
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for login bonus structures.

# 2. CORE ENTITIES

- login_bonus_campaign
- login_bonus_day_rule
- login_bonus_claim_state
- login_bonus_reset_rule

# 3. STATE MODEL

login_bonus_campaign:
- campaign_id
- campaign_code
- campaign_scope
- campaign_status
- effective_from

login_bonus_day_rule:
- day_rule_id
- campaign_id
- day_index
- reward_definition_id
- day_rule_status

login_bonus_claim_state:
- claim_state_id
- campaign_id
- subject_scope
- claimed_day_index
- claim_status

login_bonus_reset_rule:
- reset_rule_id
- campaign_id
- reset_type_code
- reset_value
- reset_status

# 4. INTEGRITY RULES

- day rule belongs to one campaign
- claim state must preserve subject scope
- duplicate claim for same day is prohibited
- reset rule must be explicit

