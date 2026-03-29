# ============================================================
# OCCUPATION ALERT COMMON MODEL
# ============================================================

status: canonical
layer: model
scope: occupation-intervention-and-kpi-common
component: occupation-alert-common

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ALERT TYPES
# ============================================================

common_alert_types:
- output_drop_alert
- cost_spike_alert
- staffing_shortage_alert
- quality_decline_alert
- safety_risk_alert
- compliance_risk_alert
- supply_disruption_alert
- facility_condition_alert
- overload_alert
- inspection_or_audit_risk_alert
- public_complaint_alert
- emergency_response_alert


# ============================================================
# 2. FINAL RULE
# ============================================================

Occupation alerts
must remain structured and intervention-ready.
