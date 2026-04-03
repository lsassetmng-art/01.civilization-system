# ============================================================
# LIFE STAGE EVENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: civilization-life-events
component: life-stage-event

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official architecture
for life stage events inside Civilization.

Life stage events govern structured progression
across birth, childcare, school, examination,
career entry, family formation, housing, health,
aging, inheritance, and death.


# ============================================================
# 2. CORE RULE
# ============================================================

Life events must not be modeled
as isolated ad hoc triggers only.

They must belong to a structured event system
with explicit:
- trigger
- eligibility
- prerequisite
- duration
- cost
- outcome
- affected actors
- related facilities


# ============================================================
# 3. EVENT FAMILIES
# ============================================================

Official life event families:

- birth_and_childcare
- school_and_growth
- exam_and_path
- career_entry
- relationship_and_family
- housing_and_living
- health_and_welfare
- aging_and_end_of_life


# ============================================================
# 4. CIVILIZATION CONNECTION
# ============================================================

Life stage events connect to:
- person growth
- family structures
- school and training facilities
- companies and employment
- housing and property
- nation public services
- health and welfare systems


# ============================================================
# 5. FINAL RULE
# ============================================================

Life stage events are a first-class Civilization layer
and must be modeled as a structured system.
