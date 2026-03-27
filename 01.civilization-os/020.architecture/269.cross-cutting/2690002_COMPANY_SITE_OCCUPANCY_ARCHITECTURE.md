# ============================================================
# COMPANY SITE OCCUPANCY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: cross-cutting
component: company-site-occupancy

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for company site occupancy inside Civilization.

This architecture binds:
- company_site
- property_land
- property_building
- tenant_unit

into an explicit occupancy structure.


# ============================================================
# 2. CORE RULE
# ============================================================

Land use and building use must be separated.

Company site occupancy must not be modeled
as an ambiguous single flag only.


# ============================================================
# 3. OFFICIAL OCCUPANCY STRUCTURES
# ============================================================

Canonical occupancy structures:
- land_purchase_self_construction
- land_lease_self_construction
- building_lease
- tenant_unit_occupancy


# ============================================================
# 4. STRUCTURE MEANINGS
# ============================================================

land_purchase_self_construction:
- company acquires land
- company funds building creation
- system construction_company executes construction

land_lease_self_construction:
- company leases land
- company funds building creation
- system construction_company executes construction

building_lease:
- company leases whole building or primary building use

tenant_unit_occupancy:
- company occupies a tenant subdivision inside building


# ============================================================
# 5. REFERENCE RULES
# ============================================================

For self-construction types:
- land_ref required
- building_ref required after completion
- tenant_unit_ref not required

For building_lease:
- building_ref required
- tenant_unit_ref not required

For tenant_unit_occupancy:
- tenant_unit_ref required
- building_ref may resolve through tenant_unit
- land_ref not required directly on site


# ============================================================
# 6. OCCUPANCY MODES
# ============================================================

Recommended land_use_mode:
- owned_land
- leased_land
- not_applicable

Recommended building_use_mode:
- company_funded_construction
- owned_building
- leased_building
- tenant_unit
- shared_space


# ============================================================
# 7. PAYMENT / TAX CONNECTION
# ============================================================

Occupancy architecture must support:
- land purchase cost
- land lease cost
- building construction cost
- building lease cost
- tenant rent
- holding tax
- acquisition tax
- maintenance cost

All domestic settlement is normally nation currency.


# ============================================================
# 8. DEFAULT / TERMINATION CONNECTION
# ============================================================

Occupancy architecture must connect to:
- due
- grace period
- overdue
- defaulted
- termination_started
- eviction_started
- site_closed

This is especially important for tenant_unit_occupancy.


# ============================================================
# 9. FINAL RULE
# ============================================================

company_site occupancy must remain explicit,
reference-bound, and payment-aware.
