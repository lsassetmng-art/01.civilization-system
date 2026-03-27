# ============================================================
# FISHERY WORK UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: fishery-work-ui
component: fishery-work-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical UI architecture
for fishery work,
including departure planning,
fishing-ground choice,
catch handling,
crew allocation,
preservation and processing,
market shipment,
and maritime risk response.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Fishery Work UI must separate:

- harbor and fleet context
- departure and fishing plan
- catch and quota state
- crew and vessel state
- preservation and processing state
- market and shipment state
- weather and sea-risk state
- result and history persistence

No fishery UI should reduce fishing
to a simple catch button
without weather, labor, spoilage,
or market timing logic.


# ============================================================
# 3. SUPPORTED FISHERY OPERATION FAMILIES
# ============================================================

supported_fishery_operation_families:
- coastal_small_fishery
- island_communal_fishery
- medium_range_commercial_fishery
- deep_water_or_high_risk_fishery
- ceremonial_or_seasonal_fishery
- emergency_food_support_fishery
- processing_integrated_fishery


# ============================================================
# 4. REQUIRED UI LAYERS
# ============================================================

required_ui_layers:
- harbor_overview_layer
- departure_planning_layer
- fishing_ground_layer
- vessel_and_crew_layer
- catch_and_quota_layer
- preservation_and_processing_layer
- shipment_and_market_layer
- weather_and_incident_layer
- ai_assist_layer
- result_summary_layer
- fishery_history_layer


# ============================================================
# 5. FINAL RULE
# ============================================================

Fishery UI must make work feel
seasonal, risky, labor-bound,
and market-sensitive.
