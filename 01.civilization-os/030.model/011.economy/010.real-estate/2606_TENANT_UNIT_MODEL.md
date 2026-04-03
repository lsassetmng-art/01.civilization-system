# ============================================================
# TENANT UNIT MODEL
# ============================================================

status: canonical
layer: model
scope: real-estate
component: tenant-unit

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official model
for tenant_unit.

tenant_unit is the leasable subdivision object
inside a building used for tenant occupancy.

It is the primary model for:
- storefront tenancy
- office tenancy
- gallery tenancy
- support-unit tenancy
- other subdivided occupancy


# ============================================================
# 2. CORE RULE
# ============================================================

tenant_unit exists only inside a building.

A company using tenant occupancy
must bind to tenant_unit,
not only to building in abstract form.

Tenant-unit occupancy is one of the four
official real-estate occupancy structures.


# ============================================================
# 3. OFFICIAL FIELD SET
# ============================================================

A tenant_unit should contain:

- tenant_unit_id
- tenant_unit_code
- building_ref
- nation_id
- zone_map_ref
- zone_cell_ref
- unit_name
- unit_area
- unit_type
- current_tenant_ref
- tenancy_state
- public_open_compatibility
- leaseable_flag
- lease_cycle_profile
- rent_profile_ref
- deposit_profile_ref
- restoration_profile_ref
- payment_rule_ref_set
- created_at
- updated_at


# ============================================================
# 4. UNIT TYPE
# ============================================================

Examples of unit_type:
- retail_unit
- office_unit
- gallery_unit
- service_unit
- studio_unit
- mixed_use_unit

Unit type should remain compatible
with building type and zone rules.


# ============================================================
# 5. TENANCY STATE
# ============================================================

Recommended tenancy_state values:
- vacant
- reserved
- occupied
- overdue
- defaulted
- termination_started
- eviction_started
- closed

Tenancy state is not identical to payment state,
but is strongly related.


# ============================================================
# 6. PUBLIC OPEN COMPATIBILITY
# ============================================================

public_open_compatibility indicates whether
the unit is compatible with public-facing use.

Examples:
- public_facing_allowed
- limited_public_access
- internal_use_only

This supports retail and event-related tenancy control.


# ============================================================
# 7. LEASE CYCLE PROFILE
# ============================================================

lease_cycle_profile should define:

- contract_term_months
- renewal_rule
- rent_revision_rule
- notice_period_days

Official default decisions:
- standard contract term: 12 months
- standard notice period: 30 days
- rent revision: normally at renewal


# ============================================================
# 8. RENT PROFILE
# ============================================================

rent_profile_ref should support:

- base_rent_amount
- common_area_fee_amount
- recurring_maintenance_amount
- settlement_currency_code

Default:
- monthly payment
- nation currency settlement


# ============================================================
# 9. DEPOSIT PROFILE
# ============================================================

deposit_profile_ref should support:

- security_deposit_amount
- refundable_deposit_flag
- deposit_notes

Official default:
- security deposit allowed
- key money / non-refundable gift payment not used by default


# ============================================================
# 10. RESTORATION PROFILE
# ============================================================

restoration_profile_ref should support:

- restoration_required_flag
- restoration_cost_amount
- restoration_scope_notes

Tenant exit may trigger restoration cost.


# ============================================================
# 11. PAYMENT AND GRACE CONNECTION
# ============================================================

payment_rule_ref_set may include:
- tenant_rent rule
- common_area_fee rule
- maintenance fee rule
- restoration payment rule

Official default rent policy:
- monthly payment
- 7-day grace period
- 30+ day non-payment may trigger major default process

Recommended linked state transitions:
- due
- in_grace_period
- overdue
- defaulted
- termination_started
- eviction_started


# ============================================================
# 12. EVICTION FLOW
# ============================================================

Official tenant default flow:

1. due
2. grace period
3. overdue
4. defaulted
5. termination_started
6. eviction_started
7. site_closed

This flow should be nation-rule-aware,
but the structural stages are canonical.


# ============================================================
# 13. RELATION TO COMPANY SITE
# ============================================================

company_site binds to tenant_unit when
occupancy_structure_type = tenant_unit_occupancy.

In this case:
- tenant_unit_ref is mandatory
- building_ref may resolve via tenant_unit
- land_ref is not required on company site directly

This prevents ambiguous tenancy modeling.


# ============================================================
# 14. FINAL RULE
# ============================================================

tenant_unit is the authoritative sub-building tenancy object.

It must be:
- building-bound
- rent-aware
- grace-aware
- default-aware
- eviction-flow-aware
- company-site-bindable
