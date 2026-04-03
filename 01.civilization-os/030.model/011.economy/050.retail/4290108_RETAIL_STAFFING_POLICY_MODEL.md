# ============================================================
# RETAIL STAFFING POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: retail-detailed-configuration-and-auto-operation
component: retail-staffing-policy

owner: Boss
prepared_by: Zero


# ============================================================
# 1. POLICIES
# ============================================================

retail_staffing_policies:
- labor_cost_min
- service_quality_priority
- peak_response_priority
- training_growth_priority
- automation_assist_priority


# ============================================================
# 2. FINAL RULE
# ============================================================

Staffing policy
must shape labor efficiency and service quality.
