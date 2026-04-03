# ============================================================
# CIVILIZATION LIFE EVENT KPI AND ALERT MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-life-event-detailed-ui-and-progression
component: civilization-life-event-kpi-and-alert

owner: Boss
prepared_by: Zero


# ============================================================
# 1. KPI AXES
# ============================================================

kpi_axes:
- progression_speed
- success_probability
- financial_pressure
- household_pressure
- institutional_pressure
- health_risk
- legal_risk
- social_stability_effect
- opportunity_value


# ============================================================
# 2. ALERT TYPES
# ============================================================

alert_types:
- eligibility_lost_alert
- fee_deadline_alert
- document_missing_alert
- review_delay_alert
- support_shortage_alert
- health_risk_alert
- legal_risk_alert
- rejection_risk_alert
- branching_choice_alert
- emergency_intervention_alert


# ============================================================
# 3. FINAL RULE
# ============================================================

Life event UI
must expose actionable risk and pressure states.
