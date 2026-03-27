# ============================================================
# CITY EVENT DENSITY BIAS MODEL
# ============================================================

status: canonical
layer: model
scope: cities-and-placement
component: city-event-density-bias

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines recommended event-density tendencies
for city seed planning by continent.


# ============================================================
# 2. NORTHERN CONTINENT
# ============================================================

Recommended higher density:
- housing_construction_event
- startup_event
- infrastructure_expansion_event
- technical_training_event
- engineer_career_entry_event


# ============================================================
# 3. CENTRAL CONTINENT
# ============================================================

Recommended higher density:
- school_growth_event
- child_education_event
- examination_event
- finance_and_business_event
- government_and_public_service_event


# ============================================================
# 4. SOUTHERN CONTINENT
# ============================================================

Recommended higher density:
- exhibition_event
- screening_event
- festival_event
- ritual_event
- marriage_ceremony_event
- inheritance_and_memory_event


# ============================================================
# 5. FINAL RULE
# ============================================================

Event density bias is an initial world-seed guide,
not an absolute hard lock.
