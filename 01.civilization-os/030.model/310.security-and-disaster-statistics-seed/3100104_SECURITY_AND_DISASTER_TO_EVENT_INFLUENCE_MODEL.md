# ============================================================
# SECURITY AND DISASTER TO EVENT INFLUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: security-and-disaster-statistics-seed
component: security-and-disaster-to-event-influence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFLUENCE RULES
# ============================================================

influence_rules:
- property_crime_tendency influences theft and loss events
- fraud_and_scam_tendency influences financial deception and household asset loss events
- violent_incident_tendency influences injury and trauma events
- organized_force_or_militant_risk_tendency influences political violence and armed disruption events
- public_order_instability_tendency influences district safety and household fear events
- workplace_accident_tendency influences injury and employment interruption events
- transport_accident_tendency influences commuting and travel disruption events
- maritime_accident_tendency influences fishery, ferry, and coastal household loss events
- industrial_disaster_tendency influences factory and infrastructure shock events
- fire_risk_tendency influences housing loss and commercial interruption events
- flood_vulnerability_tendency influences displacement and property damage events
- storm_vulnerability_tendency influences service interruption and household recovery strain
- sea_disaster_vulnerability_tendency influences island disaster chains and memorial events
- infrastructure_failure_tendency influences city service interruption and trust erosion
- recovery_capacity_tendency modifies speed and quality of post-disaster stabilization


# ============================================================
# 2. FINAL RULE
# ============================================================

Security and disaster indicators must be usable
as event modifiers for household, labor, and city simulation.
