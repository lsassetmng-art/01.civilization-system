# ============================================================
# MAJOR NATION SECURITY AND DISASTER POSTURE MODEL
# ============================================================

status: canonical
layer: model
scope: security-and-disaster-statistics-seed
component: major-nation-security-and-disaster-posture

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HELIOS
# ============================================================

property_crime_tendency:
- medium

fraud_and_scam_tendency:
- medium

violent_incident_tendency:
- medium

organized_force_or_militant_risk_tendency:
- low

public_order_instability_tendency:
- medium

workplace_accident_tendency:
- high

transport_accident_tendency:
- medium

maritime_accident_tendency:
- low

industrial_disaster_tendency:
- high

fire_risk_tendency:
- medium

flood_vulnerability_tendency:
- medium

storm_vulnerability_tendency:
- medium

sea_disaster_vulnerability_tendency:
- low

infrastructure_failure_tendency:
- medium

recovery_capacity_tendency:
- medium

notes:
- industrial concentration and outer-district inequality raise labor and industrial risk
- state control is sufficient to limit full public-order collapse, but weaker households remain exposed


# ============================================================
# 2. NOVA
# ============================================================

property_crime_tendency:
- medium

fraud_and_scam_tendency:
- high

violent_incident_tendency:
- low

organized_force_or_militant_risk_tendency:
- low

public_order_instability_tendency:
- low

workplace_accident_tendency:
- medium

transport_accident_tendency:
- medium

maritime_accident_tendency:
- medium

industrial_disaster_tendency:
- medium

fire_risk_tendency:
- medium

flood_vulnerability_tendency:
- medium

storm_vulnerability_tendency:
- medium

sea_disaster_vulnerability_tendency:
- medium

infrastructure_failure_tendency:
- low

recovery_capacity_tendency:
- high

notes:
- commercial density and financial opportunity increase fraud exposure
- strong capital and infrastructure improve recovery speed


# ============================================================
# 3. SEIWA
# ============================================================

property_crime_tendency:
- low

fraud_and_scam_tendency:
- low

violent_incident_tendency:
- low

organized_force_or_militant_risk_tendency:
- very_low

public_order_instability_tendency:
- very_low

workplace_accident_tendency:
- medium

transport_accident_tendency:
- low

maritime_accident_tendency:
- low

industrial_disaster_tendency:
- low

fire_risk_tendency:
- low

flood_vulnerability_tendency:
- medium

storm_vulnerability_tendency:
- medium

sea_disaster_vulnerability_tendency:
- low

infrastructure_failure_tendency:
- low

recovery_capacity_tendency:
- high

notes:
- strong institutions and orderly infrastructure reduce disorder and routine accident exposure
- geography still leaves some natural vulnerability


# ============================================================
# 4. GLADIA
# ============================================================

property_crime_tendency:
- low

fraud_and_scam_tendency:
- low

violent_incident_tendency:
- medium

organized_force_or_militant_risk_tendency:
- medium

public_order_instability_tendency:
- low

workplace_accident_tendency:
- medium

transport_accident_tendency:
- medium

maritime_accident_tendency:
- medium

industrial_disaster_tendency:
- high

fire_risk_tendency:
- medium

flood_vulnerability_tendency:
- medium

storm_vulnerability_tendency:
- medium

sea_disaster_vulnerability_tendency:
- medium

infrastructure_failure_tendency:
- low

recovery_capacity_tendency:
- high

notes:
- discipline suppresses ordinary disorder
- military industry, weapons, and training elevate industrial and service-linked risk


# ============================================================
# 5. ORPHEUS
# ============================================================

property_crime_tendency:
- low

fraud_and_scam_tendency:
- low

violent_incident_tendency:
- low

organized_force_or_militant_risk_tendency:
- very_low

public_order_instability_tendency:
- low

workplace_accident_tendency:
- medium

transport_accident_tendency:
- medium

maritime_accident_tendency:
- high

industrial_disaster_tendency:
- low

fire_risk_tendency:
- medium

flood_vulnerability_tendency:
- medium

storm_vulnerability_tendency:
- high

sea_disaster_vulnerability_tendency:
- very_high

infrastructure_failure_tendency:
- medium

recovery_capacity_tendency:
- medium

notes:
- kinship cohesion reduces ordinary crime
- sea, storm, ferry, and island logistics create major environmental risk


# ============================================================
# 6. AURELIA
# ============================================================

property_crime_tendency:
- high

fraud_and_scam_tendency:
- medium

violent_incident_tendency:
- high

organized_force_or_militant_risk_tendency:
- high

public_order_instability_tendency:
- high

workplace_accident_tendency:
- high

transport_accident_tendency:
- high

maritime_accident_tendency:
- medium

industrial_disaster_tendency:
- medium

fire_risk_tendency:
- high

flood_vulnerability_tendency:
- medium

storm_vulnerability_tendency:
- medium

sea_disaster_vulnerability_tendency:
- medium

infrastructure_failure_tendency:
- high

recovery_capacity_tendency:
- low

notes:
- reconstruction instability and weak continuity raise both crime and accident risk
- politically filtered state power weakens consistent recovery


# ============================================================
# 7. FREE CITIES UNION
# ============================================================

property_crime_tendency:
- medium

fraud_and_scam_tendency:
- medium

violent_incident_tendency:
- medium

organized_force_or_militant_risk_tendency:
- low

public_order_instability_tendency:
- medium

workplace_accident_tendency:
- medium

transport_accident_tendency:
- medium

maritime_accident_tendency:
- medium

industrial_disaster_tendency:
- low

fire_risk_tendency:
- medium

flood_vulnerability_tendency:
- medium

storm_vulnerability_tendency:
- medium

sea_disaster_vulnerability_tendency:
- medium

infrastructure_failure_tendency:
- medium

recovery_capacity_tendency:
- medium

notes:
- city-by-city variation is stronger than federation-wide averages
- guild strength, port access, and civic capacity sharply alter local safety outcomes


# ============================================================
# 8. FINAL RULE
# ============================================================

These posture values are directional seeds
for later numeric security and disaster simulation.
