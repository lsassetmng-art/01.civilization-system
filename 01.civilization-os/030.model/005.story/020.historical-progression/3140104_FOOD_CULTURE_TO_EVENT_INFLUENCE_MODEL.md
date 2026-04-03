# ============================================================
# FOOD CULTURE TO EVENT INFLUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: food-dining-home-cooking-and-alcohol-culture-seed
component: food-culture-to-event-influence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFLUENCE RULES
# ============================================================

influence_rules:
- home_cooking_strength_tendency modifies household meal cohesion events
- eating_out_frequency_tendency modifies urban socialization and convenience spending events
- street_food_visibility_tendency modifies market and nightlife activity events
- family_table_importance_tendency modifies family-bond and household-stability events
- alcohol_visibility_tendency modifies nightlife, ritual, and celebration events
- festival_food_importance_tendency modifies annual civic and religious observance intensity
- class_dining_gap_tendency modifies visible inequality and prestige-consumption events
- worker_meal_practicality_tendency modifies labor-life rhythm and industrial household events
- luxury_dining_visibility_tendency modifies elite status and hospitality events
- seafood_dependence_tendency modifies coastal and island supply sensitivity events
- preserved_food_dependence_tendency modifies storage, hardship, and disruption resilience events


# ============================================================
# 2. FINAL RULE
# ============================================================

Food-culture indicators must be usable
as modifiers for household, market, festival, and risk events.
