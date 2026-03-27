# ============================================================
# GYM SITE MODEL
# ============================================================

status: canonical
layer: model
scope: fitness-and-training
component: gym-site

owner: Boss
prepared_by: Zero


# ============================================================
# 1. FACILITY SUB-ZONES
# ============================================================

Supported sub-zones:
- reception_zone
- machine_zone
- free_weight_zone
- cardio_zone
- studio_zone
- locker_zone
- rest_zone
- consultation_zone


# ============================================================
# 2. FINAL RULE
# ============================================================

gym_site must remain layout-aware and capacity-aware.
