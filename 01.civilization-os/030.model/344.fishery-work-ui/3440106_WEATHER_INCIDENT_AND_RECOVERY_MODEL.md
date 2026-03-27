# ============================================================
# WEATHER INCIDENT AND RECOVERY MODEL
# ============================================================

status: canonical
layer: model
scope: fishery-work-ui
component: weather-incident-and-recovery

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INCIDENT TYPES
# ============================================================

incident_types:
- storm_delay
- forced_return
- vessel_damage
- crew_injury
- lost_catch
- preservation_failure
- harbor_delay
- route_conflict
- missing_vessel_alert
- bad_sea_visibility
- equipment_failure


# ============================================================
# 2. RESPONSE ACTIONS
# ============================================================

response_actions:
- force_return_to_harbor
- reroute_to_safer_harbor
- dispatch_recovery_support
- prioritize_medical_reception
- salvage_partial_catch
- isolate_spoiled_catch
- emergency_repair_dispatch
- suspend_next_departure_cycle
- memorialize_loss_case


# ============================================================
# 3. RESULT FIELDS
# ============================================================

result_fields:
- catch_loss_delta
- crew_safety_delta
- vessel_condition_delta
- market_trust_delta
- household_income_delta
- local_food_supply_delta
- memorial_or_grief_delta


# ============================================================
# 4. FINAL RULE
# ============================================================

Fishery incident handling must expose
that weather and sea risk
threaten people, vessels, income,
and local memory at once.
