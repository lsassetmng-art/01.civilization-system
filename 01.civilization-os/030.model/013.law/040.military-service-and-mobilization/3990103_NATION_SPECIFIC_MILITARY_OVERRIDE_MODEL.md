# ============================================================
# NATION SPECIFIC MILITARY OVERRIDE MODEL
# ============================================================

status: canonical
layer: model
scope: military-service-and-mobilization
component: nation-specific-military-override

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED OVERRIDE FIELDS
# ============================================================

required_override_fields:
- nation_id
- conscription_mode_override
- mobilization_mode_override
- loyalty_effect_profile_override
- volunteer_bias_override
- coercion_bias_override
- exemption_pressure_override
- military_trust_effect_override
- war_fatigue_effect_override
- class_fairness_effect_override
- regional_allegiance_effect_override
- honor_culture_effect_override
- enabled_flag


# ============================================================
# 2. FINAL RULE
# ============================================================

Existing nations
must resolve military behavior
from defaults plus explicit override,
not from type label alone.
