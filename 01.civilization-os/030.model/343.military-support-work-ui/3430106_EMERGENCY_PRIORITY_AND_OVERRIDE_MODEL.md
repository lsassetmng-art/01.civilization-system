# ============================================================
# EMERGENCY PRIORITY AND OVERRIDE MODEL
# ============================================================

status: canonical
layer: model
scope: military-support-work-ui
component: emergency-priority-and-override

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EMERGENCY PRIORITY TYPES
# ============================================================

emergency_priority_types:
- base_readiness_priority
- frontier_priority
- casualty_priority
- fuel_priority
- ammunition_priority
- infrastructure_repair_priority
- command_priority
- civilian_support_override
- conscription_support_priority


# ============================================================
# 2. OVERRIDE ACTIONS
# ============================================================

override_actions:
- reprioritize_supply_chain
- suspend_noncritical_training
- suspend_noncritical_distribution
- activate_emergency_reserve
- override_normal_route_assignment
- override_normal_staff_assignment
- raise_readiness_alert
- activate_mass_support_mode


# ============================================================
# 3. FINAL RULE
# ============================================================

Emergency mode must visibly show
what ordinary support is sacrificed
to preserve critical readiness.
