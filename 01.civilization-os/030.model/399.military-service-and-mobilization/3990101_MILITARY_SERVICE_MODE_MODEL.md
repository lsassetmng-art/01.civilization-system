# ============================================================
# MILITARY SERVICE MODE MODEL
# ============================================================

status: canonical
layer: model
scope: military-service-and-mobilization
component: military-service-mode

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SERVICE MODES
# ============================================================

service_modes:
- mandatory_conscription
- voluntary_enlistment
- lottery_conscription
- mixed_service
- emergency_conscription_only
- professional_standing_force


# ============================================================
# 2. FINAL RULE
# ============================================================

Military service mode
defines the baseline intake posture,
not the full nation-specific behavior.
