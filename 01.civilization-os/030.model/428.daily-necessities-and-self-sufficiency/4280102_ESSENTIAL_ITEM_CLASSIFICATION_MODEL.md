# ============================================================
# ESSENTIAL ITEM CLASSIFICATION MODEL
# ============================================================

status: canonical
layer: model
scope: daily-necessities-and-self-sufficiency
component: essential-item-classification

owner: Boss
prepared_by: Zero


# ============================================================
# 1. FOOD CLASSES
# ============================================================

food_classes:
- staple_food
- drinking_water
- vegetable_food
- protein_food
- preserved_food
- dairy_food
- egg_food
- fruit_food
- cooking_basic


# ============================================================
# 2. DAILY NECESSITY CLASSES
# ============================================================

daily_necessity_classes:
- hygiene_item
- cleaning_item
- toilet_supply
- kitchen_supply
- household_paper_supply
- basic_medical_misc
- laundry_supply
- utility_consumable


# ============================================================
# 3. FINAL RULE
# ============================================================

Essential items
must separate food
from daily necessities.
