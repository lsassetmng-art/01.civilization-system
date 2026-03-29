# ============================================================
# SUPPLY AND MAINTENANCE POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: military-base-detailed-configuration-and-auto-operation
component: supply-and-maintenance-policy

owner: Boss
prepared_by: Zero


supply_maintenance_policies:
- cost_min_support
- balanced_support
- readiness_first_support
- strategic_stockpile_priority
- equipment_life_extension_priority
- crisis_reserve_priority


# FINAL RULE

Supply and maintenance policy
must affect readiness and equipment stability.
