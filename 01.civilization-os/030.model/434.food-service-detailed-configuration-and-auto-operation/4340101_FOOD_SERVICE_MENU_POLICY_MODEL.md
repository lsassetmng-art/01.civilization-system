# ============================================================
# FOOD SERVICE MENU POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: food-service-detailed-configuration-and-auto-operation
component: food-service-menu-policy

owner: Boss
prepared_by: Zero


menu_policies:
- balanced_menu
- low_price_volume_menu
- premium_local_menu
- commuter_speed_menu
- family_meal_menu
- student_budget_menu
- health_oriented_menu
- seasonal_menu
- emergency_resilience_menu


# FINAL RULE

Menu policy
must shape demand, margin, and ingredient flow.
