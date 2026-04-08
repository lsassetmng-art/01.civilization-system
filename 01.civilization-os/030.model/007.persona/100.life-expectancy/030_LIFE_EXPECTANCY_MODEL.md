# ============================================================
# LIFE EXPECTANCY
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona life expectancy.

# 2. CORE ENTITIES

- expectancy_profile
- expectancy_factor
- expectancy_state
- expectancy_adjustment

# 3. STATE MODEL

expectancy_profile:
- profile_id
- persona_id
- expectancy_version
- expectancy_status
- measured_at

expectancy_factor:
- factor_id
- profile_id
- factor_type_code
- factor_value
- factor_status

expectancy_state:
- expectancy_state_id
- persona_id
- expected_range_code
- risk_level_code
- state_status

expectancy_adjustment:
- adjustment_id
- expectancy_state_id
- adjustment_reason
- adjustment_value
- adjustment_status

# 4. INTEGRITY RULES

- one expectancy profile per measurement point
- factor must belong to one profile
- adjustment must reference one expectancy state
- hidden expectancy mutation is prohibited

