# ============================================================
# STORE HYGIENE SCORE MODEL
# ============================================================

status: canonical
layer: model
scope: retail-detailed-configuration-and-auto-operation
component: store-hygiene-score

owner: Boss
prepared_by: Zero


# ============================================================
# 1. METRIC
# ============================================================

metric_name:
- store_hygiene_score


# ============================================================
# 2. INFLUENCE SOURCES
# ============================================================

influence_sources:
- food_handling_quality
- refrigeration_control
- waste_control_score
- smell_and_contamination_risk
- pest_risk
- employee_hygiene_state
- sanitation_policy


# ============================================================
# 3. FINAL RULE
# ============================================================

Store hygiene score
must affect inspection risk and food safety risk.
