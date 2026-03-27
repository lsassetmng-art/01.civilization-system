# ============================================================
# CITY ANCHOR COMPANY DENSITY MODEL
# ============================================================

status: canonical
layer: model
scope: city-anchor-company-assignment
component: city-anchor-company-density

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines anchor-company density posture
by city tier and role.


# ============================================================
# 2. DENSITY RULES
# ============================================================

tier_1_megacity:
- 3 to 6 major anchor companies

tier_2_major_core_city:
- 2 to 4 major anchor companies

tier_3_large_city:
- 2 to 3 anchor companies

tier_4_regional_city:
- 1 to 2 anchor companies

historical_or_degraded_city:
- 1 to 2 legacy anchor companies


# ============================================================
# 3. SPECIAL RULES
# ============================================================

Nova and Helios core cities:
- may carry denser anchor clustering

Free Cities Union:
- anchor density may be smaller per city
- but widely distributed across more cities

Aurelia historical cities:
- anchor presence may be legacy-oriented rather than fully active


# ============================================================
# 4. FINAL RULE
# ============================================================

Anchor-company density should reflect role, population,
and historical condition.
