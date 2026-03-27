# ============================================================
# PROPERTY BUILDING MODEL
# ============================================================

status: canonical
layer: model
scope: real-estate
component: property-building

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official model
for property_building.

property_building is the building-level real estate object
used for ownership, lease, tenant support,
construction lifecycle, taxation, and site use.


# ============================================================
# 2. CORE RULE
# ============================================================

Building must be modeled separately from land.

A building may be:
- company-funded and system-constructed
- leased as a whole
- subdivided into tenant units

The company may fund or own a building,
but direct construction execution is prohibited.

Official rule:
- construction execution must go through system construction_company


# ============================================================
# 3. OFFICIAL FIELD SET
# ============================================================

A property_building object should contain:

- building_id
- building_code
- land_ref
- nation_id
- zone_map_ref
- zone_cell_ref
- building_name
- building_type
- legal_owner_ref
- primary_use_holder_ref
- building_use_state
- construction_state
- construction_request_ref
- construction_executor_ref
- design_package_ref
- leasable_flag
- tenant_supported_flag
- tenant_unit_ref_set
- idle_building_state
- tax_profile_ref
- payment_rule_ref_set
- created_at
- updated_at


# ============================================================
# 4. BUILDING TYPE
# ============================================================

Examples of building_type:
- headquarters_building
- office_building
- retail_building
- school_building
- temple_building
- gallery_building
- mixed_use_building
- service_building

Building type should remain compatible
with nation zone rules.


# ============================================================
# 5. OWNERSHIP AND PRIMARY USE
# ============================================================

legal_owner_ref:
- legal owner of the building

primary_use_holder_ref:
- party primarily using or controlling the building

These may differ.

Example:
- building owner = landlord
- primary use holder = leasing company


# ============================================================
# 6. CONSTRUCTION MODEL
# ============================================================

construction_state examples:
- planned
- design_pending
- construction_requested
- under_construction
- completed
- opening_preparation
- open_for_use
- blocked

construction_request_ref:
- link to construction request or build order object

construction_executor_ref:
- system construction_company reference

design_package_ref:
- approved design package reference

Official rule:
- user company may fund construction
- user company may own completed building
- user company may not execute construction directly
- system construction_company is the sole construction executor


# ============================================================
# 7. LEASE AND TENANT SUPPORT
# ============================================================

leasable_flag:
- whether building can be leased as a whole

tenant_supported_flag:
- whether the building can be subdivided into tenant units

tenant_unit_ref_set:
- linked tenant units if any

This allows:
- whole building lease
- tenant-unit occupancy
- self-use building


# ============================================================
# 8. IDLE BUILDING STATE
# ============================================================

idle_building_state examples:
- active_use
- idle
- long_idle

Recommended baseline:
- 90 days unused -> idle
- 180 days unused -> long_idle

This may affect:
- tax burden
- building reputation
- site operation viability
- nation penalties


# ============================================================
# 9. COST PROFILE
# ============================================================

A building cost profile may include:

- building_construction_cost
- design_cost_amount
- fit_out_cost_amount
- opening_cost_amount
- building_lease_cost
- maintenance_cost_amount
- common_area_cost_amount
- building_holding_tax_amount

All domestic settlement should normally be:
- nation_currency_only


# ============================================================
# 10. TAX AND PAYMENT CONNECTION
# ============================================================

payment_rule_ref_set may include:
- building_holding_tax rule
- building_lease_fee rule
- maintenance fee rule
- common area fee rule

Tax and payment timing are defined by masters,
but should be linkable from the building object.


# ============================================================
# 11. RELATION TO TENANT UNIT
# ============================================================

A building may have:
- zero tenant units
- one tenant unit
- many tenant units

If tenant_supported_flag = true,
tenant unit model should be used.

If the building is whole-leased,
tenant_unit_ref_set may remain empty.


# ============================================================
# 12. RELATION TO COMPANY SITE
# ============================================================

A company site may relate to building in several ways.

Examples:
- company-funded building on owned land
- company-funded building on leased land
- whole building lease
- tenant-unit occupancy inside building

This model must support all four standard occupancy structures:
- land_purchase_self_construction
- land_lease_self_construction
- building_lease
- tenant_unit_occupancy


# ============================================================
# 13. FINAL RULE
# ============================================================

property_building is the authoritative building-layer object.

It must be:
- land-bound
- ownership-explicit
- construction-path-explicit
- tenant-capable where relevant
- cost-aware
- tax-aware
