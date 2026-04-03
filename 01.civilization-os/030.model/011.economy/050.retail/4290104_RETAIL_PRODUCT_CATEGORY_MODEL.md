# ============================================================
# RETAIL PRODUCT CATEGORY MODEL
# ============================================================

status: canonical
layer: model
scope: retail-detailed-configuration-and-auto-operation
component: retail-product-category

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CATEGORIES
# ============================================================

retail_product_categories:
- staple
- ready_to_eat
- snacks
- drinks
- household_goods
- hygiene_goods
- local_farm_goods
- eggs_dairy
- preserved_food
- seasonal_goods


# ============================================================
# 2. FINAL RULE
# ============================================================

Retail settings
must be category-addressable.
