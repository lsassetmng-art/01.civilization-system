# ============================================================
# OCCUPATION KPI COMMON MODEL
# ============================================================

status: canonical
layer: model
scope: occupation-intervention-and-kpi-common
component: occupation-kpi-common

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COMMON KPI AXES
# ============================================================

common_kpi_axes:
- output_volume
- service_quality
- efficiency
- operating_cost
- margin_or_budget_health
- labor_efficiency
- customer_or_user_satisfaction
- safety_score
- compliance_score
- resilience_score
- local_contribution_score
- facility_condition_score
- alert_pressure_score


# ============================================================
# 2. OPTIONAL KPI AXES
# ============================================================

optional_kpi_axes:
- cleanliness_rate
- hygiene_score
- shortage_rate
- waste_rate
- delay_rate
- load_balance_score
- recovery_speed
- inspection_readiness_score
- public_value_score


# ============================================================
# 3. FINAL RULE
# ============================================================

Occupation KPI sets
must share a common semantic backbone.
