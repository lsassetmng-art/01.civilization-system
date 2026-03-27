# ============================================================
# MANUFACTURING OPERATION MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: manufacturing-operation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE FLOW
# ============================================================

- production_plan_defined
- input_profile_confirmed
- build_order_opened
- manufacturing_executed
- batch_output_recorded
- quality_review_completed


# ============================================================
# 2. FINAL RULE
# ============================================================

Manufacturing operation must remain batch-aware and facility-aware.
