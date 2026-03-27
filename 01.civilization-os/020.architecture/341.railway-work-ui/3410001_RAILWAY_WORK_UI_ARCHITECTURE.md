# ============================================================
# RAILWAY WORK UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: railway-work-ui
component: railway-work-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical UI architecture
for railway operation work,
including timetable control,
rolling stock control,
maintenance planning,
fare management,
delay handling,
station operation,
and service history persistence.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Railway Work UI must separate:

- route and network context
- timetable planning
- rolling stock allocation
- station operation
- maintenance and infrastructure condition
- disruption response
- fare and demand control
- service result and history

No railway UI should reduce railway operation
to a simple transport action list
without time structure,
capacity logic,
or delay consequences.


# ============================================================
# 3. SUPPORTED RAILWAY OPERATION FAMILIES
# ============================================================

supported_railway_operation_families:
- commuter_rail
- intercity_rail
- freight_rail
- military_support_rail
- frontier_support_rail
- ceremonial_or_prestige_line
- emergency_substitution_operation


# ============================================================
# 4. REQUIRED UI LAYERS
# ============================================================

required_ui_layers:
- network_overview_layer
- timetable_layer
- trainset_allocation_layer
- station_operation_layer
- maintenance_layer
- fare_and_demand_layer
- disruption_response_layer
- ai_assist_layer
- result_summary_layer
- service_history_layer


# ============================================================
# 5. FINAL RULE
# ============================================================

Railway UI must make operation feel
scheduled, capacity-bound,
failure-sensitive, and nationally meaningful.
