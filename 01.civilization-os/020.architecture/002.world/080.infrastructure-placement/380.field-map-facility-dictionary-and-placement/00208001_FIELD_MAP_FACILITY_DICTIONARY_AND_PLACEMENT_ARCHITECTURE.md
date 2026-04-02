# ============================================================
# FIELD MAP FACILITY DICTIONARY AND PLACEMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: field-map-facility-dictionary-and-placement
component: field-map-facility-dictionary-and-placement

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical architecture
for field-map facility listing,
facility dictionary,
and facility placement rules
inside Civilization.

This architecture consolidates:

- facility categories
- operator classes
- service bindings
- placement eligibility
- zoning compatibility
- buildability rules
- visibility rules
- interaction rules


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

A field-map facility must be understood
through one unified dictionary model.

The system must know:

- what the facility is
- who operates it
- what service it opens
- where it may be placed
- whether it is buildable
- whether it is view-only
- whether it is single-use or tenant-based


# ============================================================
# 3. REQUIRED SUBSYSTEMS
# ============================================================

The facility dictionary layer must include:

- Field Facility List Model
- Facility Dictionary Model
- Facility Placement Rule Model
- Facility Zoning Compatibility Model
- Facility Visibility and Interaction Model
- Facility Country Variation Model


# ============================================================
# 4. FINAL RULE
# ============================================================

No field-map object may appear
without a canonical facility dictionary entry
and a canonical placement rule.
