# ============================================================
# MILITARY SERVICE MODE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: nation-builder-enum-master-phase2
component: military-service-mode-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

military_service_mode_enum:
- mandatory_conscription
- voluntary_enlistment
- lottery_conscription
- mixed_service
- emergency_conscription_only
- professional_standing_force


# ============================================================
# 2. RULE
# ============================================================

Each nation must expose one primary
military_service_mode.


# ============================================================
# 3. FINAL RULE
# ============================================================

Military service mode
defines baseline intake posture,
not the full nation-specific override behavior.
