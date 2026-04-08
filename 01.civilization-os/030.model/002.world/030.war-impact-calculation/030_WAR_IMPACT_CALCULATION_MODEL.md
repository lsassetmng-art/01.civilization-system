# ============================================================
# WAR IMPACT CALCULATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for war impact calculation.

# 2. CORE ENTITIES

- war_state
- war_impact_profile
- war_impact_record
- war_recovery_state

# 3. STATE MODEL

war_state:
- war_id
- conflict_scope
- war_status
- started_at

war_impact_profile:
- profile_id
- war_id
- impact_dimension_code
- severity_formula_code

war_impact_record:
- impact_id
- war_id
- target_scope
- impact_type_code
- impact_value

war_recovery_state:
- recovery_id
- war_id
- target_scope
- recovery_status
- recovered_at

# 4. INTEGRITY RULES

- impact profile belongs to one war
- impact record must reference one war
- recovery state must reference one war impact scope
- war status must be explicit

