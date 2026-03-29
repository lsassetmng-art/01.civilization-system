# ============================================================
# STORE CLEANLINESS RATE MODEL
# ============================================================

status: canonical
layer: model
scope: retail-detailed-configuration-and-auto-operation
component: store-cleanliness-rate

owner: Boss
prepared_by: Zero


# ============================================================
# 1. METRIC
# ============================================================

metric_name:
- store_cleanliness_rate


# ============================================================
# 2. INFLUENCE SOURCES
# ============================================================

influence_sources:
- cleaning_frequency
- staffing_state
- customer_load
- fresh_goods_ratio
- waste_control_state
- equipment_condition
- night_operation_load
- ai_cleaning_support


# ============================================================
# 3. FINAL RULE
# ============================================================

Store cleanliness rate
must influence inspection and reputation.
