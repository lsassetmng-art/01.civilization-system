# ============================================================
# FIELD FACILITY ECONOMICS DB ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: field-facility-economics-db
component: field-facility-economics-db

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical DB-controlled architecture
for field-map facility economics,
construction time,
activation requirements,
operation requirements,
and replacement profiles
inside Civilization.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Meaning must be fixed by design documents.
Values must be controlled by DB masters.

This layer defines DB-controlled values for:

- build cost
- maintenance cost
- build time
- activation requirements
- operation requirements
- replacement and salvage behavior
- nation, city, district, and operator modifiers


# ============================================================
# 3. REQUIRED SUBSYSTEMS
# ============================================================

This layer must include:

- Facility Cost and Time Master
- Facility Activation Profile
- Facility Operation Profile
- Facility Modifier Master
- Facility Replacement Profile


# ============================================================
# 4. FINAL RULE
# ============================================================

This layer controls numeric and rule-instance values,
but must not redefine canonical facility identity.
