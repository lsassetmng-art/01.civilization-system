# ============================================================
# CITY BUILDER SELF SUFFICIENCY BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: daily-necessities-and-self-sufficiency
component: city-builder-self-sufficiency-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CITY BUILDER OBJECTS
# ============================================================

city_builder_objects:
- farmland_plot
- household_garden_plot
- orchard_plot
- greenhouse_plot
- chicken_coop
- dairy_smallholding
- apiary_unit
- fish_pond_unit
- preserved_food_workshop


# ============================================================
# 2. FINAL RULE
# ============================================================

City Builder
must support small-scale food production objects
for self-sufficiency and local sales play.
