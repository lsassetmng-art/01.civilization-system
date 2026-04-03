# ============================================================
# SELF SUFFICIENCY PRODUCTION TYPE MODEL
# ============================================================

status: canonical
layer: model
scope: daily-necessities-and-self-sufficiency
component: self-sufficiency-production-type

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PRODUCTION TYPES
# ============================================================

production_types:
- household_farm_plot
- household_vegetable_garden
- orchard_plot
- greenhouse_plot
- chicken_coop
- egg_production_unit
- dairy_smallholding
- goat_smallholding
- pig_smallholding
- apiary_unit
- fish_pond_unit
- preserved_food_workshop


# ============================================================
# 2. FINAL RULE
# ============================================================

Self-sufficiency
must include both crop and animal production.
