# ============================================================
# CONSCRIPTION MODE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: nation-builder-enum-master-phase2
component: conscription-mode-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

conscription_mode_enum:
- none
- universal
- limited_class_based
- limited_region_based
- selective_merit_based
- wartime_only
- shortage_triggered
- emergency_total_callup


# ============================================================
# 2. RULE
# ============================================================

Conscription mode may be stricter
or narrower than military_service_mode.


# ============================================================
# 3. FINAL RULE
# ============================================================

Conscription mode
defines who is pulled into service
when forced intake exists.
