# ============================================================
# CORE SECURITY AND DISASTER INDICATOR MODEL
# ============================================================

status: canonical
layer: model
scope: security-and-disaster-statistics-seed
component: core-security-and-disaster-indicator

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE INDICATORS
# ============================================================

core_indicators:
- property_crime_tendency
- fraud_and_scam_tendency
- violent_incident_tendency
- organized_force_or_militant_risk_tendency
- public_order_instability_tendency
- workplace_accident_tendency
- transport_accident_tendency
- maritime_accident_tendency
- industrial_disaster_tendency
- fire_risk_tendency
- flood_vulnerability_tendency
- storm_vulnerability_tendency
- sea_disaster_vulnerability_tendency
- infrastructure_failure_tendency
- recovery_capacity_tendency


# ============================================================
# 2. VALUE STYLE
# ============================================================

value_style:
- very_low
- low
- medium
- high
- very_high


# ============================================================
# 3. FINAL RULE
# ============================================================

Indicators are directional posture values,
not yet hard numeric simulation outputs.
