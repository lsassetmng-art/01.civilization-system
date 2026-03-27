# ============================================================
# CITY SYSTEM SERVICE DENSITY MODEL
# ============================================================

status: canonical
layer: model
scope: cities-and-placement
component: city-system-service-density

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines default density tendencies
for system service availability by continent.


# ============================================================
# 2. NORTHERN CONTINENT
# ============================================================

Recommended availability tendency:
- construction_execution_access: high
- real_estate_mediation_access: medium_high
- bank_access: medium
- securities_access: medium
- public_training_access: medium
- medical_access: medium

Character:
- infrastructure and expansion support heavy


# ============================================================
# 3. CENTRAL CONTINENT
# ============================================================

Recommended availability tendency:
- bank_access: very_high
- securities_access: very_high
- real_estate_mediation_access: high
- construction_execution_access: high
- insurance_access: high
- public_service_access: very_high
- medical_access: high

Character:
- most complete institutional and system-service availability


# ============================================================
# 4. SOUTHERN CONTINENT
# ============================================================

Recommended availability tendency:
- public_service_access: medium_high
- medical_access: medium
- real_estate_mediation_access: medium
- bank_access: medium
- securities_access: medium_low

Character:
- less institution-dense than central,
  but stronger culture / festival / religion facility density


# ============================================================
# 5. FINAL RULE
# ============================================================

System service density should differ by continent
in the initial world seed.
