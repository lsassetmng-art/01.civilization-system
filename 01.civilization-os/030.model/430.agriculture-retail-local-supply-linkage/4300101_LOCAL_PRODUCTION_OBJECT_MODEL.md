# ============================================================
# LOCAL PRODUCTION OBJECT MODEL
# ============================================================

status: canonical
layer: model
scope: agriculture-retail-local-supply-linkage
component: local-production-object

owner: Boss
prepared_by: Zero


# ============================================================
# 1. OBJECTS
# ============================================================

local_production_objects:
- farmland_plot
- household_garden_plot
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

Local supply linkage
must be producer-object based.
