# ============================================================
# MILITARY SERVICE PARAMETER EFFECT MODEL
# ============================================================

status: canonical
layer: model
scope: military-service-and-mobilization
component: military-service-parameter-effect

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PARAMETER DIMENSIONS
# ============================================================

parameter_dimensions:
- loyalty
- coercion_pressure
- military_trust
- national_identity
- economic_need
- ideological_alignment
- regional_allegiance
- class_privilege_gap
- war_fatigue
- honor_culture


# ============================================================
# 2. EFFECT TARGETS
# ============================================================

effect_targets:
- draft_compliance_rate
- volunteer_enlistment_rate
- summons_response_rate
- exemption_request_rate
- desertion_risk
- training_stability
- reserve_callup_response
- social_unrest_risk


# ============================================================
# 3. FINAL RULE
# ============================================================

Military service outcomes
must depend on social parameters,
not policy text alone.
