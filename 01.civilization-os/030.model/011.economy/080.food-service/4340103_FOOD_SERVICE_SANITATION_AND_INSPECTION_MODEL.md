# ============================================================
# FOOD SERVICE SANITATION AND INSPECTION MODEL
# ============================================================

status: canonical
layer: model
scope: food-service-detailed-configuration-and-auto-operation
component: food-service-sanitation-and-inspection

owner: Boss
prepared_by: Zero


sanitation_axes:
- kitchen_cleanliness
- serving_area_cleanliness
- ingredient_storage_hygiene
- waste_control
- refrigeration_control
- employee_hygiene


inspection_thresholds:
- pass: 90_to_100
- needs_improvement: 80_to_89
- fail: 0_to_79


# FINAL RULE

Food service sanitation
must strongly affect inspection risk and reputation.
