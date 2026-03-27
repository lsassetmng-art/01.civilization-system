# ============================================================
# HOUSING BUILDER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: housing-builder
component: housing-builder

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the official architecture for Housing Builder.

Housing Builder is separate from Company Builder.
It governs residential construction, purchase,
design selection, interior/exterior setup,
household fit, and move-in readiness.


# ============================================================
# 2. CORE RULE
# ============================================================

Housing Builder and Company Builder must remain separate.

Housing Builder handles living space.
Company Builder handles business entity and business site.


# ============================================================
# 3. CONSTRUCTION RULE
# ============================================================

Housing may be constructed only in housing-buildable zones.

Construction execution must be performed by
system construction_company.

Construction cost is required,
in the same structural sense as company establishment cost.


# ============================================================
# 4. SUPPORTED HOUSING TYPES
# ============================================================

Supported types:
- detached_house
- two_family_house
- townhouse
- apartment_building
- condominium_building
- dormitory_residence
- senior_residence
- villa_house
- shop_integrated_house
- office_integrated_house
- studio_integrated_house
- rental_integrated_house
- rental_shop
- rental_office
- rental_atelier


# ============================================================
# 5. FINAL RULE
# ============================================================

Housing Builder is the canonical living-space builder
for residential and housing-origin mixed-use property.
