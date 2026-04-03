# ============================================================
# AGRICULTURE RISK AND RESPONSE MODEL
# ============================================================

status: canonical
layer: model
scope: agriculture-and-livestock-detailed-configuration-and-auto-operation
component: agriculture-risk-and-response

owner: Boss
prepared_by: Zero


risk_axes:
- crop_failure_risk
- disease_risk
- feed_shortage_risk
- water_shortage_risk
- disaster_risk
- labor_shortage_risk

response_modes:
- standard_response
- resilience_mode
- disease_control_mode
- drought_response_mode
- emergency_supply_mode


# FINAL RULE

Agriculture and livestock
must react to explicit risk states.
