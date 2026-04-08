# ============================================================
# EPIDEMIC CALCULATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for epidemic calculation.

# 2. CORE ENTITIES

- epidemic_profile
- infection_state
- epidemic_wave
- epidemic_impact_record

# 3. STATE MODEL

epidemic_profile:
- profile_id
- epidemic_type_code
- spread_formula_code
- enabled_flag

infection_state:
- infection_id
- region_id
- population_scope
- infection_rate
- measured_at

epidemic_wave:
- wave_id
- epidemic_type_code
- region_id
- wave_status
- started_at

epidemic_impact_record:
- impact_id
- wave_id
- impact_type_code
- impact_value
- target_scope

# 4. INTEGRITY RULES

- infection state must be region-bound
- epidemic wave must be explicit by region and type
- impact record must reference one wave
- spread formula must be explicit

