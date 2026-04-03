# ============================================================
# NATION TYPE MILITARY DEFAULT MODEL
# ============================================================

status: canonical
layer: model
scope: military-service-and-mobilization
component: nation-type-military-default

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED DEFAULT FIELDS
# ============================================================

required_default_fields:
- nation_type
- military_service_mode_default
- conscription_mode_default
- mobilization_mode_default
- loyalty_effect_profile_default
- volunteer_bias_default
- coercion_bias_default
- exemption_pressure_default
- military_trust_effect_default
- war_fatigue_effect_default


# ============================================================
# 2. FINAL RULE
# ============================================================

Nation type provides
the baseline military posture
before nation-specific override is applied.
