# ============================================================
# PROPERTY LAND MODEL
# ============================================================

status: canonical
layer: model
scope: real-estate
component: property-land

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official model
for property_land.

property_land is the land-level real estate object
used for ownership, lease, construction eligibility,
taxation, and site placement inside a nation.

It is separate from:
- building
- tenant unit
- company site

Land is the base real estate layer.


# ============================================================
# 2. CORE RULE
# ============================================================

Land must be modeled separately from building.

A company may:
- purchase land
- lease land

Land transfer, lease mediation, and resale mediation
must go through system real estate company.

Land ownership and building ownership
do not need to be identical.


# ============================================================
# 3. OFFICIAL FIELD SET
# ============================================================

A property_land object should contain:

- land_id
- land_code
- nation_id
- zone_map_ref
- zone_cell_ref
- land_name
- land_area
- land_use_category
- ownership_state
- legal_owner_ref
- land_use_right_holder_ref
- transferability_state
- leasable_flag
- construction_eligibility_flag
- current_building_ref_set
- idle_property_state
- tax_profile_ref
- payment_rule_ref_set
- created_at
- updated_at


# ============================================================
# 4. OWNERSHIP AND USE RIGHTS
# ============================================================

ownership_state examples:
- owned
- leased
- public_controlled
- restricted

legal_owner_ref:
- current legal owner of land

land_use_right_holder_ref:
- current holder of land use rights

These may differ.

Example:
- land legal owner = landlord
- land use right holder = company under land lease


# ============================================================
# 5. LAND USE CATEGORY
# ============================================================

land_use_category should remain compatible
with nation zoning and property regime.

Examples:
- commercial_land
- office_land
- education_land
- religious_land
- mixed_use_land
- restricted_land

This field does not replace zone rules,
but complements them.


# ============================================================
# 6. TRANSFERABILITY AND LEASE
# ============================================================

transferability_state examples:
- transferable
- restricted_transfer
- non_transferable

leasable_flag:
- whether land may be leased for use

A nation may restrict transfer or lease
through property regime.


# ============================================================
# 7. CONSTRUCTION ELIGIBILITY
# ============================================================

construction_eligibility_flag indicates whether
construction may be initiated on this land.

Construction requires:
- valid land right
- valid zone compatibility
- valid design path
- system construction_company execution path

Construction is not performed directly by the company.

Official rule:
- construction_company is system company
- construction execution must route through system construction_company


# ============================================================
# 8. IDLE PROPERTY STATE
# ============================================================

idle_property_state examples:
- active_use
- idle
- long_idle

Recommended baseline:
- 90 days unused -> idle
- 180 days unused -> long_idle

Idle state may affect:
- tax burden
- evaluation
- nation penalties


# ============================================================
# 9. TAX AND PAYMENT CONNECTION
# ============================================================

property_land should connect to tax and payment structures.

tax_profile_ref:
- land-related tax posture reference

payment_rule_ref_set may include:
- acquisition_tax rule
- land_holding_tax rule
- land_lease_fee rule
- transfer fee rule

These rules are nation-authoritative
but should be linkable from land object.


# ============================================================
# 10. COST PROFILE
# ============================================================

A land cost profile may include:

- land_purchase_cost
- land_lease_cost
- acquisition_tax_amount
- transfer_processing_fee_amount
- mediation_fee_amount
- recurring_land_holding_tax_amount

All domestic settlement should normally be:
- nation_currency_only


# ============================================================
# 11. RELATION TO BUILDING
# ============================================================

One land object may have:
- no building
- one building
- multiple buildings if future regime allows

Initial model may assume low-complexity attachment,
but should support current_building_ref_set as a set
for future growth.

A building must refer back to land.


# ============================================================
# 12. FINAL RULE
# ============================================================

property_land is the authoritative land-layer object.

It must be:
- nation-bound
- zone-aware
- ownership-explicit
- lease-capable
- tax-connected
- construction-path-aware
