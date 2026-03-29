# ============================================================
# FINAL EVALUATED FACILITY VALUE MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-modifier-evaluation
component: final-evaluated-facility-value

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED FIELDS
# ============================================================

final_evaluated_value_fields:
- facility_type
- target_lot_id
- evaluated_build_cost
- evaluated_maintenance_cost
- evaluated_build_time_seconds
- evaluated_activation_delay_seconds
- applied_modifier_set
- evaluation_trace_summary
- rounded_flag


# ============================================================
# 2. FINAL RULE
# ============================================================

Final evaluated values are the numbers
shown to users and consumed by build execution.
