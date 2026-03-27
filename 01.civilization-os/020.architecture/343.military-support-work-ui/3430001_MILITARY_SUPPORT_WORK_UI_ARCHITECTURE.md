# ============================================================
# MILITARY SUPPORT WORK UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: military-support-work-ui
component: military-support-work-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical UI architecture
for military support work,
including logistics,
rear support planning,
training support,
equipment allocation,
medical and recovery handling,
and emergency priority switching.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Military Support Work UI must separate:

- command support context
- supply and stock state
- personnel and deployment support state
- transport and route state
- training support state
- casualty and recovery state
- emergency override state
- result and history persistence

No military support UI should reduce rear support
to simple stock movement
without readiness, loss, delay,
or human recovery logic.


# ============================================================
# 3. SUPPORTED SUPPORT FAMILIES
# ============================================================

supported_support_families:
- base_supply_support
- field_rear_support
- training_support
- medical_rear_support
- transport_and_convoy_support
- reserve_force_support
- conscription_support
- emergency_mass_mobilization_support


# ============================================================
# 4. REQUIRED UI LAYERS
# ============================================================

required_ui_layers:
- command_overview_layer
- supply_stock_layer
- personnel_support_layer
- deployment_support_layer
- training_support_layer
- transport_and_route_layer
- casualty_and_recovery_layer
- emergency_priority_layer
- ai_assist_layer
- result_summary_layer
- support_history_layer


# ============================================================
# 5. FINAL RULE
# ============================================================

Military support UI must make rear operations feel
structured, high-stakes,
resource-bound, and nationally consequential.
