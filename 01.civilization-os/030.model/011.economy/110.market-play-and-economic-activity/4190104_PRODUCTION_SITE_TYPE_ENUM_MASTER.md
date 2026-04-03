# ============================================================
# PRODUCTION SITE TYPE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: company-builder-enum-master-phase2
component: production-site-type-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

production_site_type_enum:
- none
- workshop_production
- factory_production
- heavy_industry_complex
- distributed_small_production
- automated_plant
- defense_production_site
- mixed_production_site


# ============================================================
# 2. FINAL RULE
# ============================================================

Production site type
defines the enterprise's physical production posture.
