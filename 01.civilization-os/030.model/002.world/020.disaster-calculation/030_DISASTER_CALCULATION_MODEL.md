# ============================================================
# DISASTER CALCULATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for disaster calculation.

# 2. CORE ENTITIES

- disaster_profile
- disaster_risk_state
- disaster_occurrence
- disaster_impact

# 3. STATE MODEL

disaster_profile:
- profile_id
- disaster_type_code
- severity_formula_code
- enabled_flag

disaster_risk_state:
- risk_id
- world_id
- region_id
- disaster_type_code
- risk_score

disaster_occurrence:
- occurrence_id
- risk_id
- occurred_at
- severity_code
- occurrence_status

disaster_impact:
- impact_id
- occurrence_id
- target_scope
- impact_type_code
- impact_value

# 4. INTEGRITY RULES

- risk state must bind one region and disaster type
- occurrence must reference one risk state
- impact must reference one occurrence
- severity source must be explicit

