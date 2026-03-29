# ============================================================
# OCCUPATION AUTO OPERATION RULE COMMON MODEL
# ============================================================

status: canonical
layer: model
scope: occupation-detail-ui-common
component: occupation-auto-operation-rule-common

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COMMON AUTO INPUTS
# ============================================================

common_auto_inputs:
- occupation_type
- facility_or_unit_type
- region_profile
- district_profile
- nation_rule_effect
- time_band
- day_type
- season
- staffing_state
- supply_state
- cost_state
- safety_state
- quality_state
- demand_state
- configured_policy_set


# ============================================================
# 2. COMMON AUTO TASKS
# ============================================================

common_auto_tasks:
- baseline_operation_execution
- routine_resource_allocation
- routine_staff_allocation
- standard_quality_adjustment
- standard_safety_adjustment
- standard_cleaning_or_maintenance
- shortage_or_load_response
- routine_reporting_update


# ============================================================
# 3. FINAL RULE
# ============================================================

Auto operation
must read explicit policy inputs
and world conditions.
