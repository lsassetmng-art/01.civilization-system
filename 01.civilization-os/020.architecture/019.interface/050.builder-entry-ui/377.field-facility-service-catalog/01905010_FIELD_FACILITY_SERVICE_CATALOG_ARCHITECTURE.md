# ============================================================
# FIELD FACILITY SERVICE CATALOG ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: field-facility-service-catalog
component: field-facility-service-catalog

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical facility catalog
for field-map service endpoints in Civilization.

This architecture classifies:

- user company service facilities
- system company service facilities
- public and civic service facilities
- market and board view-only facilities
- mixed-use and tenant container facilities

so that tap behavior and service routing
remain predictable and implementation-ready.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Every facility must declare:

- who operates it
- what service family it belongs to
- whether it is directly usable
- whether it is overview-first
- whether it is a tenant container
- whether it is view-only
- whether it exposes management or builder entry


# ============================================================
# 3. FACILITY GROUPS
# ============================================================

The facility catalog must support:

- User Company Service Facilities
- System Company Service Facilities
- Public Service Facilities
- View-Only Market and Board Facilities
- Mixed-Use Tenant Buildings


# ============================================================
# 4. FINAL RULE
# ============================================================

The field map must never guess
what a facility means.
Facility meaning must come
from the facility service catalog.
