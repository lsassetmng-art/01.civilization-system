# ============================================================
# FACILITY TYPE MASTER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: facility-type-master
component: facility-type-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical facility type master
for Civilization field-map systems.

This master fixes:

- facility_type
- service_family linkage
- canonical UI target linkage
- ownership and operator compatibility
- reuse across map, routing, and placement systems


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Facility type must have one canonical identity.

The same facility type must not be redefined
separately by:

- map layer design
- routing design
- placement design
- service design

Those layers may add attributes,
but they must not change the facility type itself.


# ============================================================
# 3. MASTER RULE
# ============================================================

facility_type is the shared canonical key
used across:

- field facility service catalog
- field routing
- map interaction
- placement and zoning
- builder entry
- service UI resolution


# ============================================================
# 4. FINAL RULE
# ============================================================

Facility type is a shared master object.
Behavior may vary by context,
but facility identity must remain stable.
