# ============================================================
# EXTRACTED CORE DICTIONARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: extracted-core-dictionary
component: extracted-core-dictionary

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for extracted core dictionaries
inside Civilization.

This document covers extracted dictionaries for:

- continents
- states
- cities
- companies
- persons
- facilities
- infrastructure

These dictionaries are intended to be
seeded and maintained from already-defined design documents.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Extracted core dictionaries
must be built from already-defined canonical design
where possible.

They must preserve:

- canonical identity
- readable naming
- cross-entity relation
- seed readiness
- separation from runtime mutable state


# ============================================================
# 3. REQUIRED CHILD ARCHITECTURES
# ============================================================

This document requires:

- EXTRACTED_CONTINENT_DICTIONARY_ARCHITECTURE
- EXTRACTED_STATE_DICTIONARY_ARCHITECTURE
- EXTRACTED_CITY_DICTIONARY_ARCHITECTURE
- EXTRACTED_COMPANY_DICTIONARY_ARCHITECTURE
- EXTRACTED_PERSON_DICTIONARY_ARCHITECTURE
- EXTRACTED_FACILITY_DICTIONARY_ARCHITECTURE
- EXTRACTED_INFRASTRUCTURE_DICTIONARY_ARCHITECTURE


# ============================================================
# 4. EXTRACTION PRINCIPLE
# ============================================================

Where design documents already contain
explicit names,
classifications,
or memberships,
the extracted dictionary should reuse them.

Where design documents define only categories
but not concrete entries,
the extracted dictionary may remain partial
and use placeholder or TBD posture.


# ============================================================
# 5. FINAL RULE
# ============================================================

Extracted core dictionary architecture must remain:

- extraction-based
- canonical
- relation-aware
- seed-oriented
- runtime-separated
