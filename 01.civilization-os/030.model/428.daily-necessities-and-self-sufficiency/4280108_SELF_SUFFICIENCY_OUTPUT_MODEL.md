# ============================================================
# SELF SUFFICIENCY OUTPUT MODEL
# ============================================================

status: canonical
layer: model
scope: daily-necessities-and-self-sufficiency
component: self-sufficiency-output

owner: Boss
prepared_by: Zero


# ============================================================
# 1. OUTPUT TYPES
# ============================================================

output_types:
- grain_output
- vegetable_output
- fruit_output
- egg_output
- milk_output
- meat_output
- honey_output
- fish_output
- preserved_food_output


# ============================================================
# 2. USE MODES
# ============================================================

use_modes:
- household_self_consumption
- local_sale
- neighborhood_exchange
- emergency_reserve
- welfare_donation


# ============================================================
# 3. FINAL RULE
# ============================================================

Self-sufficiency output
must be usable for both survival and commerce.
