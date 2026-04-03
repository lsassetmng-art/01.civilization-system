# ============================================================
# ZONING PROFILE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: city-builder-enum-master-phase2
component: zoning-profile-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

zoning_profile_enum:
- low_separation_zoning
- balanced_functional_zoning
- strict_functional_zoning
- civic_priority_zoning
- industry_priority_zoning
- market_priority_zoning
- mixed_use_priority_zoning


# ============================================================
# 2. FINAL RULE
# ============================================================

Zoning profile
defines the city's default land-use posture
at the city-builder level.
