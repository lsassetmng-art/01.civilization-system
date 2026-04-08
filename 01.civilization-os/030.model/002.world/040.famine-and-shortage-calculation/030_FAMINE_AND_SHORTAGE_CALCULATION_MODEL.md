# ============================================================
# FAMINE AND SHORTAGE CALCULATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for famine and shortage calculation.

# 2. CORE ENTITIES

- shortage_profile
- food_supply_state
- famine_risk_state
- shortage_impact_record

# 3. STATE MODEL

shortage_profile:
- profile_id
- shortage_type_code
- threshold_rule_code
- enabled_flag

food_supply_state:
- supply_id
- region_id
- item_scope
- supply_level
- measured_at

famine_risk_state:
- risk_id
- region_id
- risk_score
- severity_code
- detected_at

shortage_impact_record:
- impact_id
- risk_id
- target_scope
- impact_type_code
- impact_value

# 4. INTEGRITY RULES

- supply state must be region-bound
- famine risk must be attributable to region and time
- shortage impact must reference one risk state
- threshold rule must be explicit

