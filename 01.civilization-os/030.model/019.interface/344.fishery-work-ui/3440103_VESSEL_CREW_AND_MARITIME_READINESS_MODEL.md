# ============================================================
# VESSEL CREW AND MARITIME READINESS MODEL
# ============================================================

status: canonical
layer: model
scope: fishery-work-ui
component: vessel-crew-and-maritime-readiness

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VESSEL FIELDS
# ============================================================

vessel_fields:
- vessel_id
- vessel_class
- cargo_capacity
- preservation_capacity
- fuel_capacity
- seaworthiness_condition
- repair_need_level
- weather_tolerance
- deep_water_capability
- emergency_recovery_capability


# ============================================================
# 2. CREW FIELDS
# ============================================================

crew_fields:
- crew_group_id
- available_crew_count
- navigation_skill
- catch_efficiency_skill
- preservation_skill
- emergency_response_skill
- fatigue_level
- injury_risk_level
- reassignment_cost


# ============================================================
# 3. READINESS ACTIONS
# ============================================================

readiness_actions:
- assign_vessel
- assign_crew
- upgrade_preservation_staffing
- reduce_fatigue_risk_by_delay
- hold_vessel_for_repair
- assign_high_skill_crew_to_high_risk_route
- assign_low_risk_route_to_new_crew
- activate_emergency_support_boat


# ============================================================
# 4. FINAL RULE
# ============================================================

Fishery success must depend on
vessel condition and crew readiness,
not only on target abundance.
