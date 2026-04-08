# ============================================================
# DEATH AND MORTALITY CALCULATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for death and mortality calculation.

# 2. CORE ENTITIES

- mortality_profile
- mortality_state
- death_record_aggregate
- mortality_impact_record

# 3. STATE MODEL

mortality_profile:
- profile_id
- mortality_type_code
- threshold_formula_code
- enabled_flag

mortality_state:
- mortality_id
- region_id
- mortality_rate
- measured_at
- severity_code

death_record_aggregate:
- aggregate_id
- region_id
- period_code
- death_count
- aggregation_status

mortality_impact_record:
- impact_id
- mortality_id
- impact_type_code
- impact_value
- target_scope

# 4. INTEGRITY RULES

- mortality state must be region-bound
- death aggregate must be period-scoped
- mortality impact must reference one mortality state
- threshold source must be explicit

